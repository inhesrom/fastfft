
target/ticket19/selection-fix/vector-stack-anchor/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000da70c0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute>:
  da70c0:	55                   	push   rbp
  da70c1:	48 89 e5             	mov    rbp,rsp
  da70c4:	41 57                	push   r15
  da70c6:	41 56                	push   r14
  da70c8:	41 55                	push   r13
  da70ca:	41 54                	push   r12
  da70cc:	53                   	push   rbx
  da70cd:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  da70d1:	48 81 ec 00 03 00 00 	sub    rsp,0x300
  da70d8:	48 89 8c 24 d0 00 00 	mov    QWORD PTR [rsp+0xd0],rcx
  da70df:	00 
  da70e0:	48 89 94 24 f8 00 00 	mov    QWORD PTR [rsp+0xf8],rdx
  da70e7:	00 
  da70e8:	48 89 b4 24 10 01 00 	mov    QWORD PTR [rsp+0x110],rsi
  da70ef:	00 
  da70f0:	48 8d 84 24 80 02 00 	lea    rax,[rsp+0x280]
  da70f7:	00 
  da70f8:	45 85 c0             	test   r8d,r8d
  da70fb:	0f 84 00 01 00 00    	je     da7201 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x141>
  da7101:	c6 84 24 80 02 00 00 	mov    BYTE PTR [rsp+0x280],0x0
  da7108:	00 
  da7109:	48 89 84 24 40 01 00 	mov    QWORD PTR [rsp+0x140],rax
  da7110:	00 
  da7111:	48 8d 84 24 40 01 00 	lea    rax,[rsp+0x140]
  da7118:	00 
  da7119:	4c 8b 87 88 00 00 00 	mov    r8,QWORD PTR [rdi+0x88]
  da7120:	49 83 f8 01          	cmp    r8,0x1
  da7124:	0f 86 d7 01 00 00    	jbe    da7301 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x241>
  da712a:	48 8b 47 58          	mov    rax,QWORD PTR [rdi+0x58]
  da712e:	48 8b 4f 10          	mov    rcx,QWORD PTR [rdi+0x10]
  da7132:	4c 8b 6f 20          	mov    r13,QWORD PTR [rdi+0x20]
  da7136:	48 8b 5f 60          	mov    rbx,QWORD PTR [rdi+0x60]
  da713a:	4c 8b 77 28          	mov    r14,QWORD PTR [rdi+0x28]
  da713e:	48 8b 57 30          	mov    rdx,QWORD PTR [rdi+0x30]
  da7142:	48 01 ca             	add    rdx,rcx
  da7145:	48 89 94 24 f0 01 00 	mov    QWORD PTR [rsp+0x1f0],rdx
  da714c:	00 
  da714d:	48 8b 57 40          	mov    rdx,QWORD PTR [rdi+0x40]
  da7151:	48 89 4c 24 30       	mov    QWORD PTR [rsp+0x30],rcx
  da7156:	48 01 ca             	add    rdx,rcx
  da7159:	48 89 94 24 e0 01 00 	mov    QWORD PTR [rsp+0x1e0],rdx
  da7160:	00 
  da7161:	48 8b 57 78          	mov    rdx,QWORD PTR [rdi+0x78]
  da7165:	48 8b 8f 80 00 00 00 	mov    rcx,QWORD PTR [rdi+0x80]
  da716c:	f2 0f 10 05 5c d7 2c 	movsd  xmm0,QWORD PTR [rip+0xffffffffff2cd75c]        # 748d0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1d80>
  da7173:	ff 
  da7174:	4e 8d 0c 85 00 00 00 	lea    r9,[r8*4+0x0]
  da717b:	00 
  da717c:	f6 84 24 f8 00 00 00 	test   BYTE PTR [rsp+0xf8],0x3f
  da7183:	3f 
  da7184:	0f 94 84 24 20 01 00 	sete   BYTE PTR [rsp+0x120]
  da718b:	00 
  da718c:	4d 85 c9             	test   r9,r9
  da718f:	0f 84 a2 66 00 00    	je     dad837 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x6777>
  da7195:	48 89 84 24 a0 00 00 	mov    QWORD PTR [rsp+0xa0],rax
  da719c:	00 
  da719d:	48 8b 84 24 d0 00 00 	mov    rax,QWORD PTR [rsp+0xd0]
  da71a4:	00 
  da71a5:	48 89 94 24 c8 01 00 	mov    QWORD PTR [rsp+0x1c8],rdx
  da71ac:	00 
  da71ad:	48 8d 04 d0          	lea    rax,[rax+rdx*8]
  da71b1:	48 89 84 24 50 02 00 	mov    QWORD PTR [rsp+0x250],rax
  da71b8:	00 
  da71b9:	48 89 8c 24 18 01 00 	mov    QWORD PTR [rsp+0x118],rcx
  da71c0:	00 
  da71c1:	48 8d 0c c8          	lea    rcx,[rax+rcx*8]
  da71c5:	f2 0f 5a c0          	cvtsd2ss xmm0,xmm0
  da71c9:	0f 29 84 24 b0 00 00 	movaps XMMWORD PTR [rsp+0xb0],xmm0
  da71d0:	00 
  da71d1:	48 89 bc 24 d0 01 00 	mov    QWORD PTR [rsp+0x1d0],rdi
  da71d8:	00 
  da71d9:	0f b6 87 99 00 00 00 	movzx  eax,BYTE PTR [rdi+0x99]
  da71e0:	88 44 24 38          	mov    BYTE PTR [rsp+0x38],al
  da71e4:	48 89 d8             	mov    rax,rbx
  da71e7:	4c 09 c8             	or     rax,r9
  da71ea:	48 c1 e8 20          	shr    rax,0x20
  da71ee:	0f 84 dc 48 00 00    	je     dabad0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4a10>
  da71f4:	48 89 d8             	mov    rax,rbx
  da71f7:	31 d2                	xor    edx,edx
  da71f9:	49 f7 f1             	div    r9
  da71fc:	e9 d6 48 00 00       	jmp    dabad7 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4a17>
  da7201:	c6 84 24 80 02 00 00 	mov    BYTE PTR [rsp+0x280],0x0
  da7208:	00 
  da7209:	48 89 84 24 40 01 00 	mov    QWORD PTR [rsp+0x140],rax
  da7210:	00 
  da7211:	48 8d 84 24 40 01 00 	lea    rax,[rsp+0x140]
  da7218:	00 
  da7219:	4c 8b 87 88 00 00 00 	mov    r8,QWORD PTR [rdi+0x88]
  da7220:	49 83 f8 01          	cmp    r8,0x1
  da7224:	0f 86 0d 14 00 00    	jbe    da8637 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1577>
  da722a:	48 8b 47 58          	mov    rax,QWORD PTR [rdi+0x58]
  da722e:	48 8b 4f 10          	mov    rcx,QWORD PTR [rdi+0x10]
  da7232:	4c 8b 6f 20          	mov    r13,QWORD PTR [rdi+0x20]
  da7236:	48 8b 5f 60          	mov    rbx,QWORD PTR [rdi+0x60]
  da723a:	4c 8b 77 28          	mov    r14,QWORD PTR [rdi+0x28]
  da723e:	48 8b 57 30          	mov    rdx,QWORD PTR [rdi+0x30]
  da7242:	48 01 ca             	add    rdx,rcx
  da7245:	48 89 94 24 f0 01 00 	mov    QWORD PTR [rsp+0x1f0],rdx
  da724c:	00 
  da724d:	48 8b 57 40          	mov    rdx,QWORD PTR [rdi+0x40]
  da7251:	48 89 4c 24 30       	mov    QWORD PTR [rsp+0x30],rcx
  da7256:	48 01 ca             	add    rdx,rcx
  da7259:	48 89 94 24 e0 01 00 	mov    QWORD PTR [rsp+0x1e0],rdx
  da7260:	00 
  da7261:	48 8b 57 78          	mov    rdx,QWORD PTR [rdi+0x78]
  da7265:	48 8b 8f 80 00 00 00 	mov    rcx,QWORD PTR [rdi+0x80]
  da726c:	f2 0f 10 05 5c d6 2c 	movsd  xmm0,QWORD PTR [rip+0xffffffffff2cd65c]        # 748d0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1d80>
  da7273:	ff 
  da7274:	4e 8d 0c 85 00 00 00 	lea    r9,[r8*4+0x0]
  da727b:	00 
  da727c:	f6 84 24 f8 00 00 00 	test   BYTE PTR [rsp+0xf8],0x3f
  da7283:	3f 
  da7284:	0f 94 84 24 20 01 00 	sete   BYTE PTR [rsp+0x120]
  da728b:	00 
  da728c:	4d 85 c9             	test   r9,r9
  da728f:	0f 84 a2 65 00 00    	je     dad837 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x6777>
  da7295:	48 89 84 24 a0 00 00 	mov    QWORD PTR [rsp+0xa0],rax
  da729c:	00 
  da729d:	48 8b 84 24 d0 00 00 	mov    rax,QWORD PTR [rsp+0xd0]
  da72a4:	00 
  da72a5:	48 89 94 24 c8 01 00 	mov    QWORD PTR [rsp+0x1c8],rdx
  da72ac:	00 
  da72ad:	48 8d 04 d0          	lea    rax,[rax+rdx*8]
  da72b1:	48 89 84 24 50 02 00 	mov    QWORD PTR [rsp+0x250],rax
  da72b8:	00 
  da72b9:	48 89 8c 24 18 01 00 	mov    QWORD PTR [rsp+0x118],rcx
  da72c0:	00 
  da72c1:	48 8d 0c c8          	lea    rcx,[rax+rcx*8]
  da72c5:	f2 0f 5a c0          	cvtsd2ss xmm0,xmm0
  da72c9:	0f 29 84 24 b0 00 00 	movaps XMMWORD PTR [rsp+0xb0],xmm0
  da72d0:	00 
  da72d1:	48 89 bc 24 d0 01 00 	mov    QWORD PTR [rsp+0x1d0],rdi
  da72d8:	00 
  da72d9:	0f b6 87 99 00 00 00 	movzx  eax,BYTE PTR [rdi+0x99]
  da72e0:	88 44 24 38          	mov    BYTE PTR [rsp+0x38],al
  da72e4:	48 89 d8             	mov    rax,rbx
  da72e7:	4c 09 c8             	or     rax,r9
  da72ea:	48 c1 e8 20          	shr    rax,0x20
  da72ee:	0f 84 d1 4f 00 00    	je     dac2c5 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5205>
  da72f4:	48 89 d8             	mov    rax,rbx
  da72f7:	31 d2                	xor    edx,edx
  da72f9:	49 f7 f1             	div    r9
  da72fc:	e9 cb 4f 00 00       	jmp    dac2cc <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x520c>
  da7301:	4c 8b 67 58          	mov    r12,QWORD PTR [rdi+0x58]
  da7305:	48 8b 4f 10          	mov    rcx,QWORD PTR [rdi+0x10]
  da7309:	48 8b 5f 20          	mov    rbx,QWORD PTR [rdi+0x20]
  da730d:	48 8b 77 60          	mov    rsi,QWORD PTR [rdi+0x60]
  da7311:	48 8b 47 28          	mov    rax,QWORD PTR [rdi+0x28]
  da7315:	48 89 84 24 80 00 00 	mov    QWORD PTR [rsp+0x80],rax
  da731c:	00 
  da731d:	48 8b 47 30          	mov    rax,QWORD PTR [rdi+0x30]
  da7321:	48 8b 57 40          	mov    rdx,QWORD PTR [rdi+0x40]
  da7325:	48 89 4c 24 78       	mov    QWORD PTR [rsp+0x78],rcx
  da732a:	48 01 ca             	add    rdx,rcx
  da732d:	48 89 94 24 70 02 00 	mov    QWORD PTR [rsp+0x270],rdx
  da7334:	00 
  da7335:	48 8b 4f 78          	mov    rcx,QWORD PTR [rdi+0x78]
  da7339:	48 8b 94 24 d0 00 00 	mov    rdx,QWORD PTR [rsp+0xd0]
  da7340:	00 
  da7341:	4c 8d 34 ca          	lea    r14,[rdx+rcx*8]
  da7345:	48 8b 8f 80 00 00 00 	mov    rcx,QWORD PTR [rdi+0x80]
  da734c:	49 8d 0c ce          	lea    rcx,[r14+rcx*8]
  da7350:	48 89 8c 24 e0 00 00 	mov    QWORD PTR [rsp+0xe0],rcx
  da7357:	00 
  da7358:	f2 0f 10 05 70 d5 2c 	movsd  xmm0,QWORD PTR [rip+0xffffffffff2cd570]        # 748d0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1d80>
  da735f:	ff 
  da7360:	f2 0f 5a c0          	cvtsd2ss xmm0,xmm0
  da7364:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  da7368:	0f 29 44 24 40       	movaps XMMWORD PTR [rsp+0x40],xmm0
  da736d:	0f b6 8f 98 00 00 00 	movzx  ecx,BYTE PTR [rdi+0x98]
  da7374:	0f b6 97 99 00 00 00 	movzx  edx,BYTE PTR [rdi+0x99]
  da737b:	88 8c 24 28 01 00 00 	mov    BYTE PTR [rsp+0x128],cl
  da7382:	20 ca                	and    dl,cl
  da7384:	88 54 24 58          	mov    BYTE PTR [rsp+0x58],dl
  da7388:	48 89 74 24 30       	mov    QWORD PTR [rsp+0x30],rsi
  da738d:	48 85 f6             	test   rsi,rsi
  da7390:	4c 89 64 24 38       	mov    QWORD PTR [rsp+0x38],r12
  da7395:	4c 89 b4 24 90 00 00 	mov    QWORD PTR [rsp+0x90],r14
  da739c:	00 
  da739d:	0f 84 f7 25 00 00    	je     da999a <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x28da>
  da73a3:	48 8b 74 24 30       	mov    rsi,QWORD PTR [rsp+0x30]
  da73a8:	49 89 f1             	mov    r9,rsi
  da73ab:	49 c1 e9 02          	shr    r9,0x2
  da73af:	89 f1                	mov    ecx,esi
  da73b1:	83 e1 03             	and    ecx,0x3
  da73b4:	48 83 f9 01          	cmp    rcx,0x1
  da73b8:	49 83 d9 ff          	sbb    r9,0xffffffffffffffff
  da73bc:	48 8b 54 24 78       	mov    rdx,QWORD PTR [rsp+0x78]
  da73c1:	48 8d 0c 02          	lea    rcx,[rdx+rax*1]
  da73c5:	48 89 8c 24 68 02 00 	mov    QWORD PTR [rsp+0x268],rcx
  da73cc:	00 
  da73cd:	4d 89 e0             	mov    r8,r12
  da73d0:	49 c1 e8 02          	shr    r8,0x2
  da73d4:	44 89 e1             	mov    ecx,r12d
  da73d7:	83 e1 03             	and    ecx,0x3
  da73da:	48 83 f9 01          	cmp    rcx,0x1
  da73de:	49 83 d8 ff          	sbb    r8,0xffffffffffffffff
  da73e2:	4c 89 84 24 c8 01 00 	mov    QWORD PTR [rsp+0x1c8],r8
  da73e9:	00 
  da73ea:	48 8b 4f 70          	mov    rcx,QWORD PTR [rdi+0x70]
  da73ee:	f3 48 0f bc f9       	tzcnt  rdi,rcx
  da73f3:	48 89 bc 24 f0 00 00 	mov    QWORD PTR [rsp+0xf0],rdi
  da73fa:	00 
  da73fb:	48 bf ff ff ff ff ff 	movabs rdi,0x7ffffffffffffff
  da7402:	ff ff 07 
  da7405:	48 89 8c 24 18 01 00 	mov    QWORD PTR [rsp+0x118],rcx
  da740c:	00 
  da740d:	48 01 cf             	add    rdi,rcx
  da7410:	48 89 7c 24 60       	mov    QWORD PTR [rsp+0x60],rdi
  da7415:	4c 89 e7             	mov    rdi,r12
  da7418:	48 c1 e7 04          	shl    rdi,0x4
  da741c:	4f 8d 04 64          	lea    r8,[r12+r12*2]
  da7420:	4c 89 e1             	mov    rcx,r12
  da7423:	48 f7 d9             	neg    rcx
  da7426:	48 89 8c 24 a0 00 00 	mov    QWORD PTR [rsp+0xa0],rcx
  da742d:	00 
  da742e:	4c 89 e1             	mov    rcx,r12
  da7431:	48 c1 e1 05          	shl    rcx,0x5
  da7435:	48 89 8c 24 d0 01 00 	mov    QWORD PTR [rsp+0x1d0],rcx
  da743c:	00 
  da743d:	48 8b 8c 24 d0 00 00 	mov    rcx,QWORD PTR [rsp+0xd0]
  da7444:	00 
  da7445:	48 01 cf             	add    rdi,rcx
  da7448:	48 89 bc 24 d8 00 00 	mov    QWORD PTR [rsp+0xd8],rdi
  da744f:	00 
  da7450:	48 8d 3c 10          	lea    rdi,[rax+rdx*1]
  da7454:	48 83 c7 70          	add    rdi,0x70
  da7458:	48 89 f0             	mov    rax,rsi
  da745b:	48 c1 e0 05          	shl    rax,0x5
  da745f:	48 89 84 24 b0 00 00 	mov    QWORD PTR [rsp+0xb0],rax
  da7466:	00 
  da7467:	48 8d 42 20          	lea    rax,[rdx+0x20]
  da746b:	48 89 84 24 48 02 00 	mov    QWORD PTR [rsp+0x248],rax
  da7472:	00 
  da7473:	48 8d 43 ff          	lea    rax,[rbx-0x1]
  da7477:	48 89 84 24 40 02 00 	mov    QWORD PTR [rsp+0x240],rax
  da747e:	00 
  da747f:	4c 89 84 24 60 02 00 	mov    QWORD PTR [rsp+0x260],r8
  da7486:	00 
  da7487:	4a 8d 04 c1          	lea    rax,[rcx+r8*8]
  da748b:	48 89 84 24 08 01 00 	mov    QWORD PTR [rsp+0x108],rax
  da7492:	00 
  da7493:	4a 8d 04 e1          	lea    rax,[rcx+r12*8]
  da7497:	48 89 84 24 e8 00 00 	mov    QWORD PTR [rsp+0xe8],rax
  da749e:	00 
  da749f:	31 d2                	xor    edx,edx
  da74a1:	48 89 8c 24 00 01 00 	mov    QWORD PTR [rsp+0x100],rcx
  da74a8:	00 
  da74a9:	48 89 8c 24 98 00 00 	mov    QWORD PTR [rsp+0x98],rcx
  da74b0:	00 
  da74b1:	48 89 74 24 70       	mov    QWORD PTR [rsp+0x70],rsi
  da74b6:	48 89 9c 24 20 01 00 	mov    QWORD PTR [rsp+0x120],rbx
  da74bd:	00 
  da74be:	eb 77                	jmp    da7537 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x477>
  da74c0:	48 8b 94 24 a8 00 00 	mov    rdx,QWORD PTR [rsp+0xa8]
  da74c7:	00 
  da74c8:	48 83 c2 04          	add    rdx,0x4
  da74cc:	4c 8b 8c 24 d8 01 00 	mov    r9,QWORD PTR [rsp+0x1d8]
  da74d3:	00 
  da74d4:	49 ff c9             	dec    r9
  da74d7:	48 83 44 24 70 fc    	add    QWORD PTR [rsp+0x70],0xfffffffffffffffc
  da74dd:	48 8b 84 24 d0 01 00 	mov    rax,QWORD PTR [rsp+0x1d0]
  da74e4:	00 
  da74e5:	48 01 84 24 08 01 00 	add    QWORD PTR [rsp+0x108],rax
  da74ec:	00 
  da74ed:	48 01 84 24 d8 00 00 	add    QWORD PTR [rsp+0xd8],rax
  da74f4:	00 
  da74f5:	48 01 84 24 e8 00 00 	add    QWORD PTR [rsp+0xe8],rax
  da74fc:	00 
  da74fd:	48 8b bc 24 c8 00 00 	mov    rdi,QWORD PTR [rsp+0xc8]
  da7504:	00 
  da7505:	48 01 c7             	add    rdi,rax
  da7508:	48 01 84 24 98 00 00 	add    QWORD PTR [rsp+0x98],rax
  da750f:	00 
  da7510:	48 83 ac 24 00 01 00 	sub    QWORD PTR [rsp+0x100],0xffffffffffffff80
  da7517:	00 80 
  da7519:	4d 85 c9             	test   r9,r9
  da751c:	4c 8b 64 24 38       	mov    r12,QWORD PTR [rsp+0x38]
  da7521:	4c 8b b4 24 90 00 00 	mov    r14,QWORD PTR [rsp+0x90]
  da7528:	00 
  da7529:	48 8b 9c 24 20 01 00 	mov    rbx,QWORD PTR [rsp+0x120]
  da7530:	00 
  da7531:	0f 84 63 24 00 00    	je     da999a <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x28da>
  da7537:	48 89 bc 24 c8 00 00 	mov    QWORD PTR [rsp+0xc8],rdi
  da753e:	00 
  da753f:	4c 8b 44 24 30       	mov    r8,QWORD PTR [rsp+0x30]
  da7544:	49 29 d0             	sub    r8,rdx
  da7547:	48 8b 84 24 10 01 00 	mov    rax,QWORD PTR [rsp+0x110]
  da754e:	00 
  da754f:	48 8d 3c d0          	lea    rdi,[rax+rdx*8]
  da7553:	49 83 f8 04          	cmp    r8,0x4
  da7557:	b8 04 00 00 00       	mov    eax,0x4
  da755c:	4c 0f 43 c0          	cmovae r8,rax
  da7560:	4c 89 8c 24 d8 01 00 	mov    QWORD PTR [rsp+0x1d8],r9
  da7567:	00 
  da7568:	48 89 94 24 a8 00 00 	mov    QWORD PTR [rsp+0xa8],rdx
  da756f:	00 
  da7570:	72 5e                	jb     da75d0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x510>
  da7572:	48 85 db             	test   rbx,rbx
  da7575:	0f 84 e0 62 00 00    	je     dad85b <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x679b>
  da757b:	48 8b 44 24 78       	mov    rax,QWORD PTR [rsp+0x78]
  da7580:	48 8b 00             	mov    rax,QWORD PTR [rax]
  da7583:	48 83 c0 fe          	add    rax,0xfffffffffffffffe
  da7587:	48 83 f8 0d          	cmp    rax,0xd
  da758b:	0f 87 8e 62 00 00    	ja     dad81f <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x675f>
  da7591:	48 8d 0d bc bc 2f ff 	lea    rcx,[rip+0xffffffffff2fbcbc]        # a3254 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x30704>
  da7598:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  da759c:	48 01 c8             	add    rax,rcx
  da759f:	ff e0                	jmp    rax
  da75a1:	4c 89 f6             	mov    rsi,r14
  da75a4:	4c 89 e2             	mov    rdx,r12
  da75a7:	48 8b 4c 24 30       	mov    rcx,QWORD PTR [rsp+0x30]
  da75ac:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  da75b1:	e8 4a 98 ff ff       	call   da0e00 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da75b6:	48 83 fb 02          	cmp    rbx,0x2
  da75ba:	0f 83 c0 03 00 00    	jae    da7980 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x8c0>
  da75c0:	e9 3b 08 00 00       	jmp    da7e00 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xd40>
  da75c5:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  da75cc:	00 00 00 00 
  da75d0:	48 85 db             	test   rbx,rbx
  da75d3:	0f 84 82 62 00 00    	je     dad85b <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x679b>
  da75d9:	48 8b 44 24 78       	mov    rax,QWORD PTR [rsp+0x78]
  da75de:	48 8b 00             	mov    rax,QWORD PTR [rax]
  da75e1:	48 83 c0 fe          	add    rax,0xfffffffffffffffe
  da75e5:	48 83 f8 0d          	cmp    rax,0xd
  da75e9:	0f 87 30 62 00 00    	ja     dad81f <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x675f>
  da75ef:	48 8d 0d ea bb 2f ff 	lea    rcx,[rip+0xffffffffff2fbbea]        # a31e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x30690>
  da75f6:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  da75fa:	48 01 c8             	add    rax,rcx
  da75fd:	ff e0                	jmp    rax
  da75ff:	4c 89 f6             	mov    rsi,r14
  da7602:	4c 89 e2             	mov    rdx,r12
  da7605:	48 8b 4c 24 30       	mov    rcx,QWORD PTR [rsp+0x30]
  da760a:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  da760f:	e8 2c cc fd ff       	call   d84240 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da7614:	48 83 fb 02          	cmp    rbx,0x2
  da7618:	0f 83 b2 05 00 00    	jae    da7bd0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xb10>
  da761e:	e9 dd 07 00 00       	jmp    da7e00 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xd40>
  da7623:	4c 89 f6             	mov    rsi,r14
  da7626:	4c 89 e2             	mov    rdx,r12
  da7629:	48 8b 4c 24 30       	mov    rcx,QWORD PTR [rsp+0x30]
  da762e:	e8 4d 51 ff ff       	call   d9c780 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da7633:	48 83 fb 02          	cmp    rbx,0x2
  da7637:	0f 83 43 03 00 00    	jae    da7980 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x8c0>
  da763d:	e9 be 07 00 00       	jmp    da7e00 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xd40>
  da7642:	4c 89 f6             	mov    rsi,r14
  da7645:	4c 89 e2             	mov    rdx,r12
  da7648:	48 8b 4c 24 30       	mov    rcx,QWORD PTR [rsp+0x30]
  da764d:	e8 ee bb fe ff       	call   d93240 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da7652:	48 83 fb 02          	cmp    rbx,0x2
  da7656:	0f 83 74 05 00 00    	jae    da7bd0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xb10>
  da765c:	e9 9f 07 00 00       	jmp    da7e00 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xd40>
  da7661:	4c 89 f6             	mov    rsi,r14
  da7664:	4c 89 e2             	mov    rdx,r12
  da7667:	48 8b 4c 24 30       	mov    rcx,QWORD PTR [rsp+0x30]
  da766c:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  da7671:	e8 ca cd ff ff       	call   da4440 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da7676:	48 83 fb 02          	cmp    rbx,0x2
  da767a:	0f 83 00 03 00 00    	jae    da7980 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x8c0>
  da7680:	e9 7b 07 00 00       	jmp    da7e00 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xd40>
  da7685:	4c 89 f6             	mov    rsi,r14
  da7688:	4c 89 e2             	mov    rdx,r12
  da768b:	48 8b 4c 24 30       	mov    rcx,QWORD PTR [rsp+0x30]
  da7690:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  da7695:	e8 e6 91 ff ff       	call   da0880 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da769a:	48 83 fb 02          	cmp    rbx,0x2
  da769e:	0f 83 2c 05 00 00    	jae    da7bd0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xb10>
  da76a4:	e9 57 07 00 00       	jmp    da7e00 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xd40>
  da76a9:	4c 89 f6             	mov    rsi,r14
  da76ac:	4c 89 e2             	mov    rdx,r12
  da76af:	48 8b 4c 24 30       	mov    rcx,QWORD PTR [rsp+0x30]
  da76b4:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  da76b9:	e8 42 f9 fe ff       	call   d97000 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da76be:	48 83 fb 02          	cmp    rbx,0x2
  da76c2:	0f 83 b8 02 00 00    	jae    da7980 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x8c0>
  da76c8:	e9 33 07 00 00       	jmp    da7e00 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xd40>
  da76cd:	4c 89 f6             	mov    rsi,r14
  da76d0:	4c 89 e2             	mov    rdx,r12
  da76d3:	48 8b 4c 24 30       	mov    rcx,QWORD PTR [rsp+0x30]
  da76d8:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  da76dd:	e8 de f6 fd ff       	call   d86dc0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da76e2:	48 83 fb 02          	cmp    rbx,0x2
  da76e6:	0f 83 e4 04 00 00    	jae    da7bd0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xb10>
  da76ec:	e9 0f 07 00 00       	jmp    da7e00 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xd40>
  da76f1:	4c 89 f6             	mov    rsi,r14
  da76f4:	4c 89 e2             	mov    rdx,r12
  da76f7:	48 8b 4c 24 30       	mov    rcx,QWORD PTR [rsp+0x30]
  da76fc:	e8 3f 1f ff ff       	call   d99640 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da7701:	48 83 fb 02          	cmp    rbx,0x2
  da7705:	0f 83 75 02 00 00    	jae    da7980 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x8c0>
  da770b:	e9 f0 06 00 00       	jmp    da7e00 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xd40>
  da7710:	4c 89 f6             	mov    rsi,r14
  da7713:	4c 89 e2             	mov    rdx,r12
  da7716:	48 8b 4c 24 30       	mov    rcx,QWORD PTR [rsp+0x30]
  da771b:	e8 60 80 ff ff       	call   d9f780 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da7720:	48 83 fb 02          	cmp    rbx,0x2
  da7724:	0f 83 a6 04 00 00    	jae    da7bd0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xb10>
  da772a:	e9 d1 06 00 00       	jmp    da7e00 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xd40>
  da772f:	4c 89 f6             	mov    rsi,r14
  da7732:	4c 89 e2             	mov    rdx,r12
  da7735:	48 8b 4c 24 30       	mov    rcx,QWORD PTR [rsp+0x30]
  da773a:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  da773f:	e8 bc 1e fe ff       	call   d89600 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da7744:	48 83 fb 02          	cmp    rbx,0x2
  da7748:	0f 83 32 02 00 00    	jae    da7980 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x8c0>
  da774e:	e9 ad 06 00 00       	jmp    da7e00 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xd40>
  da7753:	4c 89 f6             	mov    rsi,r14
  da7756:	4c 89 e2             	mov    rdx,r12
  da7759:	48 8b 4c 24 30       	mov    rcx,QWORD PTR [rsp+0x30]
  da775e:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  da7763:	e8 58 b7 fe ff       	call   d92ec0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da7768:	48 83 fb 02          	cmp    rbx,0x2
  da776c:	0f 83 5e 04 00 00    	jae    da7bd0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xb10>
  da7772:	e9 89 06 00 00       	jmp    da7e00 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xd40>
  da7777:	4c 89 f6             	mov    rsi,r14
  da777a:	4c 89 e2             	mov    rdx,r12
  da777d:	48 8b 4c 24 30       	mov    rcx,QWORD PTR [rsp+0x30]
  da7782:	e8 79 7d ff ff       	call   d9f500 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da7787:	48 83 fb 02          	cmp    rbx,0x2
  da778b:	0f 83 ef 01 00 00    	jae    da7980 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x8c0>
  da7791:	e9 6a 06 00 00       	jmp    da7e00 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xd40>
  da7796:	4c 89 f6             	mov    rsi,r14
  da7799:	4c 89 e2             	mov    rdx,r12
  da779c:	48 8b 4c 24 30       	mov    rcx,QWORD PTR [rsp+0x30]
  da77a1:	e8 5a b1 ff ff       	call   da2900 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da77a6:	48 83 fb 02          	cmp    rbx,0x2
  da77aa:	0f 83 20 04 00 00    	jae    da7bd0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xb10>
  da77b0:	e9 4b 06 00 00       	jmp    da7e00 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xd40>
  da77b5:	4c 89 f6             	mov    rsi,r14
  da77b8:	4c 89 e2             	mov    rdx,r12
  da77bb:	48 8b 4c 24 30       	mov    rcx,QWORD PTR [rsp+0x30]
  da77c0:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  da77c5:	e8 b6 d2 fd ff       	call   d84a80 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da77ca:	48 83 fb 02          	cmp    rbx,0x2
  da77ce:	0f 83 ac 01 00 00    	jae    da7980 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x8c0>
  da77d4:	e9 27 06 00 00       	jmp    da7e00 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xd40>
  da77d9:	4c 89 f6             	mov    rsi,r14
  da77dc:	4c 89 e2             	mov    rdx,r12
  da77df:	48 8b 4c 24 30       	mov    rcx,QWORD PTR [rsp+0x30]
  da77e4:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  da77e9:	e8 d2 bf fd ff       	call   d837c0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da77ee:	48 83 fb 02          	cmp    rbx,0x2
  da77f2:	0f 83 d8 03 00 00    	jae    da7bd0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xb10>
  da77f8:	e9 03 06 00 00       	jmp    da7e00 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xd40>
  da77fd:	4c 89 f6             	mov    rsi,r14
  da7800:	4c 89 e2             	mov    rdx,r12
  da7803:	48 8b 4c 24 30       	mov    rcx,QWORD PTR [rsp+0x30]
  da7808:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  da780d:	e8 ee 1c ff ff       	call   d99500 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da7812:	48 83 fb 02          	cmp    rbx,0x2
  da7816:	0f 83 64 01 00 00    	jae    da7980 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x8c0>
  da781c:	e9 df 05 00 00       	jmp    da7e00 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xd40>
  da7821:	4c 89 f6             	mov    rsi,r14
  da7824:	4c 89 e2             	mov    rdx,r12
  da7827:	48 8b 4c 24 30       	mov    rcx,QWORD PTR [rsp+0x30]
  da782c:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  da7831:	e8 8a 19 fe ff       	call   d891c0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da7836:	48 83 fb 02          	cmp    rbx,0x2
  da783a:	0f 83 90 03 00 00    	jae    da7bd0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xb10>
  da7840:	e9 bb 05 00 00       	jmp    da7e00 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xd40>
  da7845:	4c 89 f6             	mov    rsi,r14
  da7848:	4c 89 e2             	mov    rdx,r12
  da784b:	48 8b 4c 24 30       	mov    rcx,QWORD PTR [rsp+0x30]
  da7850:	e8 ab ce ff ff       	call   da4700 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da7855:	48 83 fb 02          	cmp    rbx,0x2
  da7859:	0f 83 21 01 00 00    	jae    da7980 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x8c0>
  da785f:	e9 9c 05 00 00       	jmp    da7e00 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xd40>
  da7864:	4c 89 f6             	mov    rsi,r14
  da7867:	4c 89 e2             	mov    rdx,r12
  da786a:	48 8b 4c 24 30       	mov    rcx,QWORD PTR [rsp+0x30]
  da786f:	e8 4c a0 ff ff       	call   da18c0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da7874:	48 83 fb 02          	cmp    rbx,0x2
  da7878:	0f 83 52 03 00 00    	jae    da7bd0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xb10>
  da787e:	e9 7d 05 00 00       	jmp    da7e00 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xd40>
  da7883:	4c 89 f6             	mov    rsi,r14
  da7886:	4c 89 e2             	mov    rdx,r12
  da7889:	48 8b 4c 24 30       	mov    rcx,QWORD PTR [rsp+0x30]
  da788e:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  da7893:	e8 a8 88 fe ff       	call   d90140 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da7898:	48 83 fb 02          	cmp    rbx,0x2
  da789c:	0f 83 de 00 00 00    	jae    da7980 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x8c0>
  da78a2:	e9 59 05 00 00       	jmp    da7e00 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xd40>
  da78a7:	4c 89 f6             	mov    rsi,r14
  da78aa:	4c 89 e2             	mov    rdx,r12
  da78ad:	48 8b 4c 24 30       	mov    rcx,QWORD PTR [rsp+0x30]
  da78b2:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  da78b7:	e8 44 4a fe ff       	call   d8c300 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da78bc:	48 83 fb 02          	cmp    rbx,0x2
  da78c0:	0f 83 0a 03 00 00    	jae    da7bd0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xb10>
  da78c6:	e9 35 05 00 00       	jmp    da7e00 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xd40>
  da78cb:	4c 89 f6             	mov    rsi,r14
  da78ce:	4c 89 e2             	mov    rdx,r12
  da78d1:	48 8b 4c 24 30       	mov    rcx,QWORD PTR [rsp+0x30]
  da78d6:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  da78db:	e8 e0 07 fe ff       	call   d880c0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da78e0:	48 83 fb 02          	cmp    rbx,0x2
  da78e4:	0f 83 96 00 00 00    	jae    da7980 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x8c0>
  da78ea:	e9 11 05 00 00       	jmp    da7e00 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xd40>
  da78ef:	4c 89 f6             	mov    rsi,r14
  da78f2:	4c 89 e2             	mov    rdx,r12
  da78f5:	48 8b 4c 24 30       	mov    rcx,QWORD PTR [rsp+0x30]
  da78fa:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  da78ff:	e8 bc 03 ff ff       	call   d97cc0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da7904:	48 83 fb 02          	cmp    rbx,0x2
  da7908:	0f 83 c2 02 00 00    	jae    da7bd0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xb10>
  da790e:	e9 ed 04 00 00       	jmp    da7e00 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xd40>
  da7913:	4c 89 f6             	mov    rsi,r14
  da7916:	4c 89 e2             	mov    rdx,r12
  da7919:	48 8b 4c 24 30       	mov    rcx,QWORD PTR [rsp+0x30]
  da791e:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  da7923:	e8 18 80 fe ff       	call   d8f940 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da7928:	48 83 fb 02          	cmp    rbx,0x2
  da792c:	73 52                	jae    da7980 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x8c0>
  da792e:	e9 cd 04 00 00       	jmp    da7e00 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xd40>
  da7933:	4c 89 f6             	mov    rsi,r14
  da7936:	4c 89 e2             	mov    rdx,r12
  da7939:	48 8b 4c 24 30       	mov    rcx,QWORD PTR [rsp+0x30]
  da793e:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  da7943:	e8 78 0b fe ff       	call   d884c0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da7948:	48 83 fb 02          	cmp    rbx,0x2
  da794c:	0f 83 7e 02 00 00    	jae    da7bd0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xb10>
  da7952:	e9 a9 04 00 00       	jmp    da7e00 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xd40>
  da7957:	4c 89 f6             	mov    rsi,r14
  da795a:	4c 89 e2             	mov    rdx,r12
  da795d:	48 8b 4c 24 30       	mov    rcx,QWORD PTR [rsp+0x30]
  da7962:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  da7967:	e8 94 14 ff ff       	call   d98e00 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da796c:	48 83 fb 02          	cmp    rbx,0x2
  da7970:	0f 82 8a 04 00 00    	jb     da7e00 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xd40>
  da7976:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  da797d:	00 00 00 
  da7980:	48 8b 44 24 78       	mov    rax,QWORD PTR [rsp+0x78]
  da7985:	48 8b 18             	mov    rbx,QWORD PTR [rax]
  da7988:	4c 8b a4 24 40 02 00 	mov    r12,QWORD PTR [rsp+0x240]
  da798f:	00 
  da7990:	4c 8b ac 24 48 02 00 	mov    r13,QWORD PTR [rsp+0x248]
  da7997:	00 
  da7998:	48 8b 84 24 90 00 00 	mov    rax,QWORD PTR [rsp+0x90]
  da799f:	00 
  da79a0:	48 8b 8c 24 e0 00 00 	mov    rcx,QWORD PTR [rsp+0xe0]
  da79a7:	00 
  da79a8:	eb 4f                	jmp    da79f9 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x939>
  da79aa:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  da79af:	0f 29 84 24 40 01 00 	movaps XMMWORD PTR [rsp+0x140],xmm0
  da79b6:	00 
  da79b7:	48 89 d7             	mov    rdi,rdx
  da79ba:	4c 89 f6             	mov    rsi,r14
  da79bd:	48 8b 54 24 38       	mov    rdx,QWORD PTR [rsp+0x38]
  da79c2:	48 89 d9             	mov    rcx,rbx
  da79c5:	4c 8d 8c 24 40 01 00 	lea    r9,[rsp+0x140]
  da79cc:	00 
  da79cd:	e8 ee d9 f1 ff       	call   cc53c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da79d2:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  da79d9:	1f 84 00 00 00 00 00 
  da79e0:	49 0f af df          	imul   rbx,r15
  da79e4:	49 83 c5 18          	add    r13,0x18
  da79e8:	4c 89 f0             	mov    rax,r14
  da79eb:	49 ff cc             	dec    r12
  da79ee:	48 8b 4c 24 68       	mov    rcx,QWORD PTR [rsp+0x68]
  da79f3:	0f 84 07 04 00 00    	je     da7e00 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xd40>
  da79f9:	48 89 c2             	mov    rdx,rax
  da79fc:	4d 8b 7d f8          	mov    r15,QWORD PTR [r13-0x8]
  da7a00:	4d 8b 45 00          	mov    r8,QWORD PTR [r13+0x0]
  da7a04:	4c 03 44 24 78       	add    r8,QWORD PTR [rsp+0x78]
  da7a09:	4c 89 bc 24 88 00 00 	mov    QWORD PTR [rsp+0x88],r15
  da7a10:	00 
  da7a11:	49 8d 47 fe          	lea    rax,[r15-0x2]
  da7a15:	48 83 f8 0e          	cmp    rax,0xe
  da7a19:	0f 87 96 5d 00 00    	ja     dad7b5 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x66f5>
  da7a1f:	49 89 ce             	mov    r14,rcx
  da7a22:	48 8d 0d 63 b8 2f ff 	lea    rcx,[rip+0xffffffffff2fb863]        # a328c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x3073c>
  da7a29:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  da7a2d:	48 01 c8             	add    rax,rcx
  da7a30:	48 89 54 24 68       	mov    QWORD PTR [rsp+0x68],rdx
  da7a35:	ff e0                	jmp    rax
  da7a37:	48 89 d7             	mov    rdi,rdx
  da7a3a:	4c 89 f6             	mov    rsi,r14
  da7a3d:	48 8b 54 24 38       	mov    rdx,QWORD PTR [rsp+0x38]
  da7a42:	48 89 d9             	mov    rcx,rbx
  da7a45:	e8 36 55 f1 ff       	call   cbcf80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da7a4a:	eb 94                	jmp    da79e0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x920>
  da7a4c:	48 89 d7             	mov    rdi,rdx
  da7a4f:	4c 89 f6             	mov    rsi,r14
  da7a52:	48 8b 54 24 38       	mov    rdx,QWORD PTR [rsp+0x38]
  da7a57:	48 89 d9             	mov    rcx,rbx
  da7a5a:	e8 a1 9f f1 ff       	call   cc1a00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da7a5f:	e9 7c ff ff ff       	jmp    da79e0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x920>
  da7a64:	48 89 d7             	mov    rdi,rdx
  da7a67:	4c 89 f6             	mov    rsi,r14
  da7a6a:	48 8b 54 24 38       	mov    rdx,QWORD PTR [rsp+0x38]
  da7a6f:	48 89 d9             	mov    rcx,rbx
  da7a72:	e8 89 5e f1 ff       	call   cbd900 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da7a77:	e9 64 ff ff ff       	jmp    da79e0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x920>
  da7a7c:	48 89 d7             	mov    rdi,rdx
  da7a7f:	4c 89 f6             	mov    rsi,r14
  da7a82:	48 8b 54 24 38       	mov    rdx,QWORD PTR [rsp+0x38]
  da7a87:	48 89 d9             	mov    rcx,rbx
  da7a8a:	e8 b1 b4 f1 ff       	call   cc2f40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da7a8f:	e9 4c ff ff ff       	jmp    da79e0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x920>
  da7a94:	48 89 d7             	mov    rdi,rdx
  da7a97:	4c 89 f6             	mov    rsi,r14
  da7a9a:	48 8b 54 24 38       	mov    rdx,QWORD PTR [rsp+0x38]
  da7a9f:	48 89 d9             	mov    rcx,rbx
  da7aa2:	e8 d9 82 f1 ff       	call   cbfd80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da7aa7:	e9 34 ff ff ff       	jmp    da79e0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x920>
  da7aac:	48 89 d7             	mov    rdi,rdx
  da7aaf:	4c 89 f6             	mov    rsi,r14
  da7ab2:	48 8b 54 24 38       	mov    rdx,QWORD PTR [rsp+0x38]
  da7ab7:	48 89 d9             	mov    rcx,rbx
  da7aba:	e8 41 58 f1 ff       	call   cbd300 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da7abf:	e9 1c ff ff ff       	jmp    da79e0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x920>
  da7ac4:	48 89 d7             	mov    rdi,rdx
  da7ac7:	4c 89 f6             	mov    rsi,r14
  da7aca:	48 8b 54 24 38       	mov    rdx,QWORD PTR [rsp+0x38]
  da7acf:	48 89 d9             	mov    rcx,rbx
  da7ad2:	e8 a9 5a f1 ff       	call   cbd580 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da7ad7:	e9 04 ff ff ff       	jmp    da79e0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x920>
  da7adc:	48 89 d7             	mov    rdi,rdx
  da7adf:	4c 89 f6             	mov    rsi,r14
  da7ae2:	48 8b 54 24 38       	mov    rdx,QWORD PTR [rsp+0x38]
  da7ae7:	48 89 d9             	mov    rcx,rbx
  da7aea:	e8 11 6f f1 ff       	call   cbea00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da7aef:	e9 ec fe ff ff       	jmp    da79e0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x920>
  da7af4:	48 89 d7             	mov    rdi,rdx
  da7af7:	4c 89 f6             	mov    rsi,r14
  da7afa:	48 8b 54 24 38       	mov    rdx,QWORD PTR [rsp+0x38]
  da7aff:	48 89 d9             	mov    rcx,rbx
  da7b02:	e8 b9 55 f1 ff       	call   cbd0c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da7b07:	e9 d4 fe ff ff       	jmp    da79e0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x920>
  da7b0c:	48 89 d7             	mov    rdi,rdx
  da7b0f:	4c 89 f6             	mov    rsi,r14
  da7b12:	48 8b 54 24 38       	mov    rdx,QWORD PTR [rsp+0x38]
  da7b17:	48 89 d9             	mov    rcx,rbx
  da7b1a:	e8 21 62 f1 ff       	call   cbdd40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da7b1f:	e9 bc fe ff ff       	jmp    da79e0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x920>
  da7b24:	48 89 d7             	mov    rdi,rdx
  da7b27:	4c 89 f6             	mov    rsi,r14
  da7b2a:	48 8b 54 24 38       	mov    rdx,QWORD PTR [rsp+0x38]
  da7b2f:	48 89 d9             	mov    rcx,rbx
  da7b32:	e8 09 c6 f1 ff       	call   cc4140 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da7b37:	e9 a4 fe ff ff       	jmp    da79e0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x920>
  da7b3c:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  da7b41:	0f 29 84 24 40 01 00 	movaps XMMWORD PTR [rsp+0x140],xmm0
  da7b48:	00 
  da7b49:	48 89 d7             	mov    rdi,rdx
  da7b4c:	4c 89 f6             	mov    rsi,r14
  da7b4f:	48 8b 54 24 38       	mov    rdx,QWORD PTR [rsp+0x38]
  da7b54:	48 89 d9             	mov    rcx,rbx
  da7b57:	4c 8d 8c 24 40 01 00 	lea    r9,[rsp+0x140]
  da7b5e:	00 
  da7b5f:	e8 9c 68 f1 ff       	call   cbe400 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da7b64:	e9 77 fe ff ff       	jmp    da79e0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x920>
  da7b69:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  da7b6e:	0f 29 84 24 40 01 00 	movaps XMMWORD PTR [rsp+0x140],xmm0
  da7b75:	00 
  da7b76:	48 89 d7             	mov    rdi,rdx
  da7b79:	4c 89 f6             	mov    rsi,r14
  da7b7c:	48 8b 54 24 38       	mov    rdx,QWORD PTR [rsp+0x38]
  da7b81:	48 89 d9             	mov    rcx,rbx
  da7b84:	4c 8d 8c 24 40 01 00 	lea    r9,[rsp+0x140]
  da7b8b:	00 
  da7b8c:	e8 2f 92 f1 ff       	call   cc0dc0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da7b91:	e9 4a fe ff ff       	jmp    da79e0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x920>
  da7b96:	48 89 d7             	mov    rdi,rdx
  da7b99:	4c 89 f6             	mov    rsi,r14
  da7b9c:	48 8b 54 24 38       	mov    rdx,QWORD PTR [rsp+0x38]
  da7ba1:	48 89 d9             	mov    rcx,rbx
  da7ba4:	e8 97 77 f1 ff       	call   cbf340 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da7ba9:	e9 32 fe ff ff       	jmp    da79e0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x920>
  da7bae:	4c 89 f6             	mov    rsi,r14
  da7bb1:	4c 89 e2             	mov    rdx,r12
  da7bb4:	48 8b 4c 24 30       	mov    rcx,QWORD PTR [rsp+0x30]
  da7bb9:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  da7bbe:	e8 bd d8 fd ff       	call   d85480 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da7bc3:	48 83 fb 02          	cmp    rbx,0x2
  da7bc7:	0f 82 33 02 00 00    	jb     da7e00 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xd40>
  da7bcd:	0f 1f 00             	nop    DWORD PTR [rax]
  da7bd0:	48 8b 44 24 78       	mov    rax,QWORD PTR [rsp+0x78]
  da7bd5:	48 8b 18             	mov    rbx,QWORD PTR [rax]
  da7bd8:	4c 8b a4 24 40 02 00 	mov    r12,QWORD PTR [rsp+0x240]
  da7bdf:	00 
  da7be0:	4c 8b ac 24 48 02 00 	mov    r13,QWORD PTR [rsp+0x248]
  da7be7:	00 
  da7be8:	48 8b 84 24 90 00 00 	mov    rax,QWORD PTR [rsp+0x90]
  da7bef:	00 
  da7bf0:	48 8b 8c 24 e0 00 00 	mov    rcx,QWORD PTR [rsp+0xe0]
  da7bf7:	00 
  da7bf8:	eb 4f                	jmp    da7c49 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xb89>
  da7bfa:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  da7bff:	0f 29 84 24 40 01 00 	movaps XMMWORD PTR [rsp+0x140],xmm0
  da7c06:	00 
  da7c07:	48 89 d7             	mov    rdi,rdx
  da7c0a:	4c 89 f6             	mov    rsi,r14
  da7c0d:	48 8b 54 24 38       	mov    rdx,QWORD PTR [rsp+0x38]
  da7c12:	48 89 d9             	mov    rcx,rbx
  da7c15:	4c 8d 8c 24 40 01 00 	lea    r9,[rsp+0x140]
  da7c1c:	00 
  da7c1d:	e8 9e d7 f1 ff       	call   cc53c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da7c22:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  da7c29:	1f 84 00 00 00 00 00 
  da7c30:	49 0f af df          	imul   rbx,r15
  da7c34:	49 83 c5 18          	add    r13,0x18
  da7c38:	4c 89 f0             	mov    rax,r14
  da7c3b:	49 ff cc             	dec    r12
  da7c3e:	48 8b 4c 24 68       	mov    rcx,QWORD PTR [rsp+0x68]
  da7c43:	0f 84 b7 01 00 00    	je     da7e00 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xd40>
  da7c49:	48 89 c2             	mov    rdx,rax
  da7c4c:	4d 8b 7d f8          	mov    r15,QWORD PTR [r13-0x8]
  da7c50:	4d 8b 45 00          	mov    r8,QWORD PTR [r13+0x0]
  da7c54:	4c 03 44 24 78       	add    r8,QWORD PTR [rsp+0x78]
  da7c59:	4c 89 bc 24 88 00 00 	mov    QWORD PTR [rsp+0x88],r15
  da7c60:	00 
  da7c61:	49 8d 47 fe          	lea    rax,[r15-0x2]
  da7c65:	48 83 f8 0e          	cmp    rax,0xe
  da7c69:	0f 87 46 5b 00 00    	ja     dad7b5 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x66f5>
  da7c6f:	49 89 ce             	mov    r14,rcx
  da7c72:	48 8d 0d 9f b5 2f ff 	lea    rcx,[rip+0xffffffffff2fb59f]        # a3218 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x306c8>
  da7c79:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  da7c7d:	48 01 c8             	add    rax,rcx
  da7c80:	48 89 54 24 68       	mov    QWORD PTR [rsp+0x68],rdx
  da7c85:	ff e0                	jmp    rax
  da7c87:	48 89 d7             	mov    rdi,rdx
  da7c8a:	4c 89 f6             	mov    rsi,r14
  da7c8d:	48 8b 54 24 38       	mov    rdx,QWORD PTR [rsp+0x38]
  da7c92:	48 89 d9             	mov    rcx,rbx
  da7c95:	e8 e6 52 f1 ff       	call   cbcf80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da7c9a:	eb 94                	jmp    da7c30 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xb70>
  da7c9c:	48 89 d7             	mov    rdi,rdx
  da7c9f:	4c 89 f6             	mov    rsi,r14
  da7ca2:	48 8b 54 24 38       	mov    rdx,QWORD PTR [rsp+0x38]
  da7ca7:	48 89 d9             	mov    rcx,rbx
  da7caa:	e8 51 9d f1 ff       	call   cc1a00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da7caf:	e9 7c ff ff ff       	jmp    da7c30 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xb70>
  da7cb4:	48 89 d7             	mov    rdi,rdx
  da7cb7:	4c 89 f6             	mov    rsi,r14
  da7cba:	48 8b 54 24 38       	mov    rdx,QWORD PTR [rsp+0x38]
  da7cbf:	48 89 d9             	mov    rcx,rbx
  da7cc2:	e8 39 5c f1 ff       	call   cbd900 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da7cc7:	e9 64 ff ff ff       	jmp    da7c30 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xb70>
  da7ccc:	48 89 d7             	mov    rdi,rdx
  da7ccf:	4c 89 f6             	mov    rsi,r14
  da7cd2:	48 8b 54 24 38       	mov    rdx,QWORD PTR [rsp+0x38]
  da7cd7:	48 89 d9             	mov    rcx,rbx
  da7cda:	e8 61 b2 f1 ff       	call   cc2f40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da7cdf:	e9 4c ff ff ff       	jmp    da7c30 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xb70>
  da7ce4:	48 89 d7             	mov    rdi,rdx
  da7ce7:	4c 89 f6             	mov    rsi,r14
  da7cea:	48 8b 54 24 38       	mov    rdx,QWORD PTR [rsp+0x38]
  da7cef:	48 89 d9             	mov    rcx,rbx
  da7cf2:	e8 89 80 f1 ff       	call   cbfd80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da7cf7:	e9 34 ff ff ff       	jmp    da7c30 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xb70>
  da7cfc:	48 89 d7             	mov    rdi,rdx
  da7cff:	4c 89 f6             	mov    rsi,r14
  da7d02:	48 8b 54 24 38       	mov    rdx,QWORD PTR [rsp+0x38]
  da7d07:	48 89 d9             	mov    rcx,rbx
  da7d0a:	e8 f1 55 f1 ff       	call   cbd300 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da7d0f:	e9 1c ff ff ff       	jmp    da7c30 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xb70>
  da7d14:	48 89 d7             	mov    rdi,rdx
  da7d17:	4c 89 f6             	mov    rsi,r14
  da7d1a:	48 8b 54 24 38       	mov    rdx,QWORD PTR [rsp+0x38]
  da7d1f:	48 89 d9             	mov    rcx,rbx
  da7d22:	e8 59 58 f1 ff       	call   cbd580 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da7d27:	e9 04 ff ff ff       	jmp    da7c30 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xb70>
  da7d2c:	48 89 d7             	mov    rdi,rdx
  da7d2f:	4c 89 f6             	mov    rsi,r14
  da7d32:	48 8b 54 24 38       	mov    rdx,QWORD PTR [rsp+0x38]
  da7d37:	48 89 d9             	mov    rcx,rbx
  da7d3a:	e8 c1 6c f1 ff       	call   cbea00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da7d3f:	e9 ec fe ff ff       	jmp    da7c30 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xb70>
  da7d44:	48 89 d7             	mov    rdi,rdx
  da7d47:	4c 89 f6             	mov    rsi,r14
  da7d4a:	48 8b 54 24 38       	mov    rdx,QWORD PTR [rsp+0x38]
  da7d4f:	48 89 d9             	mov    rcx,rbx
  da7d52:	e8 69 53 f1 ff       	call   cbd0c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da7d57:	e9 d4 fe ff ff       	jmp    da7c30 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xb70>
  da7d5c:	48 89 d7             	mov    rdi,rdx
  da7d5f:	4c 89 f6             	mov    rsi,r14
  da7d62:	48 8b 54 24 38       	mov    rdx,QWORD PTR [rsp+0x38]
  da7d67:	48 89 d9             	mov    rcx,rbx
  da7d6a:	e8 d1 5f f1 ff       	call   cbdd40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da7d6f:	e9 bc fe ff ff       	jmp    da7c30 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xb70>
  da7d74:	48 89 d7             	mov    rdi,rdx
  da7d77:	4c 89 f6             	mov    rsi,r14
  da7d7a:	48 8b 54 24 38       	mov    rdx,QWORD PTR [rsp+0x38]
  da7d7f:	48 89 d9             	mov    rcx,rbx
  da7d82:	e8 b9 c3 f1 ff       	call   cc4140 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da7d87:	e9 a4 fe ff ff       	jmp    da7c30 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xb70>
  da7d8c:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  da7d91:	0f 29 84 24 40 01 00 	movaps XMMWORD PTR [rsp+0x140],xmm0
  da7d98:	00 
  da7d99:	48 89 d7             	mov    rdi,rdx
  da7d9c:	4c 89 f6             	mov    rsi,r14
  da7d9f:	48 8b 54 24 38       	mov    rdx,QWORD PTR [rsp+0x38]
  da7da4:	48 89 d9             	mov    rcx,rbx
  da7da7:	4c 8d 8c 24 40 01 00 	lea    r9,[rsp+0x140]
  da7dae:	00 
  da7daf:	e8 4c 66 f1 ff       	call   cbe400 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da7db4:	e9 77 fe ff ff       	jmp    da7c30 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xb70>
  da7db9:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  da7dbe:	0f 29 84 24 40 01 00 	movaps XMMWORD PTR [rsp+0x140],xmm0
  da7dc5:	00 
  da7dc6:	48 89 d7             	mov    rdi,rdx
  da7dc9:	4c 89 f6             	mov    rsi,r14
  da7dcc:	48 8b 54 24 38       	mov    rdx,QWORD PTR [rsp+0x38]
  da7dd1:	48 89 d9             	mov    rcx,rbx
  da7dd4:	4c 8d 8c 24 40 01 00 	lea    r9,[rsp+0x140]
  da7ddb:	00 
  da7ddc:	e8 df 8f f1 ff       	call   cc0dc0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da7de1:	e9 4a fe ff ff       	jmp    da7c30 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xb70>
  da7de6:	48 89 d7             	mov    rdi,rdx
  da7de9:	4c 89 f6             	mov    rsi,r14
  da7dec:	48 8b 54 24 38       	mov    rdx,QWORD PTR [rsp+0x38]
  da7df1:	48 89 d9             	mov    rcx,rbx
  da7df4:	e8 47 75 f1 ff       	call   cbf340 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da7df9:	e9 32 fe ff ff       	jmp    da7c30 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xb70>
  da7dfe:	66 90                	xchg   ax,ax
  da7e00:	80 bc 24 28 01 00 00 	cmp    BYTE PTR [rsp+0x128],0x0
  da7e07:	00 
  da7e08:	74 36                	je     da7e40 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xd80>
  da7e0a:	48 8b b4 24 18 01 00 	mov    rsi,QWORD PTR [rsp+0x118]
  da7e11:	00 
  da7e12:	48 85 f6             	test   rsi,rsi
  da7e15:	48 8b 4c 24 38       	mov    rcx,QWORD PTR [rsp+0x38]
  da7e1a:	0f 84 4b 5a 00 00    	je     dad86b <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x67ab>
  da7e20:	48 89 c8             	mov    rax,rcx
  da7e23:	48 09 f0             	or     rax,rsi
  da7e26:	48 c1 e8 20          	shr    rax,0x20
  da7e2a:	74 57                	je     da7e83 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xdc3>
  da7e2c:	48 89 c8             	mov    rax,rcx
  da7e2f:	31 d2                	xor    edx,edx
  da7e31:	48 f7 f6             	div    rsi
  da7e34:	48 85 c9             	test   rcx,rcx
  da7e37:	75 59                	jne    da7e92 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xdd2>
  da7e39:	e9 82 f6 ff ff       	jmp    da74c0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x400>
  da7e3e:	66 90                	xchg   ax,ax
  da7e40:	48 83 7c 24 38 00    	cmp    QWORD PTR [rsp+0x38],0x0
  da7e46:	0f 84 74 f6 ff ff    	je     da74c0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x400>
  da7e4c:	48 8b 84 24 a8 00 00 	mov    rax,QWORD PTR [rsp+0xa8]
  da7e53:	00 
  da7e54:	4c 8b 64 24 38       	mov    r12,QWORD PTR [rsp+0x38]
  da7e59:	49 0f af c4          	imul   rax,r12
  da7e5d:	48 8b 8c 24 d0 00 00 	mov    rcx,QWORD PTR [rsp+0xd0]
  da7e64:	00 
  da7e65:	48 8d 04 c1          	lea    rax,[rcx+rax*8]
  da7e69:	48 89 84 24 78 02 00 	mov    QWORD PTR [rsp+0x278],rax
  da7e70:	00 
  da7e71:	45 31 ff             	xor    r15d,r15d
  da7e74:	4c 8b ac 24 c8 01 00 	mov    r13,QWORD PTR [rsp+0x1c8]
  da7e7b:	00 
  da7e7c:	31 db                	xor    ebx,ebx
  da7e7e:	e9 15 03 00 00       	jmp    da8198 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x10d8>
  da7e83:	89 c8                	mov    eax,ecx
  da7e85:	31 d2                	xor    edx,edx
  da7e87:	f7 f6                	div    esi
  da7e89:	48 85 c9             	test   rcx,rcx
  da7e8c:	0f 84 2e f6 ff ff    	je     da74c0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x400>
  da7e92:	48 8b 8c 24 a8 00 00 	mov    rcx,QWORD PTR [rsp+0xa8]
  da7e99:	00 
  da7e9a:	48 01 c9             	add    rcx,rcx
  da7e9d:	48 0f af c1          	imul   rax,rcx
  da7ea1:	48 0f af 8c 24 18 01 	imul   rcx,QWORD PTR [rsp+0x118]
  da7ea8:	00 00 
  da7eaa:	48 8b 94 24 68 02 00 	mov    rdx,QWORD PTR [rsp+0x268]
  da7eb1:	00 
  da7eb2:	48 8d 04 82          	lea    rax,[rdx+rax*4]
  da7eb6:	48 8b 94 24 70 02 00 	mov    rdx,QWORD PTR [rsp+0x270]
  da7ebd:	00 
  da7ebe:	48 8d 14 8a          	lea    rdx,[rdx+rcx*4]
  da7ec2:	49 83 c6 70          	add    r14,0x70
  da7ec6:	48 8b b4 24 00 01 00 	mov    rsi,QWORD PTR [rsp+0x100]
  da7ecd:	00 
  da7ece:	48 8b bc 24 c8 01 00 	mov    rdi,QWORD PTR [rsp+0x1c8]
  da7ed5:	00 
  da7ed6:	45 31 c0             	xor    r8d,r8d
  da7ed9:	eb 42                	jmp    da7f1d <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xe5d>
  da7edb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  da7ee0:	44 0f 11 06          	movups XMMWORD PTR [rsi],xmm8
  da7ee4:	44 0f 11 4e 10       	movups XMMWORD PTR [rsi+0x10],xmm9
  da7ee9:	0f 11 76 20          	movups XMMWORD PTR [rsi+0x20],xmm6
  da7eed:	0f 11 66 30          	movups XMMWORD PTR [rsi+0x30],xmm4
  da7ef1:	0f 11 7e 40          	movups XMMWORD PTR [rsi+0x40],xmm7
  da7ef5:	0f 11 46 50          	movups XMMWORD PTR [rsi+0x50],xmm0
  da7ef9:	0f 11 6e 60          	movups XMMWORD PTR [rsi+0x60],xmm5
  da7efd:	0f 11 5e 70          	movups XMMWORD PTR [rsi+0x70],xmm3
  da7f01:	48 ff cf             	dec    rdi
  da7f04:	48 03 b4 24 b0 00 00 	add    rsi,QWORD PTR [rsp+0xb0]
  da7f0b:	00 
  da7f0c:	49 83 ee 80          	sub    r14,0xffffffffffffff80
  da7f10:	49 83 c0 04          	add    r8,0x4
  da7f14:	48 85 ff             	test   rdi,rdi
  da7f17:	0f 84 a3 f5 ff ff    	je     da74c0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x400>
  da7f1d:	4d 89 c1             	mov    r9,r8
  da7f20:	48 8b 8c 24 f0 00 00 	mov    rcx,QWORD PTR [rsp+0xf0]
  da7f27:	00 
  da7f28:	49 d3 e9             	shr    r9,cl
  da7f2b:	49 c1 e1 05          	shl    r9,0x5
  da7f2f:	42 0f 10 04 08       	movups xmm0,XMMWORD PTR [rax+r9*1]
  da7f34:	42 0f 10 74 08 10    	movups xmm6,XMMWORD PTR [rax+r9*1+0x10]
  da7f3a:	4c 89 c1             	mov    rcx,r8
  da7f3d:	48 23 4c 24 60       	and    rcx,QWORD PTR [rsp+0x60]
  da7f42:	48 c1 e1 05          	shl    rcx,0x5
  da7f46:	0f 10 24 0a          	movups xmm4,XMMWORD PTR [rdx+rcx*1]
  da7f4a:	0f 10 4c 0a 10       	movups xmm1,XMMWORD PTR [rdx+rcx*1+0x10]
  da7f4f:	0f 10 5c 0a 20       	movups xmm3,XMMWORD PTR [rdx+rcx*1+0x20]
  da7f54:	0f 10 54 0a 30       	movups xmm2,XMMWORD PTR [rdx+rcx*1+0x30]
  da7f59:	0f 28 ee             	movaps xmm5,xmm6
  da7f5c:	0f 59 e9             	mulps  xmm5,xmm1
  da7f5f:	0f 28 f8             	movaps xmm7,xmm0
  da7f62:	0f 59 fc             	mulps  xmm7,xmm4
  da7f65:	0f 5c fd             	subps  xmm7,xmm5
  da7f68:	0f 59 e6             	mulps  xmm4,xmm6
  da7f6b:	0f 59 c8             	mulps  xmm1,xmm0
  da7f6e:	0f 58 cc             	addps  xmm1,xmm4
  da7f71:	45 0f 10 4e 90       	movups xmm9,XMMWORD PTR [r14-0x70]
  da7f76:	45 0f 10 56 a0       	movups xmm10,XMMWORD PTR [r14-0x60]
  da7f7b:	41 0f 10 6e b0       	movups xmm5,XMMWORD PTR [r14-0x50]
  da7f80:	45 0f 10 46 c0       	movups xmm8,XMMWORD PTR [r14-0x40]
  da7f85:	41 0f 28 e1          	movaps xmm4,xmm9
  da7f89:	0f 59 e7             	mulps  xmm4,xmm7
  da7f8c:	41 0f 59 fa          	mulps  xmm7,xmm10
  da7f90:	44 0f 59 d1          	mulps  xmm10,xmm1
  da7f94:	41 0f 5c e2          	subps  xmm4,xmm10
  da7f98:	41 0f 59 c9          	mulps  xmm1,xmm9
  da7f9c:	0f 58 cf             	addps  xmm1,xmm7
  da7f9f:	0f 28 fe             	movaps xmm7,xmm6
  da7fa2:	0f 59 fa             	mulps  xmm7,xmm2
  da7fa5:	44 0f 28 c8          	movaps xmm9,xmm0
  da7fa9:	44 0f 59 cb          	mulps  xmm9,xmm3
  da7fad:	44 0f 5c cf          	subps  xmm9,xmm7
  da7fb1:	0f 59 de             	mulps  xmm3,xmm6
  da7fb4:	0f 59 d0             	mulps  xmm2,xmm0
  da7fb7:	0f 58 d3             	addps  xmm2,xmm3
  da7fba:	0f 28 fd             	movaps xmm7,xmm5
  da7fbd:	41 0f 59 f9          	mulps  xmm7,xmm9
  da7fc1:	45 0f 59 c8          	mulps  xmm9,xmm8
  da7fc5:	44 0f 59 c2          	mulps  xmm8,xmm2
  da7fc9:	41 0f 5c f8          	subps  xmm7,xmm8
  da7fcd:	0f 59 d5             	mulps  xmm2,xmm5
  da7fd0:	41 0f 58 d1          	addps  xmm2,xmm9
  da7fd4:	45 0f 10 46 d0       	movups xmm8,XMMWORD PTR [r14-0x30]
  da7fd9:	45 0f 10 4e e0       	movups xmm9,XMMWORD PTR [r14-0x20]
  da7fde:	0f 10 6c 0a 40       	movups xmm5,XMMWORD PTR [rdx+rcx*1+0x40]
  da7fe3:	0f 10 5c 0a 50       	movups xmm3,XMMWORD PTR [rdx+rcx*1+0x50]
  da7fe8:	44 0f 28 d6          	movaps xmm10,xmm6
  da7fec:	44 0f 59 d3          	mulps  xmm10,xmm3
  da7ff0:	44 0f 28 d8          	movaps xmm11,xmm0
  da7ff4:	44 0f 59 dd          	mulps  xmm11,xmm5
  da7ff8:	45 0f 5c da          	subps  xmm11,xmm10
  da7ffc:	0f 59 ee             	mulps  xmm5,xmm6
  da7fff:	0f 59 d8             	mulps  xmm3,xmm0
  da8002:	0f 58 dd             	addps  xmm3,xmm5
  da8005:	41 0f 28 e8          	movaps xmm5,xmm8
  da8009:	41 0f 59 eb          	mulps  xmm5,xmm11
  da800d:	45 0f 59 d9          	mulps  xmm11,xmm9
  da8011:	44 0f 59 cb          	mulps  xmm9,xmm3
  da8015:	41 0f 5c e9          	subps  xmm5,xmm9
  da8019:	41 0f 59 d8          	mulps  xmm3,xmm8
  da801d:	41 0f 58 db          	addps  xmm3,xmm11
  da8021:	45 0f 10 46 f0       	movups xmm8,XMMWORD PTR [r14-0x10]
  da8026:	45 0f 10 0e          	movups xmm9,XMMWORD PTR [r14]
  da802a:	44 0f 10 54 0a 60    	movups xmm10,XMMWORD PTR [rdx+rcx*1+0x60]
  da8030:	44 0f 10 5c 0a 70    	movups xmm11,XMMWORD PTR [rdx+rcx*1+0x70]
  da8036:	44 0f 28 e6          	movaps xmm12,xmm6
  da803a:	45 0f 59 e3          	mulps  xmm12,xmm11
  da803e:	44 0f 28 e8          	movaps xmm13,xmm0
  da8042:	45 0f 59 ea          	mulps  xmm13,xmm10
  da8046:	45 0f 5c ec          	subps  xmm13,xmm12
  da804a:	41 0f 59 f2          	mulps  xmm6,xmm10
  da804e:	41 0f 59 c3          	mulps  xmm0,xmm11
  da8052:	0f 58 c6             	addps  xmm0,xmm6
  da8055:	45 0f 28 d0          	movaps xmm10,xmm8
  da8059:	45 0f 59 d5          	mulps  xmm10,xmm13
  da805d:	45 0f 59 e9          	mulps  xmm13,xmm9
  da8061:	44 0f 59 c8          	mulps  xmm9,xmm0
  da8065:	45 0f 5c d1          	subps  xmm10,xmm9
  da8069:	41 0f 59 c0          	mulps  xmm0,xmm8
  da806d:	41 0f 58 c5          	addps  xmm0,xmm13
  da8071:	44 0f 28 cc          	movaps xmm9,xmm4
  da8075:	44 0f 14 cf          	unpcklps xmm9,xmm7
  da8079:	0f 28 f5             	movaps xmm6,xmm5
  da807c:	41 0f 14 f2          	unpcklps xmm6,xmm10
  da8080:	45 0f 28 c1          	movaps xmm8,xmm9
  da8084:	44 0f 16 c6          	movlhps xmm8,xmm6
  da8088:	41 0f 12 f1          	movhlps xmm6,xmm9
  da808c:	0f 15 e7             	unpckhps xmm4,xmm7
  da808f:	41 0f 15 ea          	unpckhps xmm5,xmm10
  da8093:	0f 28 fc             	movaps xmm7,xmm4
  da8096:	0f 16 fd             	movlhps xmm7,xmm5
  da8099:	0f 12 ec             	movhlps xmm5,xmm4
  da809c:	44 0f 28 d1          	movaps xmm10,xmm1
  da80a0:	44 0f 14 d2          	unpcklps xmm10,xmm2
  da80a4:	0f 28 e3             	movaps xmm4,xmm3
  da80a7:	0f 14 e0             	unpcklps xmm4,xmm0
  da80aa:	45 0f 28 ca          	movaps xmm9,xmm10
  da80ae:	44 0f 16 cc          	movlhps xmm9,xmm4
  da80b2:	41 0f 12 e2          	movhlps xmm4,xmm10
  da80b6:	0f 15 ca             	unpckhps xmm1,xmm2
  da80b9:	0f 15 d8             	unpckhps xmm3,xmm0
  da80bc:	0f 28 c1             	movaps xmm0,xmm1
  da80bf:	0f 16 c3             	movlhps xmm0,xmm3
  da80c2:	0f 12 d9             	movhlps xmm3,xmm1
  da80c5:	80 7c 24 58 00       	cmp    BYTE PTR [rsp+0x58],0x0
  da80ca:	0f 84 10 fe ff ff    	je     da7ee0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xe20>
  da80d0:	48 8d 4e 10          	lea    rcx,[rsi+0x10]
  da80d4:	4c 8d 4e 20          	lea    r9,[rsi+0x20]
  da80d8:	4c 8d 56 30          	lea    r10,[rsi+0x30]
  da80dc:	4c 8d 5e 40          	lea    r11,[rsi+0x40]
  da80e0:	48 8d 5e 50          	lea    rbx,[rsi+0x50]
  da80e4:	4c 8d 7e 60          	lea    r15,[rsi+0x60]
  da80e8:	4c 8d 66 70          	lea    r12,[rsi+0x70]
  da80ec:	44 0f 2b 06          	movntps XMMWORD PTR [rsi],xmm8
  da80f0:	44 0f 2b 09          	movntps XMMWORD PTR [rcx],xmm9
  da80f4:	41 0f 2b 31          	movntps XMMWORD PTR [r9],xmm6
  da80f8:	41 0f 2b 22          	movntps XMMWORD PTR [r10],xmm4
  da80fc:	41 0f 2b 3b          	movntps XMMWORD PTR [r11],xmm7
  da8100:	0f 2b 03             	movntps XMMWORD PTR [rbx],xmm0
  da8103:	41 0f 2b 2f          	movntps XMMWORD PTR [r15],xmm5
  da8107:	41 0f 2b 1c 24       	movntps XMMWORD PTR [r12],xmm3
  da810c:	e9 f0 fd ff ff       	jmp    da7f01 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xe41>
  da8111:	48 8b 84 24 60 02 00 	mov    rax,QWORD PTR [rsp+0x260]
  da8118:	00 
  da8119:	48 01 d8             	add    rax,rbx
  da811c:	48 8b 8c 24 78 02 00 	mov    rcx,QWORD PTR [rsp+0x278]
  da8123:	00 
  da8124:	48 8d 3c c1          	lea    rdi,[rcx+rax*8]
  da8128:	48 8d 84 24 60 01 00 	lea    rax,[rsp+0x160]
  da812f:	00 
  da8130:	0f 57 c0             	xorps  xmm0,xmm0
  da8133:	0f 29 40 50          	movaps XMMWORD PTR [rax+0x50],xmm0
  da8137:	0f 29 40 40          	movaps XMMWORD PTR [rax+0x40],xmm0
  da813b:	0f 29 40 30          	movaps XMMWORD PTR [rax+0x30],xmm0
  da813f:	0f 29 40 20          	movaps XMMWORD PTR [rax+0x20],xmm0
  da8143:	0f 29 40 10          	movaps XMMWORD PTR [rax+0x10],xmm0
  da8147:	0f 29 00             	movaps XMMWORD PTR [rax],xmm0
  da814a:	45 0f 15 c8          	unpckhps xmm9,xmm8
  da814e:	45 0f 15 da          	unpckhps xmm11,xmm10
  da8152:	44 0f 29 8c 24 40 01 	movaps XMMWORD PTR [rsp+0x140],xmm9
  da8159:	00 00 
  da815b:	44 0f 29 9c 24 50 01 	movaps XMMWORD PTR [rsp+0x150],xmm11
  da8162:	00 00 
  da8164:	48 8d b4 24 40 01 00 	lea    rsi,[rsp+0x140]
  da816b:	00 
  da816c:	ff 15 2e 9b 4a 00    	call   QWORD PTR [rip+0x4a9b2e]        # 1251ca0 <memcpy@GLIBC_2.14>
  da8172:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  da8179:	1f 84 00 00 00 00 00 
  da8180:	49 ff cd             	dec    r13
  da8183:	49 83 c4 fc          	add    r12,0xfffffffffffffffc
  da8187:	49 83 c7 20          	add    r15,0x20
  da818b:	48 83 c3 04          	add    rbx,0x4
  da818f:	4d 85 ed             	test   r13,r13
  da8192:	0f 84 28 f3 ff ff    	je     da74c0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x400>
  da8198:	48 8b 8c 24 a0 00 00 	mov    rcx,QWORD PTR [rsp+0xa0]
  da819f:	00 
  da81a0:	48 8d 04 19          	lea    rax,[rcx+rbx*1]
  da81a4:	49 83 fc 04          	cmp    r12,0x4
  da81a8:	ba 04 00 00 00       	mov    edx,0x4
  da81ad:	49 0f 42 d4          	cmovb  rdx,r12
  da81b1:	0f 57 c0             	xorps  xmm0,xmm0
  da81b4:	48 85 c0             	test   rax,rax
  da81b7:	74 77                	je     da8230 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1170>
  da81b9:	47 0f 10 04 be       	movups xmm8,XMMWORD PTR [r14+r15*4]
  da81be:	43 0f 10 4c be 10    	movups xmm1,XMMWORD PTR [r14+r15*4+0x10]
  da81c4:	48 8b b4 24 c8 00 00 	mov    rsi,QWORD PTR [rsp+0xc8]
  da81cb:	00 
  da81cc:	42 0f 10 54 be 90    	movups xmm2,XMMWORD PTR [rsi+r15*4-0x70]
  da81d2:	42 0f 10 5c be a0    	movups xmm3,XMMWORD PTR [rsi+r15*4-0x60]
  da81d8:	0f 28 e1             	movaps xmm4,xmm1
  da81db:	0f 59 e3             	mulps  xmm4,xmm3
  da81de:	45 0f 28 c8          	movaps xmm9,xmm8
  da81e2:	44 0f 59 ca          	mulps  xmm9,xmm2
  da81e6:	44 0f 5c cc          	subps  xmm9,xmm4
  da81ea:	0f 59 ca             	mulps  xmm1,xmm2
  da81ed:	44 0f 59 c3          	mulps  xmm8,xmm3
  da81f1:	44 0f 58 c1          	addps  xmm8,xmm1
  da81f5:	49 83 fc 02          	cmp    r12,0x2
  da81f9:	73 75                	jae    da8270 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x11b0>
  da81fb:	0f 57 c9             	xorps  xmm1,xmm1
  da81fe:	45 0f 57 d2          	xorps  xmm10,xmm10
  da8202:	0f 57 db             	xorps  xmm3,xmm3
  da8205:	0f 57 d2             	xorps  xmm2,xmm2
  da8208:	45 0f 57 db          	xorps  xmm11,xmm11
  da820c:	48 8b 84 24 a8 00 00 	mov    rax,QWORD PTR [rsp+0xa8]
  da8213:	00 
  da8214:	48 39 44 24 30       	cmp    QWORD PTR [rsp+0x30],rax
  da8219:	0f 84 61 ff ff ff    	je     da8180 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x10c0>
  da821f:	e9 4c 01 00 00       	jmp    da8370 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x12b0>
  da8224:	66 66 66 2e 0f 1f 84 	data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  da822b:	00 00 00 00 00 
  da8230:	0f 57 c9             	xorps  xmm1,xmm1
  da8233:	45 0f 57 d2          	xorps  xmm10,xmm10
  da8237:	45 0f 57 c0          	xorps  xmm8,xmm8
  da823b:	0f 57 db             	xorps  xmm3,xmm3
  da823e:	0f 57 d2             	xorps  xmm2,xmm2
  da8241:	45 0f 57 db          	xorps  xmm11,xmm11
  da8245:	45 0f 57 c9          	xorps  xmm9,xmm9
  da8249:	48 8b 84 24 a8 00 00 	mov    rax,QWORD PTR [rsp+0xa8]
  da8250:	00 
  da8251:	48 39 44 24 30       	cmp    QWORD PTR [rsp+0x30],rax
  da8256:	0f 84 24 ff ff ff    	je     da8180 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x10c0>
  da825c:	e9 0f 01 00 00       	jmp    da8370 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x12b0>
  da8261:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  da8268:	0f 1f 84 00 00 00 00 
  da826f:	00 
  da8270:	48 8d 04 19          	lea    rax,[rcx+rbx*1]
  da8274:	48 83 c0 02          	add    rax,0x2
  da8278:	43 0f 10 4c be 20    	movups xmm1,XMMWORD PTR [r14+r15*4+0x20]
  da827e:	43 0f 10 5c be 30    	movups xmm3,XMMWORD PTR [r14+r15*4+0x30]
  da8284:	42 0f 10 64 be b0    	movups xmm4,XMMWORD PTR [rsi+r15*4-0x50]
  da828a:	42 0f 10 6c be c0    	movups xmm5,XMMWORD PTR [rsi+r15*4-0x40]
  da8290:	0f 28 f3             	movaps xmm6,xmm3
  da8293:	0f 59 f5             	mulps  xmm6,xmm5
  da8296:	0f 28 d1             	movaps xmm2,xmm1
  da8299:	0f 59 d4             	mulps  xmm2,xmm4
  da829c:	0f 5c d6             	subps  xmm2,xmm6
  da829f:	0f 59 dc             	mulps  xmm3,xmm4
  da82a2:	0f 59 cd             	mulps  xmm1,xmm5
  da82a5:	0f 58 cb             	addps  xmm1,xmm3
  da82a8:	48 85 c0             	test   rax,rax
  da82ab:	0f 84 86 00 00 00    	je     da8337 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1277>
  da82b1:	48 8d 04 19          	lea    rax,[rcx+rbx*1]
  da82b5:	48 83 c0 03          	add    rax,0x3
  da82b9:	47 0f 10 54 be 40    	movups xmm10,XMMWORD PTR [r14+r15*4+0x40]
  da82bf:	43 0f 10 5c be 50    	movups xmm3,XMMWORD PTR [r14+r15*4+0x50]
  da82c5:	42 0f 10 64 be d0    	movups xmm4,XMMWORD PTR [rsi+r15*4-0x30]
  da82cb:	42 0f 10 6c be e0    	movups xmm5,XMMWORD PTR [rsi+r15*4-0x20]
  da82d1:	0f 28 f3             	movaps xmm6,xmm3
  da82d4:	0f 59 f5             	mulps  xmm6,xmm5
  da82d7:	45 0f 28 da          	movaps xmm11,xmm10
  da82db:	44 0f 59 dc          	mulps  xmm11,xmm4
  da82df:	44 0f 5c de          	subps  xmm11,xmm6
  da82e3:	0f 59 dc             	mulps  xmm3,xmm4
  da82e6:	44 0f 59 d5          	mulps  xmm10,xmm5
  da82ea:	44 0f 58 d3          	addps  xmm10,xmm3
  da82ee:	48 85 c0             	test   rax,rax
  da82f1:	74 64                	je     da8357 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1297>
  da82f3:	43 0f 10 44 be 60    	movups xmm0,XMMWORD PTR [r14+r15*4+0x60]
  da82f9:	43 0f 10 64 be 70    	movups xmm4,XMMWORD PTR [r14+r15*4+0x70]
  da82ff:	42 0f 10 6c be f0    	movups xmm5,XMMWORD PTR [rsi+r15*4-0x10]
  da8305:	42 0f 10 34 be       	movups xmm6,XMMWORD PTR [rsi+r15*4]
  da830a:	0f 28 fc             	movaps xmm7,xmm4
  da830d:	0f 59 fe             	mulps  xmm7,xmm6
  da8310:	0f 28 d8             	movaps xmm3,xmm0
  da8313:	0f 59 dd             	mulps  xmm3,xmm5
  da8316:	0f 5c df             	subps  xmm3,xmm7
  da8319:	0f 59 e5             	mulps  xmm4,xmm5
  da831c:	0f 59 c6             	mulps  xmm0,xmm6
  da831f:	0f 58 c4             	addps  xmm0,xmm4
  da8322:	48 8b 84 24 a8 00 00 	mov    rax,QWORD PTR [rsp+0xa8]
  da8329:	00 
  da832a:	48 39 44 24 30       	cmp    QWORD PTR [rsp+0x30],rax
  da832f:	0f 84 4b fe ff ff    	je     da8180 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x10c0>
  da8335:	eb 39                	jmp    da8370 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x12b0>
  da8337:	45 0f 57 d2          	xorps  xmm10,xmm10
  da833b:	0f 57 db             	xorps  xmm3,xmm3
  da833e:	45 0f 57 db          	xorps  xmm11,xmm11
  da8342:	48 8b 84 24 a8 00 00 	mov    rax,QWORD PTR [rsp+0xa8]
  da8349:	00 
  da834a:	48 39 44 24 30       	cmp    QWORD PTR [rsp+0x30],rax
  da834f:	0f 84 2b fe ff ff    	je     da8180 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x10c0>
  da8355:	eb 19                	jmp    da8370 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x12b0>
  da8357:	0f 57 db             	xorps  xmm3,xmm3
  da835a:	48 8b 84 24 a8 00 00 	mov    rax,QWORD PTR [rsp+0xa8]
  da8361:	00 
  da8362:	48 39 44 24 30       	cmp    QWORD PTR [rsp+0x30],rax
  da8367:	0f 84 13 fe ff ff    	je     da8180 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x10c0>
  da836d:	0f 1f 00             	nop    DWORD PTR [rax]
  da8370:	41 0f 28 e1          	movaps xmm4,xmm9
  da8374:	0f 14 e2             	unpcklps xmm4,xmm2
  da8377:	41 0f 28 eb          	movaps xmm5,xmm11
  da837b:	0f 14 eb             	unpcklps xmm5,xmm3
  da837e:	44 0f 15 ca          	unpckhps xmm9,xmm2
  da8382:	44 0f 15 db          	unpckhps xmm11,xmm3
  da8386:	41 0f 28 f0          	movaps xmm6,xmm8
  da838a:	0f 14 f1             	unpcklps xmm6,xmm1
  da838d:	41 0f 28 da          	movaps xmm3,xmm10
  da8391:	0f 14 d8             	unpcklps xmm3,xmm0
  da8394:	44 0f 15 c1          	unpckhps xmm8,xmm1
  da8398:	44 0f 15 d0          	unpckhps xmm10,xmm0
  da839c:	48 c1 e2 03          	shl    rdx,0x3
  da83a0:	0f 28 c4             	movaps xmm0,xmm4
  da83a3:	0f 14 c6             	unpcklps xmm0,xmm6
  da83a6:	0f 28 cd             	movaps xmm1,xmm5
  da83a9:	0f 14 cb             	unpcklps xmm1,xmm3
  da83ac:	49 83 fc 03          	cmp    r12,0x3
  da83b0:	0f 86 9a 00 00 00    	jbe    da8450 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1390>
  da83b6:	48 8b 84 24 98 00 00 	mov    rax,QWORD PTR [rsp+0x98]
  da83bd:	00 
  da83be:	0f 11 04 d8          	movups XMMWORD PTR [rax+rbx*8],xmm0
  da83c2:	0f 11 4c d8 10       	movups XMMWORD PTR [rax+rbx*8+0x10],xmm1
  da83c7:	48 83 7c 24 70 02    	cmp    QWORD PTR [rsp+0x70],0x2
  da83cd:	0f 82 ad fd ff ff    	jb     da8180 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x10c0>
  da83d3:	0f 15 e6             	unpckhps xmm4,xmm6
  da83d6:	0f 15 eb             	unpckhps xmm5,xmm3
  da83d9:	48 8b 84 24 e8 00 00 	mov    rax,QWORD PTR [rsp+0xe8]
  da83e0:	00 
  da83e1:	0f 11 24 d8          	movups XMMWORD PTR [rax+rbx*8],xmm4
  da83e5:	0f 11 6c d8 10       	movups XMMWORD PTR [rax+rbx*8+0x10],xmm5
  da83ea:	0f 84 90 fd ff ff    	je     da8180 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x10c0>
  da83f0:	41 0f 28 c1          	movaps xmm0,xmm9
  da83f4:	41 0f 14 c0          	unpcklps xmm0,xmm8
  da83f8:	41 0f 28 cb          	movaps xmm1,xmm11
  da83fc:	41 0f 14 ca          	unpcklps xmm1,xmm10
  da8400:	48 8b 84 24 d8 00 00 	mov    rax,QWORD PTR [rsp+0xd8]
  da8407:	00 
  da8408:	0f 11 04 d8          	movups XMMWORD PTR [rax+rbx*8],xmm0
  da840c:	0f 11 4c d8 10       	movups XMMWORD PTR [rax+rbx*8+0x10],xmm1
  da8411:	48 83 7c 24 70 03    	cmp    QWORD PTR [rsp+0x70],0x3
  da8417:	0f 84 63 fd ff ff    	je     da8180 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x10c0>
  da841d:	49 83 fc 03          	cmp    r12,0x3
  da8421:	0f 86 ea fc ff ff    	jbe    da8111 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1051>
  da8427:	45 0f 15 c8          	unpckhps xmm9,xmm8
  da842b:	45 0f 15 da          	unpckhps xmm11,xmm10
  da842f:	48 8b 84 24 08 01 00 	mov    rax,QWORD PTR [rsp+0x108]
  da8436:	00 
  da8437:	44 0f 11 0c d8       	movups XMMWORD PTR [rax+rbx*8],xmm9
  da843c:	44 0f 11 5c d8 10    	movups XMMWORD PTR [rax+rbx*8+0x10],xmm11
  da8442:	e9 39 fd ff ff       	jmp    da8180 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x10c0>
  da8447:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  da844e:	00 00 
  da8450:	48 8b 84 24 98 00 00 	mov    rax,QWORD PTR [rsp+0x98]
  da8457:	00 
  da8458:	48 8d 3c d8          	lea    rdi,[rax+rbx*8]
  da845c:	48 8d 84 24 60 01 00 	lea    rax,[rsp+0x160]
  da8463:	00 
  da8464:	0f 57 d2             	xorps  xmm2,xmm2
  da8467:	0f 29 50 50          	movaps XMMWORD PTR [rax+0x50],xmm2
  da846b:	0f 29 50 40          	movaps XMMWORD PTR [rax+0x40],xmm2
  da846f:	0f 29 50 30          	movaps XMMWORD PTR [rax+0x30],xmm2
  da8473:	0f 29 50 20          	movaps XMMWORD PTR [rax+0x20],xmm2
  da8477:	0f 29 50 10          	movaps XMMWORD PTR [rax+0x10],xmm2
  da847b:	0f 29 10             	movaps XMMWORD PTR [rax],xmm2
  da847e:	0f 29 84 24 40 01 00 	movaps XMMWORD PTR [rsp+0x140],xmm0
  da8485:	00 
  da8486:	0f 29 8c 24 50 01 00 	movaps XMMWORD PTR [rsp+0x150],xmm1
  da848d:	00 
  da848e:	48 8d b4 24 40 01 00 	lea    rsi,[rsp+0x140]
  da8495:	00 
  da8496:	48 89 54 24 68       	mov    QWORD PTR [rsp+0x68],rdx
  da849b:	44 0f 29 84 24 30 02 	movaps XMMWORD PTR [rsp+0x230],xmm8
  da84a2:	00 00 
  da84a4:	44 0f 29 8c 24 00 02 	movaps XMMWORD PTR [rsp+0x200],xmm9
  da84ab:	00 00 
  da84ad:	44 0f 29 94 24 f0 01 	movaps XMMWORD PTR [rsp+0x1f0],xmm10
  da84b4:	00 00 
  da84b6:	44 0f 29 9c 24 e0 01 	movaps XMMWORD PTR [rsp+0x1e0],xmm11
  da84bd:	00 00 
  da84bf:	0f 29 a4 24 30 01 00 	movaps XMMWORD PTR [rsp+0x130],xmm4
  da84c6:	00 
  da84c7:	0f 29 ac 24 20 02 00 	movaps XMMWORD PTR [rsp+0x220],xmm5
  da84ce:	00 
  da84cf:	0f 29 9c 24 10 02 00 	movaps XMMWORD PTR [rsp+0x210],xmm3
  da84d6:	00 
  da84d7:	0f 29 b4 24 50 02 00 	movaps XMMWORD PTR [rsp+0x250],xmm6
  da84de:	00 
  da84df:	ff 15 bb 97 4a 00    	call   QWORD PTR [rip+0x4a97bb]        # 1251ca0 <memcpy@GLIBC_2.14>
  da84e5:	0f 28 a4 24 50 02 00 	movaps xmm4,XMMWORD PTR [rsp+0x250]
  da84ec:	00 
  da84ed:	0f 28 9c 24 10 02 00 	movaps xmm3,XMMWORD PTR [rsp+0x210]
  da84f4:	00 
  da84f5:	0f 28 94 24 20 02 00 	movaps xmm2,XMMWORD PTR [rsp+0x220]
  da84fc:	00 
  da84fd:	0f 28 8c 24 30 01 00 	movaps xmm1,XMMWORD PTR [rsp+0x130]
  da8504:	00 
  da8505:	48 8b 54 24 68       	mov    rdx,QWORD PTR [rsp+0x68]
  da850a:	48 83 7c 24 70 02    	cmp    QWORD PTR [rsp+0x70],0x2
  da8510:	0f 82 6a fc ff ff    	jb     da8180 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x10c0>
  da8516:	48 8b 84 24 e8 00 00 	mov    rax,QWORD PTR [rsp+0xe8]
  da851d:	00 
  da851e:	48 8d 3c d8          	lea    rdi,[rax+rbx*8]
  da8522:	48 8d 84 24 60 01 00 	lea    rax,[rsp+0x160]
  da8529:	00 
  da852a:	0f 57 c0             	xorps  xmm0,xmm0
  da852d:	0f 29 40 50          	movaps XMMWORD PTR [rax+0x50],xmm0
  da8531:	0f 29 40 40          	movaps XMMWORD PTR [rax+0x40],xmm0
  da8535:	0f 29 40 30          	movaps XMMWORD PTR [rax+0x30],xmm0
  da8539:	0f 29 40 20          	movaps XMMWORD PTR [rax+0x20],xmm0
  da853d:	0f 29 40 10          	movaps XMMWORD PTR [rax+0x10],xmm0
  da8541:	0f 29 00             	movaps XMMWORD PTR [rax],xmm0
  da8544:	0f 15 cc             	unpckhps xmm1,xmm4
  da8547:	0f 15 d3             	unpckhps xmm2,xmm3
  da854a:	0f 29 8c 24 40 01 00 	movaps XMMWORD PTR [rsp+0x140],xmm1
  da8551:	00 
  da8552:	0f 29 94 24 50 01 00 	movaps XMMWORD PTR [rsp+0x150],xmm2
  da8559:	00 
  da855a:	48 8d b4 24 40 01 00 	lea    rsi,[rsp+0x140]
  da8561:	00 
  da8562:	ff 15 38 97 4a 00    	call   QWORD PTR [rip+0x4a9738]        # 1251ca0 <memcpy@GLIBC_2.14>
  da8568:	0f 28 a4 24 e0 01 00 	movaps xmm4,XMMWORD PTR [rsp+0x1e0]
  da856f:	00 
  da8570:	0f 28 9c 24 f0 01 00 	movaps xmm3,XMMWORD PTR [rsp+0x1f0]
  da8577:	00 
  da8578:	0f 28 94 24 00 02 00 	movaps xmm2,XMMWORD PTR [rsp+0x200]
  da857f:	00 
  da8580:	0f 28 8c 24 30 02 00 	movaps xmm1,XMMWORD PTR [rsp+0x230]
  da8587:	00 
  da8588:	48 8b 54 24 68       	mov    rdx,QWORD PTR [rsp+0x68]
  da858d:	48 83 7c 24 70 02    	cmp    QWORD PTR [rsp+0x70],0x2
  da8593:	0f 84 e7 fb ff ff    	je     da8180 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x10c0>
  da8599:	48 8b 84 24 d8 00 00 	mov    rax,QWORD PTR [rsp+0xd8]
  da85a0:	00 
  da85a1:	48 8d 3c d8          	lea    rdi,[rax+rbx*8]
  da85a5:	48 8d 84 24 60 01 00 	lea    rax,[rsp+0x160]
  da85ac:	00 
  da85ad:	0f 57 c0             	xorps  xmm0,xmm0
  da85b0:	0f 29 40 50          	movaps XMMWORD PTR [rax+0x50],xmm0
  da85b4:	0f 29 40 40          	movaps XMMWORD PTR [rax+0x40],xmm0
  da85b8:	0f 29 40 30          	movaps XMMWORD PTR [rax+0x30],xmm0
  da85bc:	0f 29 40 20          	movaps XMMWORD PTR [rax+0x20],xmm0
  da85c0:	0f 29 40 10          	movaps XMMWORD PTR [rax+0x10],xmm0
  da85c4:	0f 29 00             	movaps XMMWORD PTR [rax],xmm0
  da85c7:	0f 28 c2             	movaps xmm0,xmm2
  da85ca:	0f 14 c1             	unpcklps xmm0,xmm1
  da85cd:	0f 28 cc             	movaps xmm1,xmm4
  da85d0:	0f 14 cb             	unpcklps xmm1,xmm3
  da85d3:	0f 29 84 24 40 01 00 	movaps XMMWORD PTR [rsp+0x140],xmm0
  da85da:	00 
  da85db:	0f 29 8c 24 50 01 00 	movaps XMMWORD PTR [rsp+0x150],xmm1
  da85e2:	00 
  da85e3:	48 8d b4 24 40 01 00 	lea    rsi,[rsp+0x140]
  da85ea:	00 
  da85eb:	ff 15 af 96 4a 00    	call   QWORD PTR [rip+0x4a96af]        # 1251ca0 <memcpy@GLIBC_2.14>
  da85f1:	44 0f 28 9c 24 e0 01 	movaps xmm11,XMMWORD PTR [rsp+0x1e0]
  da85f8:	00 00 
  da85fa:	44 0f 28 94 24 f0 01 	movaps xmm10,XMMWORD PTR [rsp+0x1f0]
  da8601:	00 00 
  da8603:	44 0f 28 8c 24 00 02 	movaps xmm9,XMMWORD PTR [rsp+0x200]
  da860a:	00 00 
  da860c:	44 0f 28 84 24 30 02 	movaps xmm8,XMMWORD PTR [rsp+0x230]
  da8613:	00 00 
  da8615:	48 8b 54 24 68       	mov    rdx,QWORD PTR [rsp+0x68]
  da861a:	48 83 7c 24 70 03    	cmp    QWORD PTR [rsp+0x70],0x3
  da8620:	0f 84 5a fb ff ff    	je     da8180 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x10c0>
  da8626:	48 8b 84 24 08 01 00 	mov    rax,QWORD PTR [rsp+0x108]
  da862d:	00 
  da862e:	4a 8d 3c 38          	lea    rdi,[rax+r15*1]
  da8632:	e9 f1 fa ff ff       	jmp    da8128 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1068>
  da8637:	4c 8b 67 58          	mov    r12,QWORD PTR [rdi+0x58]
  da863b:	48 8b 4f 10          	mov    rcx,QWORD PTR [rdi+0x10]
  da863f:	48 8b 5f 20          	mov    rbx,QWORD PTR [rdi+0x20]
  da8643:	48 8b 77 60          	mov    rsi,QWORD PTR [rdi+0x60]
  da8647:	48 8b 47 28          	mov    rax,QWORD PTR [rdi+0x28]
  da864b:	48 89 84 24 80 00 00 	mov    QWORD PTR [rsp+0x80],rax
  da8652:	00 
  da8653:	48 8b 47 30          	mov    rax,QWORD PTR [rdi+0x30]
  da8657:	48 8b 57 40          	mov    rdx,QWORD PTR [rdi+0x40]
  da865b:	48 89 4c 24 78       	mov    QWORD PTR [rsp+0x78],rcx
  da8660:	48 01 ca             	add    rdx,rcx
  da8663:	48 89 94 24 70 02 00 	mov    QWORD PTR [rsp+0x270],rdx
  da866a:	00 
  da866b:	48 8b 4f 78          	mov    rcx,QWORD PTR [rdi+0x78]
  da866f:	48 8b 94 24 d0 00 00 	mov    rdx,QWORD PTR [rsp+0xd0]
  da8676:	00 
  da8677:	4c 8d 34 ca          	lea    r14,[rdx+rcx*8]
  da867b:	48 8b 8f 80 00 00 00 	mov    rcx,QWORD PTR [rdi+0x80]
  da8682:	49 8d 0c ce          	lea    rcx,[r14+rcx*8]
  da8686:	48 89 8c 24 e0 00 00 	mov    QWORD PTR [rsp+0xe0],rcx
  da868d:	00 
  da868e:	f2 0f 10 05 3a c2 2c 	movsd  xmm0,QWORD PTR [rip+0xffffffffff2cc23a]        # 748d0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1d80>
  da8695:	ff 
  da8696:	f2 0f 5a c0          	cvtsd2ss xmm0,xmm0
  da869a:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  da869e:	0f 29 44 24 40       	movaps XMMWORD PTR [rsp+0x40],xmm0
  da86a3:	0f b6 8f 98 00 00 00 	movzx  ecx,BYTE PTR [rdi+0x98]
  da86aa:	0f b6 97 99 00 00 00 	movzx  edx,BYTE PTR [rdi+0x99]
  da86b1:	88 8c 24 28 01 00 00 	mov    BYTE PTR [rsp+0x128],cl
  da86b8:	20 ca                	and    dl,cl
  da86ba:	88 54 24 58          	mov    BYTE PTR [rsp+0x58],dl
  da86be:	48 89 74 24 30       	mov    QWORD PTR [rsp+0x30],rsi
  da86c3:	48 85 f6             	test   rsi,rsi
  da86c6:	4c 89 64 24 38       	mov    QWORD PTR [rsp+0x38],r12
  da86cb:	4c 89 b4 24 90 00 00 	mov    QWORD PTR [rsp+0x90],r14
  da86d2:	00 
  da86d3:	0f 84 9e 12 00 00    	je     da9977 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x28b7>
  da86d9:	48 8b 74 24 30       	mov    rsi,QWORD PTR [rsp+0x30]
  da86de:	49 89 f1             	mov    r9,rsi
  da86e1:	49 c1 e9 02          	shr    r9,0x2
  da86e5:	89 f1                	mov    ecx,esi
  da86e7:	83 e1 03             	and    ecx,0x3
  da86ea:	48 83 f9 01          	cmp    rcx,0x1
  da86ee:	49 83 d9 ff          	sbb    r9,0xffffffffffffffff
  da86f2:	48 8b 54 24 78       	mov    rdx,QWORD PTR [rsp+0x78]
  da86f7:	48 8d 0c 02          	lea    rcx,[rdx+rax*1]
  da86fb:	48 89 8c 24 68 02 00 	mov    QWORD PTR [rsp+0x268],rcx
  da8702:	00 
  da8703:	4d 89 e0             	mov    r8,r12
  da8706:	49 c1 e8 02          	shr    r8,0x2
  da870a:	44 89 e1             	mov    ecx,r12d
  da870d:	83 e1 03             	and    ecx,0x3
  da8710:	48 83 f9 01          	cmp    rcx,0x1
  da8714:	49 83 d8 ff          	sbb    r8,0xffffffffffffffff
  da8718:	4c 89 84 24 c8 01 00 	mov    QWORD PTR [rsp+0x1c8],r8
  da871f:	00 
  da8720:	48 8b 4f 70          	mov    rcx,QWORD PTR [rdi+0x70]
  da8724:	f3 48 0f bc f9       	tzcnt  rdi,rcx
  da8729:	48 89 bc 24 f0 00 00 	mov    QWORD PTR [rsp+0xf0],rdi
  da8730:	00 
  da8731:	48 bf ff ff ff ff ff 	movabs rdi,0x7ffffffffffffff
  da8738:	ff ff 07 
  da873b:	48 89 8c 24 18 01 00 	mov    QWORD PTR [rsp+0x118],rcx
  da8742:	00 
  da8743:	48 01 cf             	add    rdi,rcx
  da8746:	48 89 7c 24 60       	mov    QWORD PTR [rsp+0x60],rdi
  da874b:	4c 89 e7             	mov    rdi,r12
  da874e:	48 c1 e7 04          	shl    rdi,0x4
  da8752:	4f 8d 04 64          	lea    r8,[r12+r12*2]
  da8756:	4c 89 e1             	mov    rcx,r12
  da8759:	48 f7 d9             	neg    rcx
  da875c:	48 89 8c 24 a0 00 00 	mov    QWORD PTR [rsp+0xa0],rcx
  da8763:	00 
  da8764:	4c 89 e1             	mov    rcx,r12
  da8767:	48 c1 e1 05          	shl    rcx,0x5
  da876b:	48 89 8c 24 d0 01 00 	mov    QWORD PTR [rsp+0x1d0],rcx
  da8772:	00 
  da8773:	48 8b 8c 24 d0 00 00 	mov    rcx,QWORD PTR [rsp+0xd0]
  da877a:	00 
  da877b:	48 01 cf             	add    rdi,rcx
  da877e:	48 89 bc 24 d8 00 00 	mov    QWORD PTR [rsp+0xd8],rdi
  da8785:	00 
  da8786:	48 8d 3c 10          	lea    rdi,[rax+rdx*1]
  da878a:	48 83 c7 70          	add    rdi,0x70
  da878e:	48 89 f0             	mov    rax,rsi
  da8791:	48 c1 e0 05          	shl    rax,0x5
  da8795:	48 89 84 24 b0 00 00 	mov    QWORD PTR [rsp+0xb0],rax
  da879c:	00 
  da879d:	48 8d 42 20          	lea    rax,[rdx+0x20]
  da87a1:	48 89 84 24 48 02 00 	mov    QWORD PTR [rsp+0x248],rax
  da87a8:	00 
  da87a9:	48 8d 43 ff          	lea    rax,[rbx-0x1]
  da87ad:	48 89 84 24 40 02 00 	mov    QWORD PTR [rsp+0x240],rax
  da87b4:	00 
  da87b5:	4c 89 84 24 60 02 00 	mov    QWORD PTR [rsp+0x260],r8
  da87bc:	00 
  da87bd:	4a 8d 04 c1          	lea    rax,[rcx+r8*8]
  da87c1:	48 89 84 24 08 01 00 	mov    QWORD PTR [rsp+0x108],rax
  da87c8:	00 
  da87c9:	4a 8d 04 e1          	lea    rax,[rcx+r12*8]
  da87cd:	48 89 84 24 e8 00 00 	mov    QWORD PTR [rsp+0xe8],rax
  da87d4:	00 
  da87d5:	31 d2                	xor    edx,edx
  da87d7:	48 89 8c 24 00 01 00 	mov    QWORD PTR [rsp+0x100],rcx
  da87de:	00 
  da87df:	48 89 8c 24 98 00 00 	mov    QWORD PTR [rsp+0x98],rcx
  da87e6:	00 
  da87e7:	48 89 74 24 70       	mov    QWORD PTR [rsp+0x70],rsi
  da87ec:	48 89 9c 24 20 01 00 	mov    QWORD PTR [rsp+0x120],rbx
  da87f3:	00 
  da87f4:	e9 7e 00 00 00       	jmp    da8877 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x17b7>
  da87f9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  da8800:	48 8b 94 24 a8 00 00 	mov    rdx,QWORD PTR [rsp+0xa8]
  da8807:	00 
  da8808:	48 83 c2 04          	add    rdx,0x4
  da880c:	4c 8b 8c 24 d8 01 00 	mov    r9,QWORD PTR [rsp+0x1d8]
  da8813:	00 
  da8814:	49 ff c9             	dec    r9
  da8817:	48 83 44 24 70 fc    	add    QWORD PTR [rsp+0x70],0xfffffffffffffffc
  da881d:	48 8b 84 24 d0 01 00 	mov    rax,QWORD PTR [rsp+0x1d0]
  da8824:	00 
  da8825:	48 01 84 24 08 01 00 	add    QWORD PTR [rsp+0x108],rax
  da882c:	00 
  da882d:	48 01 84 24 d8 00 00 	add    QWORD PTR [rsp+0xd8],rax
  da8834:	00 
  da8835:	48 01 84 24 e8 00 00 	add    QWORD PTR [rsp+0xe8],rax
  da883c:	00 
  da883d:	48 8b bc 24 c8 00 00 	mov    rdi,QWORD PTR [rsp+0xc8]
  da8844:	00 
  da8845:	48 01 c7             	add    rdi,rax
  da8848:	48 01 84 24 98 00 00 	add    QWORD PTR [rsp+0x98],rax
  da884f:	00 
  da8850:	48 83 ac 24 00 01 00 	sub    QWORD PTR [rsp+0x100],0xffffffffffffff80
  da8857:	00 80 
  da8859:	4d 85 c9             	test   r9,r9
  da885c:	4c 8b 64 24 38       	mov    r12,QWORD PTR [rsp+0x38]
  da8861:	4c 8b b4 24 90 00 00 	mov    r14,QWORD PTR [rsp+0x90]
  da8868:	00 
  da8869:	48 8b 9c 24 20 01 00 	mov    rbx,QWORD PTR [rsp+0x120]
  da8870:	00 
  da8871:	0f 84 00 11 00 00    	je     da9977 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x28b7>
  da8877:	48 89 bc 24 c8 00 00 	mov    QWORD PTR [rsp+0xc8],rdi
  da887e:	00 
  da887f:	4c 8b 44 24 30       	mov    r8,QWORD PTR [rsp+0x30]
  da8884:	49 29 d0             	sub    r8,rdx
  da8887:	48 8b 84 24 10 01 00 	mov    rax,QWORD PTR [rsp+0x110]
  da888e:	00 
  da888f:	48 8d 3c d0          	lea    rdi,[rax+rdx*8]
  da8893:	49 83 f8 04          	cmp    r8,0x4
  da8897:	b8 04 00 00 00       	mov    eax,0x4
  da889c:	4c 0f 43 c0          	cmovae r8,rax
  da88a0:	4c 89 8c 24 d8 01 00 	mov    QWORD PTR [rsp+0x1d8],r9
  da88a7:	00 
  da88a8:	48 89 94 24 a8 00 00 	mov    QWORD PTR [rsp+0xa8],rdx
  da88af:	00 
  da88b0:	72 5e                	jb     da8910 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1850>
  da88b2:	48 85 db             	test   rbx,rbx
  da88b5:	0f 84 a0 4f 00 00    	je     dad85b <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x679b>
  da88bb:	48 8b 44 24 78       	mov    rax,QWORD PTR [rsp+0x78]
  da88c0:	48 8b 00             	mov    rax,QWORD PTR [rax]
  da88c3:	48 83 c0 fe          	add    rax,0xfffffffffffffffe
  da88c7:	48 83 f8 0d          	cmp    rax,0xd
  da88cb:	0f 87 4e 4f 00 00    	ja     dad81f <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x675f>
  da88d1:	48 8d 0d c0 a6 2f ff 	lea    rcx,[rip+0xffffffffff2fa6c0]        # a2f98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x30448>
  da88d8:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  da88dc:	48 01 c8             	add    rax,rcx
  da88df:	ff e0                	jmp    rax
  da88e1:	4c 89 f6             	mov    rsi,r14
  da88e4:	4c 89 e2             	mov    rdx,r12
  da88e7:	48 8b 4c 24 30       	mov    rcx,QWORD PTR [rsp+0x30]
  da88ec:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  da88f1:	e8 0a a5 fe ff       	call   d92e00 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da88f6:	48 83 fb 02          	cmp    rbx,0x2
  da88fa:	0f 83 c0 03 00 00    	jae    da8cc0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1c00>
  da8900:	e9 3b 08 00 00       	jmp    da9140 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2080>
  da8905:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  da890c:	00 00 00 00 
  da8910:	48 85 db             	test   rbx,rbx
  da8913:	0f 84 42 4f 00 00    	je     dad85b <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x679b>
  da8919:	48 8b 44 24 78       	mov    rax,QWORD PTR [rsp+0x78]
  da891e:	48 8b 00             	mov    rax,QWORD PTR [rax]
  da8921:	48 83 c0 fe          	add    rax,0xfffffffffffffffe
  da8925:	48 83 f8 0d          	cmp    rax,0xd
  da8929:	0f 87 f0 4e 00 00    	ja     dad81f <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x675f>
  da892f:	48 8d 0d ee a5 2f ff 	lea    rcx,[rip+0xffffffffff2fa5ee]        # a2f24 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x303d4>
  da8936:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  da893a:	48 01 c8             	add    rax,rcx
  da893d:	ff e0                	jmp    rax
  da893f:	4c 89 f6             	mov    rsi,r14
  da8942:	4c 89 e2             	mov    rdx,r12
  da8945:	48 8b 4c 24 30       	mov    rcx,QWORD PTR [rsp+0x30]
  da894a:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  da894f:	e8 2c 0e fe ff       	call   d89780 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da8954:	48 83 fb 02          	cmp    rbx,0x2
  da8958:	0f 83 b2 05 00 00    	jae    da8f10 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1e50>
  da895e:	e9 dd 07 00 00       	jmp    da9140 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2080>
  da8963:	4c 89 f6             	mov    rsi,r14
  da8966:	4c 89 e2             	mov    rdx,r12
  da8969:	48 8b 4c 24 30       	mov    rcx,QWORD PTR [rsp+0x30]
  da896e:	e8 4d d6 ff ff       	call   da5fc0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da8973:	48 83 fb 02          	cmp    rbx,0x2
  da8977:	0f 83 43 03 00 00    	jae    da8cc0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1c00>
  da897d:	e9 be 07 00 00       	jmp    da9140 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2080>
  da8982:	4c 89 f6             	mov    rsi,r14
  da8985:	4c 89 e2             	mov    rdx,r12
  da8988:	48 8b 4c 24 30       	mov    rcx,QWORD PTR [rsp+0x30]
  da898d:	e8 6e a4 ff ff       	call   da2e00 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da8992:	48 83 fb 02          	cmp    rbx,0x2
  da8996:	0f 83 74 05 00 00    	jae    da8f10 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1e50>
  da899c:	e9 9f 07 00 00       	jmp    da9140 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2080>
  da89a1:	4c 89 f6             	mov    rsi,r14
  da89a4:	4c 89 e2             	mov    rdx,r12
  da89a7:	48 8b 4c 24 30       	mov    rcx,QWORD PTR [rsp+0x30]
  da89ac:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  da89b1:	e8 8a 9c ff ff       	call   da2640 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da89b6:	48 83 fb 02          	cmp    rbx,0x2
  da89ba:	0f 83 00 03 00 00    	jae    da8cc0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1c00>
  da89c0:	e9 7b 07 00 00       	jmp    da9140 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2080>
  da89c5:	4c 89 f6             	mov    rsi,r14
  da89c8:	4c 89 e2             	mov    rdx,r12
  da89cb:	48 8b 4c 24 30       	mov    rcx,QWORD PTR [rsp+0x30]
  da89d0:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  da89d5:	e8 66 86 ff ff       	call   da1040 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da89da:	48 83 fb 02          	cmp    rbx,0x2
  da89de:	0f 83 2c 05 00 00    	jae    da8f10 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1e50>
  da89e4:	e9 57 07 00 00       	jmp    da9140 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2080>
  da89e9:	4c 89 f6             	mov    rsi,r14
  da89ec:	4c 89 e2             	mov    rdx,r12
  da89ef:	48 8b 4c 24 30       	mov    rcx,QWORD PTR [rsp+0x30]
  da89f4:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  da89f9:	e8 02 2b ff ff       	call   d9b500 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da89fe:	48 83 fb 02          	cmp    rbx,0x2
  da8a02:	0f 83 b8 02 00 00    	jae    da8cc0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1c00>
  da8a08:	e9 33 07 00 00       	jmp    da9140 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2080>
  da8a0d:	4c 89 f6             	mov    rsi,r14
  da8a10:	4c 89 e2             	mov    rdx,r12
  da8a13:	48 8b 4c 24 30       	mov    rcx,QWORD PTR [rsp+0x30]
  da8a18:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  da8a1d:	e8 1e 18 ff ff       	call   d9a240 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da8a22:	48 83 fb 02          	cmp    rbx,0x2
  da8a26:	0f 83 e4 04 00 00    	jae    da8f10 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1e50>
  da8a2c:	e9 0f 07 00 00       	jmp    da9140 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2080>
  da8a31:	4c 89 f6             	mov    rsi,r14
  da8a34:	4c 89 e2             	mov    rdx,r12
  da8a37:	48 8b 4c 24 30       	mov    rcx,QWORD PTR [rsp+0x30]
  da8a3c:	e8 3f 2b fe ff       	call   d8b580 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da8a41:	48 83 fb 02          	cmp    rbx,0x2
  da8a45:	0f 83 75 02 00 00    	jae    da8cc0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1c00>
  da8a4b:	e9 f0 06 00 00       	jmp    da9140 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2080>
  da8a50:	4c 89 f6             	mov    rsi,r14
  da8a53:	4c 89 e2             	mov    rdx,r12
  da8a56:	48 8b 4c 24 30       	mov    rcx,QWORD PTR [rsp+0x30]
  da8a5b:	e8 a0 d4 fe ff       	call   d95f00 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da8a60:	48 83 fb 02          	cmp    rbx,0x2
  da8a64:	0f 83 a6 04 00 00    	jae    da8f10 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1e50>
  da8a6a:	e9 d1 06 00 00       	jmp    da9140 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2080>
  da8a6f:	4c 89 f6             	mov    rsi,r14
  da8a72:	4c 89 e2             	mov    rdx,r12
  da8a75:	48 8b 4c 24 30       	mov    rcx,QWORD PTR [rsp+0x30]
  da8a7a:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  da8a7f:	e8 3c 84 ff ff       	call   da0ec0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da8a84:	48 83 fb 02          	cmp    rbx,0x2
  da8a88:	0f 83 32 02 00 00    	jae    da8cc0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1c00>
  da8a8e:	e9 ad 06 00 00       	jmp    da9140 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2080>
  da8a93:	4c 89 f6             	mov    rsi,r14
  da8a96:	4c 89 e2             	mov    rdx,r12
  da8a99:	48 8b 4c 24 30       	mov    rcx,QWORD PTR [rsp+0x30]
  da8a9e:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  da8aa3:	e8 98 a9 fd ff       	call   d83440 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da8aa8:	48 83 fb 02          	cmp    rbx,0x2
  da8aac:	0f 83 5e 04 00 00    	jae    da8f10 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1e50>
  da8ab2:	e9 89 06 00 00       	jmp    da9140 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2080>
  da8ab7:	4c 89 f6             	mov    rsi,r14
  da8aba:	4c 89 e2             	mov    rdx,r12
  da8abd:	48 8b 4c 24 30       	mov    rcx,QWORD PTR [rsp+0x30]
  da8ac2:	e8 b9 62 ff ff       	call   d9ed80 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da8ac7:	48 83 fb 02          	cmp    rbx,0x2
  da8acb:	0f 83 ef 01 00 00    	jae    da8cc0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1c00>
  da8ad1:	e9 6a 06 00 00       	jmp    da9140 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2080>
  da8ad6:	4c 89 f6             	mov    rsi,r14
  da8ad9:	4c 89 e2             	mov    rdx,r12
  da8adc:	48 8b 4c 24 30       	mov    rcx,QWORD PTR [rsp+0x30]
  da8ae1:	e8 5a f9 fe ff       	call   d98440 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da8ae6:	48 83 fb 02          	cmp    rbx,0x2
  da8aea:	0f 83 20 04 00 00    	jae    da8f10 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1e50>
  da8af0:	e9 4b 06 00 00       	jmp    da9140 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2080>
  da8af5:	4c 89 f6             	mov    rsi,r14
  da8af8:	4c 89 e2             	mov    rdx,r12
  da8afb:	48 8b 4c 24 30       	mov    rcx,QWORD PTR [rsp+0x30]
  da8b00:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  da8b05:	e8 f6 b8 fd ff       	call   d84400 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da8b0a:	48 83 fb 02          	cmp    rbx,0x2
  da8b0e:	0f 83 ac 01 00 00    	jae    da8cc0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1c00>
  da8b14:	e9 27 06 00 00       	jmp    da9140 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2080>
  da8b19:	4c 89 f6             	mov    rsi,r14
  da8b1c:	4c 89 e2             	mov    rdx,r12
  da8b1f:	48 8b 4c 24 30       	mov    rcx,QWORD PTR [rsp+0x30]
  da8b24:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  da8b29:	e8 52 98 fe ff       	call   d92380 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da8b2e:	48 83 fb 02          	cmp    rbx,0x2
  da8b32:	0f 83 d8 03 00 00    	jae    da8f10 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1e50>
  da8b38:	e9 03 06 00 00       	jmp    da9140 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2080>
  da8b3d:	4c 89 f6             	mov    rsi,r14
  da8b40:	4c 89 e2             	mov    rdx,r12
  da8b43:	48 8b 4c 24 30       	mov    rcx,QWORD PTR [rsp+0x30]
  da8b48:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  da8b4d:	e8 ae 99 ff ff       	call   da2500 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da8b52:	48 83 fb 02          	cmp    rbx,0x2
  da8b56:	0f 83 64 01 00 00    	jae    da8cc0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1c00>
  da8b5c:	e9 df 05 00 00       	jmp    da9140 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2080>
  da8b61:	4c 89 f6             	mov    rsi,r14
  da8b64:	4c 89 e2             	mov    rdx,r12
  da8b67:	48 8b 4c 24 30       	mov    rcx,QWORD PTR [rsp+0x30]
  da8b6c:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  da8b71:	e8 4a 8a ff ff       	call   da15c0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da8b76:	48 83 fb 02          	cmp    rbx,0x2
  da8b7a:	0f 83 90 03 00 00    	jae    da8f10 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1e50>
  da8b80:	e9 bb 05 00 00       	jmp    da9140 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2080>
  da8b85:	4c 89 f6             	mov    rsi,r14
  da8b88:	4c 89 e2             	mov    rdx,r12
  da8b8b:	48 8b 4c 24 30       	mov    rcx,QWORD PTR [rsp+0x30]
  da8b90:	e8 6b 64 ff ff       	call   d9f000 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da8b95:	48 83 fb 02          	cmp    rbx,0x2
  da8b99:	0f 83 21 01 00 00    	jae    da8cc0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1c00>
  da8b9f:	e9 9c 05 00 00       	jmp    da9140 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2080>
  da8ba4:	4c 89 f6             	mov    rsi,r14
  da8ba7:	4c 89 e2             	mov    rdx,r12
  da8baa:	48 8b 4c 24 30       	mov    rcx,QWORD PTR [rsp+0x30]
  da8baf:	e8 4c 58 fe ff       	call   d8e400 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da8bb4:	48 83 fb 02          	cmp    rbx,0x2
  da8bb8:	0f 83 52 03 00 00    	jae    da8f10 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1e50>
  da8bbe:	e9 7d 05 00 00       	jmp    da9140 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2080>
  da8bc3:	4c 89 f6             	mov    rsi,r14
  da8bc6:	4c 89 e2             	mov    rdx,r12
  da8bc9:	48 8b 4c 24 30       	mov    rcx,QWORD PTR [rsp+0x30]
  da8bce:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  da8bd3:	e8 68 d4 fd ff       	call   d86040 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da8bd8:	48 83 fb 02          	cmp    rbx,0x2
  da8bdc:	0f 83 de 00 00 00    	jae    da8cc0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1c00>
  da8be2:	e9 59 05 00 00       	jmp    da9140 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2080>
  da8be7:	4c 89 f6             	mov    rsi,r14
  da8bea:	4c 89 e2             	mov    rdx,r12
  da8bed:	48 8b 4c 24 30       	mov    rcx,QWORD PTR [rsp+0x30]
  da8bf2:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  da8bf7:	e8 44 0d fe ff       	call   d89940 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da8bfc:	48 83 fb 02          	cmp    rbx,0x2
  da8c00:	0f 83 0a 03 00 00    	jae    da8f10 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1e50>
  da8c06:	e9 35 05 00 00       	jmp    da9140 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2080>
  da8c0b:	4c 89 f6             	mov    rsi,r14
  da8c0e:	4c 89 e2             	mov    rdx,r12
  da8c11:	48 8b 4c 24 30       	mov    rcx,QWORD PTR [rsp+0x30]
  da8c16:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  da8c1b:	e8 e0 94 ff ff       	call   da2100 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da8c20:	48 83 fb 02          	cmp    rbx,0x2
  da8c24:	0f 83 96 00 00 00    	jae    da8cc0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1c00>
  da8c2a:	e9 11 05 00 00       	jmp    da9140 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2080>
  da8c2f:	4c 89 f6             	mov    rsi,r14
  da8c32:	4c 89 e2             	mov    rdx,r12
  da8c35:	48 8b 4c 24 30       	mov    rcx,QWORD PTR [rsp+0x30]
  da8c3a:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  da8c3f:	e8 7c bf ff ff       	call   da4bc0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da8c44:	48 83 fb 02          	cmp    rbx,0x2
  da8c48:	0f 83 c2 02 00 00    	jae    da8f10 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1e50>
  da8c4e:	e9 ed 04 00 00       	jmp    da9140 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2080>
  da8c53:	4c 89 f6             	mov    rsi,r14
  da8c56:	4c 89 e2             	mov    rdx,r12
  da8c59:	48 8b 4c 24 30       	mov    rcx,QWORD PTR [rsp+0x30]
  da8c5e:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  da8c63:	e8 18 21 fe ff       	call   d8ad80 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da8c68:	48 83 fb 02          	cmp    rbx,0x2
  da8c6c:	73 52                	jae    da8cc0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1c00>
  da8c6e:	e9 cd 04 00 00       	jmp    da9140 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2080>
  da8c73:	4c 89 f6             	mov    rsi,r14
  da8c76:	4c 89 e2             	mov    rdx,r12
  da8c79:	48 8b 4c 24 30       	mov    rcx,QWORD PTR [rsp+0x30]
  da8c7e:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  da8c83:	e8 b8 5f fe ff       	call   d8ec40 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da8c88:	48 83 fb 02          	cmp    rbx,0x2
  da8c8c:	0f 83 7e 02 00 00    	jae    da8f10 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1e50>
  da8c92:	e9 a9 04 00 00       	jmp    da9140 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2080>
  da8c97:	4c 89 f6             	mov    rsi,r14
  da8c9a:	4c 89 e2             	mov    rdx,r12
  da8c9d:	48 8b 4c 24 30       	mov    rcx,QWORD PTR [rsp+0x30]
  da8ca2:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  da8ca7:	e8 14 90 fe ff       	call   d91cc0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da8cac:	48 83 fb 02          	cmp    rbx,0x2
  da8cb0:	0f 82 8a 04 00 00    	jb     da9140 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2080>
  da8cb6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  da8cbd:	00 00 00 
  da8cc0:	48 8b 44 24 78       	mov    rax,QWORD PTR [rsp+0x78]
  da8cc5:	48 8b 18             	mov    rbx,QWORD PTR [rax]
  da8cc8:	4c 8b a4 24 40 02 00 	mov    r12,QWORD PTR [rsp+0x240]
  da8ccf:	00 
  da8cd0:	4c 8b ac 24 48 02 00 	mov    r13,QWORD PTR [rsp+0x248]
  da8cd7:	00 
  da8cd8:	48 8b 84 24 90 00 00 	mov    rax,QWORD PTR [rsp+0x90]
  da8cdf:	00 
  da8ce0:	48 8b 8c 24 e0 00 00 	mov    rcx,QWORD PTR [rsp+0xe0]
  da8ce7:	00 
  da8ce8:	eb 4f                	jmp    da8d39 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1c79>
  da8cea:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  da8cef:	0f 29 84 24 40 01 00 	movaps XMMWORD PTR [rsp+0x140],xmm0
  da8cf6:	00 
  da8cf7:	48 89 d7             	mov    rdi,rdx
  da8cfa:	4c 89 f6             	mov    rsi,r14
  da8cfd:	48 8b 54 24 38       	mov    rdx,QWORD PTR [rsp+0x38]
  da8d02:	48 89 d9             	mov    rcx,rbx
  da8d05:	4c 8d 8c 24 40 01 00 	lea    r9,[rsp+0x140]
  da8d0c:	00 
  da8d0d:	e8 ae c6 f1 ff       	call   cc53c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da8d12:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  da8d19:	1f 84 00 00 00 00 00 
  da8d20:	49 0f af df          	imul   rbx,r15
  da8d24:	49 83 c5 18          	add    r13,0x18
  da8d28:	4c 89 f0             	mov    rax,r14
  da8d2b:	49 ff cc             	dec    r12
  da8d2e:	48 8b 4c 24 68       	mov    rcx,QWORD PTR [rsp+0x68]
  da8d33:	0f 84 07 04 00 00    	je     da9140 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2080>
  da8d39:	48 89 c2             	mov    rdx,rax
  da8d3c:	4d 8b 7d f8          	mov    r15,QWORD PTR [r13-0x8]
  da8d40:	4d 8b 45 00          	mov    r8,QWORD PTR [r13+0x0]
  da8d44:	4c 03 44 24 78       	add    r8,QWORD PTR [rsp+0x78]
  da8d49:	4c 89 bc 24 88 00 00 	mov    QWORD PTR [rsp+0x88],r15
  da8d50:	00 
  da8d51:	49 8d 47 fe          	lea    rax,[r15-0x2]
  da8d55:	48 83 f8 0e          	cmp    rax,0xe
  da8d59:	0f 87 56 4a 00 00    	ja     dad7b5 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x66f5>
  da8d5f:	49 89 ce             	mov    r14,rcx
  da8d62:	48 8d 0d 67 a2 2f ff 	lea    rcx,[rip+0xffffffffff2fa267]        # a2fd0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x30480>
  da8d69:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  da8d6d:	48 01 c8             	add    rax,rcx
  da8d70:	48 89 54 24 68       	mov    QWORD PTR [rsp+0x68],rdx
  da8d75:	ff e0                	jmp    rax
  da8d77:	48 89 d7             	mov    rdi,rdx
  da8d7a:	4c 89 f6             	mov    rsi,r14
  da8d7d:	48 8b 54 24 38       	mov    rdx,QWORD PTR [rsp+0x38]
  da8d82:	48 89 d9             	mov    rcx,rbx
  da8d85:	e8 f6 41 f1 ff       	call   cbcf80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da8d8a:	eb 94                	jmp    da8d20 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1c60>
  da8d8c:	48 89 d7             	mov    rdi,rdx
  da8d8f:	4c 89 f6             	mov    rsi,r14
  da8d92:	48 8b 54 24 38       	mov    rdx,QWORD PTR [rsp+0x38]
  da8d97:	48 89 d9             	mov    rcx,rbx
  da8d9a:	e8 61 8c f1 ff       	call   cc1a00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da8d9f:	e9 7c ff ff ff       	jmp    da8d20 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1c60>
  da8da4:	48 89 d7             	mov    rdi,rdx
  da8da7:	4c 89 f6             	mov    rsi,r14
  da8daa:	48 8b 54 24 38       	mov    rdx,QWORD PTR [rsp+0x38]
  da8daf:	48 89 d9             	mov    rcx,rbx
  da8db2:	e8 49 4b f1 ff       	call   cbd900 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da8db7:	e9 64 ff ff ff       	jmp    da8d20 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1c60>
  da8dbc:	48 89 d7             	mov    rdi,rdx
  da8dbf:	4c 89 f6             	mov    rsi,r14
  da8dc2:	48 8b 54 24 38       	mov    rdx,QWORD PTR [rsp+0x38]
  da8dc7:	48 89 d9             	mov    rcx,rbx
  da8dca:	e8 71 a1 f1 ff       	call   cc2f40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da8dcf:	e9 4c ff ff ff       	jmp    da8d20 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1c60>
  da8dd4:	48 89 d7             	mov    rdi,rdx
  da8dd7:	4c 89 f6             	mov    rsi,r14
  da8dda:	48 8b 54 24 38       	mov    rdx,QWORD PTR [rsp+0x38]
  da8ddf:	48 89 d9             	mov    rcx,rbx
  da8de2:	e8 99 6f f1 ff       	call   cbfd80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da8de7:	e9 34 ff ff ff       	jmp    da8d20 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1c60>
  da8dec:	48 89 d7             	mov    rdi,rdx
  da8def:	4c 89 f6             	mov    rsi,r14
  da8df2:	48 8b 54 24 38       	mov    rdx,QWORD PTR [rsp+0x38]
  da8df7:	48 89 d9             	mov    rcx,rbx
  da8dfa:	e8 01 45 f1 ff       	call   cbd300 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da8dff:	e9 1c ff ff ff       	jmp    da8d20 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1c60>
  da8e04:	48 89 d7             	mov    rdi,rdx
  da8e07:	4c 89 f6             	mov    rsi,r14
  da8e0a:	48 8b 54 24 38       	mov    rdx,QWORD PTR [rsp+0x38]
  da8e0f:	48 89 d9             	mov    rcx,rbx
  da8e12:	e8 69 47 f1 ff       	call   cbd580 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da8e17:	e9 04 ff ff ff       	jmp    da8d20 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1c60>
  da8e1c:	48 89 d7             	mov    rdi,rdx
  da8e1f:	4c 89 f6             	mov    rsi,r14
  da8e22:	48 8b 54 24 38       	mov    rdx,QWORD PTR [rsp+0x38]
  da8e27:	48 89 d9             	mov    rcx,rbx
  da8e2a:	e8 d1 5b f1 ff       	call   cbea00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da8e2f:	e9 ec fe ff ff       	jmp    da8d20 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1c60>
  da8e34:	48 89 d7             	mov    rdi,rdx
  da8e37:	4c 89 f6             	mov    rsi,r14
  da8e3a:	48 8b 54 24 38       	mov    rdx,QWORD PTR [rsp+0x38]
  da8e3f:	48 89 d9             	mov    rcx,rbx
  da8e42:	e8 79 42 f1 ff       	call   cbd0c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da8e47:	e9 d4 fe ff ff       	jmp    da8d20 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1c60>
  da8e4c:	48 89 d7             	mov    rdi,rdx
  da8e4f:	4c 89 f6             	mov    rsi,r14
  da8e52:	48 8b 54 24 38       	mov    rdx,QWORD PTR [rsp+0x38]
  da8e57:	48 89 d9             	mov    rcx,rbx
  da8e5a:	e8 e1 4e f1 ff       	call   cbdd40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da8e5f:	e9 bc fe ff ff       	jmp    da8d20 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1c60>
  da8e64:	48 89 d7             	mov    rdi,rdx
  da8e67:	4c 89 f6             	mov    rsi,r14
  da8e6a:	48 8b 54 24 38       	mov    rdx,QWORD PTR [rsp+0x38]
  da8e6f:	48 89 d9             	mov    rcx,rbx
  da8e72:	e8 c9 b2 f1 ff       	call   cc4140 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da8e77:	e9 a4 fe ff ff       	jmp    da8d20 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1c60>
  da8e7c:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  da8e81:	0f 29 84 24 40 01 00 	movaps XMMWORD PTR [rsp+0x140],xmm0
  da8e88:	00 
  da8e89:	48 89 d7             	mov    rdi,rdx
  da8e8c:	4c 89 f6             	mov    rsi,r14
  da8e8f:	48 8b 54 24 38       	mov    rdx,QWORD PTR [rsp+0x38]
  da8e94:	48 89 d9             	mov    rcx,rbx
  da8e97:	4c 8d 8c 24 40 01 00 	lea    r9,[rsp+0x140]
  da8e9e:	00 
  da8e9f:	e8 5c 55 f1 ff       	call   cbe400 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da8ea4:	e9 77 fe ff ff       	jmp    da8d20 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1c60>
  da8ea9:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  da8eae:	0f 29 84 24 40 01 00 	movaps XMMWORD PTR [rsp+0x140],xmm0
  da8eb5:	00 
  da8eb6:	48 89 d7             	mov    rdi,rdx
  da8eb9:	4c 89 f6             	mov    rsi,r14
  da8ebc:	48 8b 54 24 38       	mov    rdx,QWORD PTR [rsp+0x38]
  da8ec1:	48 89 d9             	mov    rcx,rbx
  da8ec4:	4c 8d 8c 24 40 01 00 	lea    r9,[rsp+0x140]
  da8ecb:	00 
  da8ecc:	e8 ef 7e f1 ff       	call   cc0dc0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da8ed1:	e9 4a fe ff ff       	jmp    da8d20 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1c60>
  da8ed6:	48 89 d7             	mov    rdi,rdx
  da8ed9:	4c 89 f6             	mov    rsi,r14
  da8edc:	48 8b 54 24 38       	mov    rdx,QWORD PTR [rsp+0x38]
  da8ee1:	48 89 d9             	mov    rcx,rbx
  da8ee4:	e8 57 64 f1 ff       	call   cbf340 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da8ee9:	e9 32 fe ff ff       	jmp    da8d20 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1c60>
  da8eee:	4c 89 f6             	mov    rsi,r14
  da8ef1:	4c 89 e2             	mov    rdx,r12
  da8ef4:	48 8b 4c 24 30       	mov    rcx,QWORD PTR [rsp+0x30]
  da8ef9:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  da8efe:	e8 bd 52 ff ff       	call   d9e1c0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da8f03:	48 83 fb 02          	cmp    rbx,0x2
  da8f07:	0f 82 33 02 00 00    	jb     da9140 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2080>
  da8f0d:	0f 1f 00             	nop    DWORD PTR [rax]
  da8f10:	48 8b 44 24 78       	mov    rax,QWORD PTR [rsp+0x78]
  da8f15:	48 8b 18             	mov    rbx,QWORD PTR [rax]
  da8f18:	4c 8b a4 24 40 02 00 	mov    r12,QWORD PTR [rsp+0x240]
  da8f1f:	00 
  da8f20:	4c 8b ac 24 48 02 00 	mov    r13,QWORD PTR [rsp+0x248]
  da8f27:	00 
  da8f28:	48 8b 84 24 90 00 00 	mov    rax,QWORD PTR [rsp+0x90]
  da8f2f:	00 
  da8f30:	48 8b 8c 24 e0 00 00 	mov    rcx,QWORD PTR [rsp+0xe0]
  da8f37:	00 
  da8f38:	eb 4f                	jmp    da8f89 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1ec9>
  da8f3a:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  da8f3f:	0f 29 84 24 40 01 00 	movaps XMMWORD PTR [rsp+0x140],xmm0
  da8f46:	00 
  da8f47:	48 89 d7             	mov    rdi,rdx
  da8f4a:	4c 89 f6             	mov    rsi,r14
  da8f4d:	48 8b 54 24 38       	mov    rdx,QWORD PTR [rsp+0x38]
  da8f52:	48 89 d9             	mov    rcx,rbx
  da8f55:	4c 8d 8c 24 40 01 00 	lea    r9,[rsp+0x140]
  da8f5c:	00 
  da8f5d:	e8 5e c4 f1 ff       	call   cc53c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da8f62:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  da8f69:	1f 84 00 00 00 00 00 
  da8f70:	49 0f af df          	imul   rbx,r15
  da8f74:	49 83 c5 18          	add    r13,0x18
  da8f78:	4c 89 f0             	mov    rax,r14
  da8f7b:	49 ff cc             	dec    r12
  da8f7e:	48 8b 4c 24 68       	mov    rcx,QWORD PTR [rsp+0x68]
  da8f83:	0f 84 b7 01 00 00    	je     da9140 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2080>
  da8f89:	48 89 c2             	mov    rdx,rax
  da8f8c:	4d 8b 7d f8          	mov    r15,QWORD PTR [r13-0x8]
  da8f90:	4d 8b 45 00          	mov    r8,QWORD PTR [r13+0x0]
  da8f94:	4c 03 44 24 78       	add    r8,QWORD PTR [rsp+0x78]
  da8f99:	4c 89 bc 24 88 00 00 	mov    QWORD PTR [rsp+0x88],r15
  da8fa0:	00 
  da8fa1:	49 8d 47 fe          	lea    rax,[r15-0x2]
  da8fa5:	48 83 f8 0e          	cmp    rax,0xe
  da8fa9:	0f 87 06 48 00 00    	ja     dad7b5 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x66f5>
  da8faf:	49 89 ce             	mov    r14,rcx
  da8fb2:	48 8d 0d a3 9f 2f ff 	lea    rcx,[rip+0xffffffffff2f9fa3]        # a2f5c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x3040c>
  da8fb9:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  da8fbd:	48 01 c8             	add    rax,rcx
  da8fc0:	48 89 54 24 68       	mov    QWORD PTR [rsp+0x68],rdx
  da8fc5:	ff e0                	jmp    rax
  da8fc7:	48 89 d7             	mov    rdi,rdx
  da8fca:	4c 89 f6             	mov    rsi,r14
  da8fcd:	48 8b 54 24 38       	mov    rdx,QWORD PTR [rsp+0x38]
  da8fd2:	48 89 d9             	mov    rcx,rbx
  da8fd5:	e8 a6 3f f1 ff       	call   cbcf80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da8fda:	eb 94                	jmp    da8f70 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1eb0>
  da8fdc:	48 89 d7             	mov    rdi,rdx
  da8fdf:	4c 89 f6             	mov    rsi,r14
  da8fe2:	48 8b 54 24 38       	mov    rdx,QWORD PTR [rsp+0x38]
  da8fe7:	48 89 d9             	mov    rcx,rbx
  da8fea:	e8 11 8a f1 ff       	call   cc1a00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da8fef:	e9 7c ff ff ff       	jmp    da8f70 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1eb0>
  da8ff4:	48 89 d7             	mov    rdi,rdx
  da8ff7:	4c 89 f6             	mov    rsi,r14
  da8ffa:	48 8b 54 24 38       	mov    rdx,QWORD PTR [rsp+0x38]
  da8fff:	48 89 d9             	mov    rcx,rbx
  da9002:	e8 f9 48 f1 ff       	call   cbd900 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da9007:	e9 64 ff ff ff       	jmp    da8f70 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1eb0>
  da900c:	48 89 d7             	mov    rdi,rdx
  da900f:	4c 89 f6             	mov    rsi,r14
  da9012:	48 8b 54 24 38       	mov    rdx,QWORD PTR [rsp+0x38]
  da9017:	48 89 d9             	mov    rcx,rbx
  da901a:	e8 21 9f f1 ff       	call   cc2f40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da901f:	e9 4c ff ff ff       	jmp    da8f70 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1eb0>
  da9024:	48 89 d7             	mov    rdi,rdx
  da9027:	4c 89 f6             	mov    rsi,r14
  da902a:	48 8b 54 24 38       	mov    rdx,QWORD PTR [rsp+0x38]
  da902f:	48 89 d9             	mov    rcx,rbx
  da9032:	e8 49 6d f1 ff       	call   cbfd80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da9037:	e9 34 ff ff ff       	jmp    da8f70 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1eb0>
  da903c:	48 89 d7             	mov    rdi,rdx
  da903f:	4c 89 f6             	mov    rsi,r14
  da9042:	48 8b 54 24 38       	mov    rdx,QWORD PTR [rsp+0x38]
  da9047:	48 89 d9             	mov    rcx,rbx
  da904a:	e8 b1 42 f1 ff       	call   cbd300 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da904f:	e9 1c ff ff ff       	jmp    da8f70 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1eb0>
  da9054:	48 89 d7             	mov    rdi,rdx
  da9057:	4c 89 f6             	mov    rsi,r14
  da905a:	48 8b 54 24 38       	mov    rdx,QWORD PTR [rsp+0x38]
  da905f:	48 89 d9             	mov    rcx,rbx
  da9062:	e8 19 45 f1 ff       	call   cbd580 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da9067:	e9 04 ff ff ff       	jmp    da8f70 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1eb0>
  da906c:	48 89 d7             	mov    rdi,rdx
  da906f:	4c 89 f6             	mov    rsi,r14
  da9072:	48 8b 54 24 38       	mov    rdx,QWORD PTR [rsp+0x38]
  da9077:	48 89 d9             	mov    rcx,rbx
  da907a:	e8 81 59 f1 ff       	call   cbea00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da907f:	e9 ec fe ff ff       	jmp    da8f70 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1eb0>
  da9084:	48 89 d7             	mov    rdi,rdx
  da9087:	4c 89 f6             	mov    rsi,r14
  da908a:	48 8b 54 24 38       	mov    rdx,QWORD PTR [rsp+0x38]
  da908f:	48 89 d9             	mov    rcx,rbx
  da9092:	e8 29 40 f1 ff       	call   cbd0c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da9097:	e9 d4 fe ff ff       	jmp    da8f70 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1eb0>
  da909c:	48 89 d7             	mov    rdi,rdx
  da909f:	4c 89 f6             	mov    rsi,r14
  da90a2:	48 8b 54 24 38       	mov    rdx,QWORD PTR [rsp+0x38]
  da90a7:	48 89 d9             	mov    rcx,rbx
  da90aa:	e8 91 4c f1 ff       	call   cbdd40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da90af:	e9 bc fe ff ff       	jmp    da8f70 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1eb0>
  da90b4:	48 89 d7             	mov    rdi,rdx
  da90b7:	4c 89 f6             	mov    rsi,r14
  da90ba:	48 8b 54 24 38       	mov    rdx,QWORD PTR [rsp+0x38]
  da90bf:	48 89 d9             	mov    rcx,rbx
  da90c2:	e8 79 b0 f1 ff       	call   cc4140 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da90c7:	e9 a4 fe ff ff       	jmp    da8f70 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1eb0>
  da90cc:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  da90d1:	0f 29 84 24 40 01 00 	movaps XMMWORD PTR [rsp+0x140],xmm0
  da90d8:	00 
  da90d9:	48 89 d7             	mov    rdi,rdx
  da90dc:	4c 89 f6             	mov    rsi,r14
  da90df:	48 8b 54 24 38       	mov    rdx,QWORD PTR [rsp+0x38]
  da90e4:	48 89 d9             	mov    rcx,rbx
  da90e7:	4c 8d 8c 24 40 01 00 	lea    r9,[rsp+0x140]
  da90ee:	00 
  da90ef:	e8 0c 53 f1 ff       	call   cbe400 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da90f4:	e9 77 fe ff ff       	jmp    da8f70 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1eb0>
  da90f9:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  da90fe:	0f 29 84 24 40 01 00 	movaps XMMWORD PTR [rsp+0x140],xmm0
  da9105:	00 
  da9106:	48 89 d7             	mov    rdi,rdx
  da9109:	4c 89 f6             	mov    rsi,r14
  da910c:	48 8b 54 24 38       	mov    rdx,QWORD PTR [rsp+0x38]
  da9111:	48 89 d9             	mov    rcx,rbx
  da9114:	4c 8d 8c 24 40 01 00 	lea    r9,[rsp+0x140]
  da911b:	00 
  da911c:	e8 9f 7c f1 ff       	call   cc0dc0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da9121:	e9 4a fe ff ff       	jmp    da8f70 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1eb0>
  da9126:	48 89 d7             	mov    rdi,rdx
  da9129:	4c 89 f6             	mov    rsi,r14
  da912c:	48 8b 54 24 38       	mov    rdx,QWORD PTR [rsp+0x38]
  da9131:	48 89 d9             	mov    rcx,rbx
  da9134:	e8 07 62 f1 ff       	call   cbf340 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da9139:	e9 32 fe ff ff       	jmp    da8f70 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1eb0>
  da913e:	66 90                	xchg   ax,ax
  da9140:	80 bc 24 28 01 00 00 	cmp    BYTE PTR [rsp+0x128],0x0
  da9147:	00 
  da9148:	74 36                	je     da9180 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x20c0>
  da914a:	48 8b b4 24 18 01 00 	mov    rsi,QWORD PTR [rsp+0x118]
  da9151:	00 
  da9152:	48 85 f6             	test   rsi,rsi
  da9155:	48 8b 4c 24 38       	mov    rcx,QWORD PTR [rsp+0x38]
  da915a:	0f 84 0b 47 00 00    	je     dad86b <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x67ab>
  da9160:	48 89 c8             	mov    rax,rcx
  da9163:	48 09 f0             	or     rax,rsi
  da9166:	48 c1 e8 20          	shr    rax,0x20
  da916a:	74 57                	je     da91c3 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2103>
  da916c:	48 89 c8             	mov    rax,rcx
  da916f:	31 d2                	xor    edx,edx
  da9171:	48 f7 f6             	div    rsi
  da9174:	48 85 c9             	test   rcx,rcx
  da9177:	75 59                	jne    da91d2 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2112>
  da9179:	e9 82 f6 ff ff       	jmp    da8800 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1740>
  da917e:	66 90                	xchg   ax,ax
  da9180:	48 83 7c 24 38 00    	cmp    QWORD PTR [rsp+0x38],0x0
  da9186:	0f 84 74 f6 ff ff    	je     da8800 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1740>
  da918c:	48 8b 84 24 a8 00 00 	mov    rax,QWORD PTR [rsp+0xa8]
  da9193:	00 
  da9194:	4c 8b 64 24 38       	mov    r12,QWORD PTR [rsp+0x38]
  da9199:	49 0f af c4          	imul   rax,r12
  da919d:	48 8b 8c 24 d0 00 00 	mov    rcx,QWORD PTR [rsp+0xd0]
  da91a4:	00 
  da91a5:	48 8d 04 c1          	lea    rax,[rcx+rax*8]
  da91a9:	48 89 84 24 78 02 00 	mov    QWORD PTR [rsp+0x278],rax
  da91b0:	00 
  da91b1:	45 31 ff             	xor    r15d,r15d
  da91b4:	4c 8b ac 24 c8 01 00 	mov    r13,QWORD PTR [rsp+0x1c8]
  da91bb:	00 
  da91bc:	31 db                	xor    ebx,ebx
  da91be:	e9 15 03 00 00       	jmp    da94d8 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2418>
  da91c3:	89 c8                	mov    eax,ecx
  da91c5:	31 d2                	xor    edx,edx
  da91c7:	f7 f6                	div    esi
  da91c9:	48 85 c9             	test   rcx,rcx
  da91cc:	0f 84 2e f6 ff ff    	je     da8800 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1740>
  da91d2:	48 8b 8c 24 a8 00 00 	mov    rcx,QWORD PTR [rsp+0xa8]
  da91d9:	00 
  da91da:	48 01 c9             	add    rcx,rcx
  da91dd:	48 0f af c1          	imul   rax,rcx
  da91e1:	48 0f af 8c 24 18 01 	imul   rcx,QWORD PTR [rsp+0x118]
  da91e8:	00 00 
  da91ea:	48 8b 94 24 68 02 00 	mov    rdx,QWORD PTR [rsp+0x268]
  da91f1:	00 
  da91f2:	48 8d 04 82          	lea    rax,[rdx+rax*4]
  da91f6:	48 8b 94 24 70 02 00 	mov    rdx,QWORD PTR [rsp+0x270]
  da91fd:	00 
  da91fe:	48 8d 14 8a          	lea    rdx,[rdx+rcx*4]
  da9202:	49 83 c6 70          	add    r14,0x70
  da9206:	48 8b b4 24 00 01 00 	mov    rsi,QWORD PTR [rsp+0x100]
  da920d:	00 
  da920e:	48 8b bc 24 c8 01 00 	mov    rdi,QWORD PTR [rsp+0x1c8]
  da9215:	00 
  da9216:	45 31 c0             	xor    r8d,r8d
  da9219:	eb 42                	jmp    da925d <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x219d>
  da921b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  da9220:	44 0f 11 06          	movups XMMWORD PTR [rsi],xmm8
  da9224:	44 0f 11 4e 10       	movups XMMWORD PTR [rsi+0x10],xmm9
  da9229:	0f 11 76 20          	movups XMMWORD PTR [rsi+0x20],xmm6
  da922d:	0f 11 66 30          	movups XMMWORD PTR [rsi+0x30],xmm4
  da9231:	0f 11 7e 40          	movups XMMWORD PTR [rsi+0x40],xmm7
  da9235:	0f 11 46 50          	movups XMMWORD PTR [rsi+0x50],xmm0
  da9239:	0f 11 6e 60          	movups XMMWORD PTR [rsi+0x60],xmm5
  da923d:	0f 11 5e 70          	movups XMMWORD PTR [rsi+0x70],xmm3
  da9241:	48 ff cf             	dec    rdi
  da9244:	48 03 b4 24 b0 00 00 	add    rsi,QWORD PTR [rsp+0xb0]
  da924b:	00 
  da924c:	49 83 ee 80          	sub    r14,0xffffffffffffff80
  da9250:	49 83 c0 04          	add    r8,0x4
  da9254:	48 85 ff             	test   rdi,rdi
  da9257:	0f 84 a3 f5 ff ff    	je     da8800 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1740>
  da925d:	4d 89 c1             	mov    r9,r8
  da9260:	48 8b 8c 24 f0 00 00 	mov    rcx,QWORD PTR [rsp+0xf0]
  da9267:	00 
  da9268:	49 d3 e9             	shr    r9,cl
  da926b:	49 c1 e1 05          	shl    r9,0x5
  da926f:	42 0f 10 04 08       	movups xmm0,XMMWORD PTR [rax+r9*1]
  da9274:	42 0f 10 74 08 10    	movups xmm6,XMMWORD PTR [rax+r9*1+0x10]
  da927a:	4c 89 c1             	mov    rcx,r8
  da927d:	48 23 4c 24 60       	and    rcx,QWORD PTR [rsp+0x60]
  da9282:	48 c1 e1 05          	shl    rcx,0x5
  da9286:	0f 10 24 0a          	movups xmm4,XMMWORD PTR [rdx+rcx*1]
  da928a:	0f 10 4c 0a 10       	movups xmm1,XMMWORD PTR [rdx+rcx*1+0x10]
  da928f:	0f 10 5c 0a 20       	movups xmm3,XMMWORD PTR [rdx+rcx*1+0x20]
  da9294:	0f 10 54 0a 30       	movups xmm2,XMMWORD PTR [rdx+rcx*1+0x30]
  da9299:	0f 28 ee             	movaps xmm5,xmm6
  da929c:	0f 59 e9             	mulps  xmm5,xmm1
  da929f:	0f 28 f8             	movaps xmm7,xmm0
  da92a2:	0f 59 fc             	mulps  xmm7,xmm4
  da92a5:	0f 5c fd             	subps  xmm7,xmm5
  da92a8:	0f 59 e6             	mulps  xmm4,xmm6
  da92ab:	0f 59 c8             	mulps  xmm1,xmm0
  da92ae:	0f 58 cc             	addps  xmm1,xmm4
  da92b1:	45 0f 10 4e 90       	movups xmm9,XMMWORD PTR [r14-0x70]
  da92b6:	45 0f 10 56 a0       	movups xmm10,XMMWORD PTR [r14-0x60]
  da92bb:	41 0f 10 6e b0       	movups xmm5,XMMWORD PTR [r14-0x50]
  da92c0:	45 0f 10 46 c0       	movups xmm8,XMMWORD PTR [r14-0x40]
  da92c5:	41 0f 28 e1          	movaps xmm4,xmm9
  da92c9:	0f 59 e7             	mulps  xmm4,xmm7
  da92cc:	41 0f 59 fa          	mulps  xmm7,xmm10
  da92d0:	44 0f 59 d1          	mulps  xmm10,xmm1
  da92d4:	41 0f 5c e2          	subps  xmm4,xmm10
  da92d8:	41 0f 59 c9          	mulps  xmm1,xmm9
  da92dc:	0f 58 cf             	addps  xmm1,xmm7
  da92df:	0f 28 fe             	movaps xmm7,xmm6
  da92e2:	0f 59 fa             	mulps  xmm7,xmm2
  da92e5:	44 0f 28 c8          	movaps xmm9,xmm0
  da92e9:	44 0f 59 cb          	mulps  xmm9,xmm3
  da92ed:	44 0f 5c cf          	subps  xmm9,xmm7
  da92f1:	0f 59 de             	mulps  xmm3,xmm6
  da92f4:	0f 59 d0             	mulps  xmm2,xmm0
  da92f7:	0f 58 d3             	addps  xmm2,xmm3
  da92fa:	0f 28 fd             	movaps xmm7,xmm5
  da92fd:	41 0f 59 f9          	mulps  xmm7,xmm9
  da9301:	45 0f 59 c8          	mulps  xmm9,xmm8
  da9305:	44 0f 59 c2          	mulps  xmm8,xmm2
  da9309:	41 0f 5c f8          	subps  xmm7,xmm8
  da930d:	0f 59 d5             	mulps  xmm2,xmm5
  da9310:	41 0f 58 d1          	addps  xmm2,xmm9
  da9314:	45 0f 10 46 d0       	movups xmm8,XMMWORD PTR [r14-0x30]
  da9319:	45 0f 10 4e e0       	movups xmm9,XMMWORD PTR [r14-0x20]
  da931e:	0f 10 6c 0a 40       	movups xmm5,XMMWORD PTR [rdx+rcx*1+0x40]
  da9323:	0f 10 5c 0a 50       	movups xmm3,XMMWORD PTR [rdx+rcx*1+0x50]
  da9328:	44 0f 28 d6          	movaps xmm10,xmm6
  da932c:	44 0f 59 d3          	mulps  xmm10,xmm3
  da9330:	44 0f 28 d8          	movaps xmm11,xmm0
  da9334:	44 0f 59 dd          	mulps  xmm11,xmm5
  da9338:	45 0f 5c da          	subps  xmm11,xmm10
  da933c:	0f 59 ee             	mulps  xmm5,xmm6
  da933f:	0f 59 d8             	mulps  xmm3,xmm0
  da9342:	0f 58 dd             	addps  xmm3,xmm5
  da9345:	41 0f 28 e8          	movaps xmm5,xmm8
  da9349:	41 0f 59 eb          	mulps  xmm5,xmm11
  da934d:	45 0f 59 d9          	mulps  xmm11,xmm9
  da9351:	44 0f 59 cb          	mulps  xmm9,xmm3
  da9355:	41 0f 5c e9          	subps  xmm5,xmm9
  da9359:	41 0f 59 d8          	mulps  xmm3,xmm8
  da935d:	41 0f 58 db          	addps  xmm3,xmm11
  da9361:	45 0f 10 46 f0       	movups xmm8,XMMWORD PTR [r14-0x10]
  da9366:	45 0f 10 0e          	movups xmm9,XMMWORD PTR [r14]
  da936a:	44 0f 10 54 0a 60    	movups xmm10,XMMWORD PTR [rdx+rcx*1+0x60]
  da9370:	44 0f 10 5c 0a 70    	movups xmm11,XMMWORD PTR [rdx+rcx*1+0x70]
  da9376:	44 0f 28 e6          	movaps xmm12,xmm6
  da937a:	45 0f 59 e3          	mulps  xmm12,xmm11
  da937e:	44 0f 28 e8          	movaps xmm13,xmm0
  da9382:	45 0f 59 ea          	mulps  xmm13,xmm10
  da9386:	45 0f 5c ec          	subps  xmm13,xmm12
  da938a:	41 0f 59 f2          	mulps  xmm6,xmm10
  da938e:	41 0f 59 c3          	mulps  xmm0,xmm11
  da9392:	0f 58 c6             	addps  xmm0,xmm6
  da9395:	45 0f 28 d0          	movaps xmm10,xmm8
  da9399:	45 0f 59 d5          	mulps  xmm10,xmm13
  da939d:	45 0f 59 e9          	mulps  xmm13,xmm9
  da93a1:	44 0f 59 c8          	mulps  xmm9,xmm0
  da93a5:	45 0f 5c d1          	subps  xmm10,xmm9
  da93a9:	41 0f 59 c0          	mulps  xmm0,xmm8
  da93ad:	41 0f 58 c5          	addps  xmm0,xmm13
  da93b1:	44 0f 28 cc          	movaps xmm9,xmm4
  da93b5:	44 0f 14 cf          	unpcklps xmm9,xmm7
  da93b9:	0f 28 f5             	movaps xmm6,xmm5
  da93bc:	41 0f 14 f2          	unpcklps xmm6,xmm10
  da93c0:	45 0f 28 c1          	movaps xmm8,xmm9
  da93c4:	44 0f 16 c6          	movlhps xmm8,xmm6
  da93c8:	41 0f 12 f1          	movhlps xmm6,xmm9
  da93cc:	0f 15 e7             	unpckhps xmm4,xmm7
  da93cf:	41 0f 15 ea          	unpckhps xmm5,xmm10
  da93d3:	0f 28 fc             	movaps xmm7,xmm4
  da93d6:	0f 16 fd             	movlhps xmm7,xmm5
  da93d9:	0f 12 ec             	movhlps xmm5,xmm4
  da93dc:	44 0f 28 d1          	movaps xmm10,xmm1
  da93e0:	44 0f 14 d2          	unpcklps xmm10,xmm2
  da93e4:	0f 28 e3             	movaps xmm4,xmm3
  da93e7:	0f 14 e0             	unpcklps xmm4,xmm0
  da93ea:	45 0f 28 ca          	movaps xmm9,xmm10
  da93ee:	44 0f 16 cc          	movlhps xmm9,xmm4
  da93f2:	41 0f 12 e2          	movhlps xmm4,xmm10
  da93f6:	0f 15 ca             	unpckhps xmm1,xmm2
  da93f9:	0f 15 d8             	unpckhps xmm3,xmm0
  da93fc:	0f 28 c1             	movaps xmm0,xmm1
  da93ff:	0f 16 c3             	movlhps xmm0,xmm3
  da9402:	0f 12 d9             	movhlps xmm3,xmm1
  da9405:	80 7c 24 58 00       	cmp    BYTE PTR [rsp+0x58],0x0
  da940a:	0f 84 10 fe ff ff    	je     da9220 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2160>
  da9410:	48 8d 4e 10          	lea    rcx,[rsi+0x10]
  da9414:	4c 8d 4e 20          	lea    r9,[rsi+0x20]
  da9418:	4c 8d 56 30          	lea    r10,[rsi+0x30]
  da941c:	4c 8d 5e 40          	lea    r11,[rsi+0x40]
  da9420:	48 8d 5e 50          	lea    rbx,[rsi+0x50]
  da9424:	4c 8d 7e 60          	lea    r15,[rsi+0x60]
  da9428:	4c 8d 66 70          	lea    r12,[rsi+0x70]
  da942c:	44 0f 2b 06          	movntps XMMWORD PTR [rsi],xmm8
  da9430:	44 0f 2b 09          	movntps XMMWORD PTR [rcx],xmm9
  da9434:	41 0f 2b 31          	movntps XMMWORD PTR [r9],xmm6
  da9438:	41 0f 2b 22          	movntps XMMWORD PTR [r10],xmm4
  da943c:	41 0f 2b 3b          	movntps XMMWORD PTR [r11],xmm7
  da9440:	0f 2b 03             	movntps XMMWORD PTR [rbx],xmm0
  da9443:	41 0f 2b 2f          	movntps XMMWORD PTR [r15],xmm5
  da9447:	41 0f 2b 1c 24       	movntps XMMWORD PTR [r12],xmm3
  da944c:	e9 f0 fd ff ff       	jmp    da9241 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2181>
  da9451:	48 8b 84 24 60 02 00 	mov    rax,QWORD PTR [rsp+0x260]
  da9458:	00 
  da9459:	48 01 d8             	add    rax,rbx
  da945c:	48 8b 8c 24 78 02 00 	mov    rcx,QWORD PTR [rsp+0x278]
  da9463:	00 
  da9464:	48 8d 3c c1          	lea    rdi,[rcx+rax*8]
  da9468:	48 8d 84 24 60 01 00 	lea    rax,[rsp+0x160]
  da946f:	00 
  da9470:	0f 57 c0             	xorps  xmm0,xmm0
  da9473:	0f 29 40 50          	movaps XMMWORD PTR [rax+0x50],xmm0
  da9477:	0f 29 40 40          	movaps XMMWORD PTR [rax+0x40],xmm0
  da947b:	0f 29 40 30          	movaps XMMWORD PTR [rax+0x30],xmm0
  da947f:	0f 29 40 20          	movaps XMMWORD PTR [rax+0x20],xmm0
  da9483:	0f 29 40 10          	movaps XMMWORD PTR [rax+0x10],xmm0
  da9487:	0f 29 00             	movaps XMMWORD PTR [rax],xmm0
  da948a:	45 0f 15 c8          	unpckhps xmm9,xmm8
  da948e:	45 0f 15 da          	unpckhps xmm11,xmm10
  da9492:	44 0f 29 8c 24 40 01 	movaps XMMWORD PTR [rsp+0x140],xmm9
  da9499:	00 00 
  da949b:	44 0f 29 9c 24 50 01 	movaps XMMWORD PTR [rsp+0x150],xmm11
  da94a2:	00 00 
  da94a4:	48 8d b4 24 40 01 00 	lea    rsi,[rsp+0x140]
  da94ab:	00 
  da94ac:	ff 15 ee 87 4a 00    	call   QWORD PTR [rip+0x4a87ee]        # 1251ca0 <memcpy@GLIBC_2.14>
  da94b2:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  da94b9:	1f 84 00 00 00 00 00 
  da94c0:	49 ff cd             	dec    r13
  da94c3:	49 83 c4 fc          	add    r12,0xfffffffffffffffc
  da94c7:	49 83 c7 20          	add    r15,0x20
  da94cb:	48 83 c3 04          	add    rbx,0x4
  da94cf:	4d 85 ed             	test   r13,r13
  da94d2:	0f 84 28 f3 ff ff    	je     da8800 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1740>
  da94d8:	48 8b 8c 24 a0 00 00 	mov    rcx,QWORD PTR [rsp+0xa0]
  da94df:	00 
  da94e0:	48 8d 04 19          	lea    rax,[rcx+rbx*1]
  da94e4:	49 83 fc 04          	cmp    r12,0x4
  da94e8:	ba 04 00 00 00       	mov    edx,0x4
  da94ed:	49 0f 42 d4          	cmovb  rdx,r12
  da94f1:	0f 57 c0             	xorps  xmm0,xmm0
  da94f4:	48 85 c0             	test   rax,rax
  da94f7:	74 77                	je     da9570 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x24b0>
  da94f9:	47 0f 10 04 be       	movups xmm8,XMMWORD PTR [r14+r15*4]
  da94fe:	43 0f 10 4c be 10    	movups xmm1,XMMWORD PTR [r14+r15*4+0x10]
  da9504:	48 8b b4 24 c8 00 00 	mov    rsi,QWORD PTR [rsp+0xc8]
  da950b:	00 
  da950c:	42 0f 10 54 be 90    	movups xmm2,XMMWORD PTR [rsi+r15*4-0x70]
  da9512:	42 0f 10 5c be a0    	movups xmm3,XMMWORD PTR [rsi+r15*4-0x60]
  da9518:	0f 28 e1             	movaps xmm4,xmm1
  da951b:	0f 59 e3             	mulps  xmm4,xmm3
  da951e:	45 0f 28 c8          	movaps xmm9,xmm8
  da9522:	44 0f 59 ca          	mulps  xmm9,xmm2
  da9526:	44 0f 5c cc          	subps  xmm9,xmm4
  da952a:	0f 59 ca             	mulps  xmm1,xmm2
  da952d:	44 0f 59 c3          	mulps  xmm8,xmm3
  da9531:	44 0f 58 c1          	addps  xmm8,xmm1
  da9535:	49 83 fc 02          	cmp    r12,0x2
  da9539:	73 75                	jae    da95b0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x24f0>
  da953b:	0f 57 c9             	xorps  xmm1,xmm1
  da953e:	45 0f 57 d2          	xorps  xmm10,xmm10
  da9542:	0f 57 db             	xorps  xmm3,xmm3
  da9545:	0f 57 d2             	xorps  xmm2,xmm2
  da9548:	45 0f 57 db          	xorps  xmm11,xmm11
  da954c:	48 8b 84 24 a8 00 00 	mov    rax,QWORD PTR [rsp+0xa8]
  da9553:	00 
  da9554:	48 39 44 24 30       	cmp    QWORD PTR [rsp+0x30],rax
  da9559:	0f 84 61 ff ff ff    	je     da94c0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2400>
  da955f:	e9 4c 01 00 00       	jmp    da96b0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x25f0>
  da9564:	66 66 66 2e 0f 1f 84 	data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  da956b:	00 00 00 00 00 
  da9570:	0f 57 c9             	xorps  xmm1,xmm1
  da9573:	45 0f 57 d2          	xorps  xmm10,xmm10
  da9577:	45 0f 57 c0          	xorps  xmm8,xmm8
  da957b:	0f 57 db             	xorps  xmm3,xmm3
  da957e:	0f 57 d2             	xorps  xmm2,xmm2
  da9581:	45 0f 57 db          	xorps  xmm11,xmm11
  da9585:	45 0f 57 c9          	xorps  xmm9,xmm9
  da9589:	48 8b 84 24 a8 00 00 	mov    rax,QWORD PTR [rsp+0xa8]
  da9590:	00 
  da9591:	48 39 44 24 30       	cmp    QWORD PTR [rsp+0x30],rax
  da9596:	0f 84 24 ff ff ff    	je     da94c0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2400>
  da959c:	e9 0f 01 00 00       	jmp    da96b0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x25f0>
  da95a1:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  da95a8:	0f 1f 84 00 00 00 00 
  da95af:	00 
  da95b0:	48 8d 04 19          	lea    rax,[rcx+rbx*1]
  da95b4:	48 83 c0 02          	add    rax,0x2
  da95b8:	43 0f 10 4c be 20    	movups xmm1,XMMWORD PTR [r14+r15*4+0x20]
  da95be:	43 0f 10 5c be 30    	movups xmm3,XMMWORD PTR [r14+r15*4+0x30]
  da95c4:	42 0f 10 64 be b0    	movups xmm4,XMMWORD PTR [rsi+r15*4-0x50]
  da95ca:	42 0f 10 6c be c0    	movups xmm5,XMMWORD PTR [rsi+r15*4-0x40]
  da95d0:	0f 28 f3             	movaps xmm6,xmm3
  da95d3:	0f 59 f5             	mulps  xmm6,xmm5
  da95d6:	0f 28 d1             	movaps xmm2,xmm1
  da95d9:	0f 59 d4             	mulps  xmm2,xmm4
  da95dc:	0f 5c d6             	subps  xmm2,xmm6
  da95df:	0f 59 dc             	mulps  xmm3,xmm4
  da95e2:	0f 59 cd             	mulps  xmm1,xmm5
  da95e5:	0f 58 cb             	addps  xmm1,xmm3
  da95e8:	48 85 c0             	test   rax,rax
  da95eb:	0f 84 86 00 00 00    	je     da9677 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x25b7>
  da95f1:	48 8d 04 19          	lea    rax,[rcx+rbx*1]
  da95f5:	48 83 c0 03          	add    rax,0x3
  da95f9:	47 0f 10 54 be 40    	movups xmm10,XMMWORD PTR [r14+r15*4+0x40]
  da95ff:	43 0f 10 5c be 50    	movups xmm3,XMMWORD PTR [r14+r15*4+0x50]
  da9605:	42 0f 10 64 be d0    	movups xmm4,XMMWORD PTR [rsi+r15*4-0x30]
  da960b:	42 0f 10 6c be e0    	movups xmm5,XMMWORD PTR [rsi+r15*4-0x20]
  da9611:	0f 28 f3             	movaps xmm6,xmm3
  da9614:	0f 59 f5             	mulps  xmm6,xmm5
  da9617:	45 0f 28 da          	movaps xmm11,xmm10
  da961b:	44 0f 59 dc          	mulps  xmm11,xmm4
  da961f:	44 0f 5c de          	subps  xmm11,xmm6
  da9623:	0f 59 dc             	mulps  xmm3,xmm4
  da9626:	44 0f 59 d5          	mulps  xmm10,xmm5
  da962a:	44 0f 58 d3          	addps  xmm10,xmm3
  da962e:	48 85 c0             	test   rax,rax
  da9631:	74 64                	je     da9697 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x25d7>
  da9633:	43 0f 10 44 be 60    	movups xmm0,XMMWORD PTR [r14+r15*4+0x60]
  da9639:	43 0f 10 64 be 70    	movups xmm4,XMMWORD PTR [r14+r15*4+0x70]
  da963f:	42 0f 10 6c be f0    	movups xmm5,XMMWORD PTR [rsi+r15*4-0x10]
  da9645:	42 0f 10 34 be       	movups xmm6,XMMWORD PTR [rsi+r15*4]
  da964a:	0f 28 fc             	movaps xmm7,xmm4
  da964d:	0f 59 fe             	mulps  xmm7,xmm6
  da9650:	0f 28 d8             	movaps xmm3,xmm0
  da9653:	0f 59 dd             	mulps  xmm3,xmm5
  da9656:	0f 5c df             	subps  xmm3,xmm7
  da9659:	0f 59 e5             	mulps  xmm4,xmm5
  da965c:	0f 59 c6             	mulps  xmm0,xmm6
  da965f:	0f 58 c4             	addps  xmm0,xmm4
  da9662:	48 8b 84 24 a8 00 00 	mov    rax,QWORD PTR [rsp+0xa8]
  da9669:	00 
  da966a:	48 39 44 24 30       	cmp    QWORD PTR [rsp+0x30],rax
  da966f:	0f 84 4b fe ff ff    	je     da94c0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2400>
  da9675:	eb 39                	jmp    da96b0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x25f0>
  da9677:	45 0f 57 d2          	xorps  xmm10,xmm10
  da967b:	0f 57 db             	xorps  xmm3,xmm3
  da967e:	45 0f 57 db          	xorps  xmm11,xmm11
  da9682:	48 8b 84 24 a8 00 00 	mov    rax,QWORD PTR [rsp+0xa8]
  da9689:	00 
  da968a:	48 39 44 24 30       	cmp    QWORD PTR [rsp+0x30],rax
  da968f:	0f 84 2b fe ff ff    	je     da94c0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2400>
  da9695:	eb 19                	jmp    da96b0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x25f0>
  da9697:	0f 57 db             	xorps  xmm3,xmm3
  da969a:	48 8b 84 24 a8 00 00 	mov    rax,QWORD PTR [rsp+0xa8]
  da96a1:	00 
  da96a2:	48 39 44 24 30       	cmp    QWORD PTR [rsp+0x30],rax
  da96a7:	0f 84 13 fe ff ff    	je     da94c0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2400>
  da96ad:	0f 1f 00             	nop    DWORD PTR [rax]
  da96b0:	41 0f 28 e1          	movaps xmm4,xmm9
  da96b4:	0f 14 e2             	unpcklps xmm4,xmm2
  da96b7:	41 0f 28 eb          	movaps xmm5,xmm11
  da96bb:	0f 14 eb             	unpcklps xmm5,xmm3
  da96be:	44 0f 15 ca          	unpckhps xmm9,xmm2
  da96c2:	44 0f 15 db          	unpckhps xmm11,xmm3
  da96c6:	41 0f 28 f0          	movaps xmm6,xmm8
  da96ca:	0f 14 f1             	unpcklps xmm6,xmm1
  da96cd:	41 0f 28 da          	movaps xmm3,xmm10
  da96d1:	0f 14 d8             	unpcklps xmm3,xmm0
  da96d4:	44 0f 15 c1          	unpckhps xmm8,xmm1
  da96d8:	44 0f 15 d0          	unpckhps xmm10,xmm0
  da96dc:	48 c1 e2 03          	shl    rdx,0x3
  da96e0:	0f 28 c4             	movaps xmm0,xmm4
  da96e3:	0f 14 c6             	unpcklps xmm0,xmm6
  da96e6:	0f 28 cd             	movaps xmm1,xmm5
  da96e9:	0f 14 cb             	unpcklps xmm1,xmm3
  da96ec:	49 83 fc 03          	cmp    r12,0x3
  da96f0:	0f 86 9a 00 00 00    	jbe    da9790 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x26d0>
  da96f6:	48 8b 84 24 98 00 00 	mov    rax,QWORD PTR [rsp+0x98]
  da96fd:	00 
  da96fe:	0f 11 04 d8          	movups XMMWORD PTR [rax+rbx*8],xmm0
  da9702:	0f 11 4c d8 10       	movups XMMWORD PTR [rax+rbx*8+0x10],xmm1
  da9707:	48 83 7c 24 70 02    	cmp    QWORD PTR [rsp+0x70],0x2
  da970d:	0f 82 ad fd ff ff    	jb     da94c0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2400>
  da9713:	0f 15 e6             	unpckhps xmm4,xmm6
  da9716:	0f 15 eb             	unpckhps xmm5,xmm3
  da9719:	48 8b 84 24 e8 00 00 	mov    rax,QWORD PTR [rsp+0xe8]
  da9720:	00 
  da9721:	0f 11 24 d8          	movups XMMWORD PTR [rax+rbx*8],xmm4
  da9725:	0f 11 6c d8 10       	movups XMMWORD PTR [rax+rbx*8+0x10],xmm5
  da972a:	0f 84 90 fd ff ff    	je     da94c0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2400>
  da9730:	41 0f 28 c1          	movaps xmm0,xmm9
  da9734:	41 0f 14 c0          	unpcklps xmm0,xmm8
  da9738:	41 0f 28 cb          	movaps xmm1,xmm11
  da973c:	41 0f 14 ca          	unpcklps xmm1,xmm10
  da9740:	48 8b 84 24 d8 00 00 	mov    rax,QWORD PTR [rsp+0xd8]
  da9747:	00 
  da9748:	0f 11 04 d8          	movups XMMWORD PTR [rax+rbx*8],xmm0
  da974c:	0f 11 4c d8 10       	movups XMMWORD PTR [rax+rbx*8+0x10],xmm1
  da9751:	48 83 7c 24 70 03    	cmp    QWORD PTR [rsp+0x70],0x3
  da9757:	0f 84 63 fd ff ff    	je     da94c0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2400>
  da975d:	49 83 fc 03          	cmp    r12,0x3
  da9761:	0f 86 ea fc ff ff    	jbe    da9451 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2391>
  da9767:	45 0f 15 c8          	unpckhps xmm9,xmm8
  da976b:	45 0f 15 da          	unpckhps xmm11,xmm10
  da976f:	48 8b 84 24 08 01 00 	mov    rax,QWORD PTR [rsp+0x108]
  da9776:	00 
  da9777:	44 0f 11 0c d8       	movups XMMWORD PTR [rax+rbx*8],xmm9
  da977c:	44 0f 11 5c d8 10    	movups XMMWORD PTR [rax+rbx*8+0x10],xmm11
  da9782:	e9 39 fd ff ff       	jmp    da94c0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2400>
  da9787:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  da978e:	00 00 
  da9790:	48 8b 84 24 98 00 00 	mov    rax,QWORD PTR [rsp+0x98]
  da9797:	00 
  da9798:	48 8d 3c d8          	lea    rdi,[rax+rbx*8]
  da979c:	48 8d 84 24 60 01 00 	lea    rax,[rsp+0x160]
  da97a3:	00 
  da97a4:	0f 57 d2             	xorps  xmm2,xmm2
  da97a7:	0f 29 50 50          	movaps XMMWORD PTR [rax+0x50],xmm2
  da97ab:	0f 29 50 40          	movaps XMMWORD PTR [rax+0x40],xmm2
  da97af:	0f 29 50 30          	movaps XMMWORD PTR [rax+0x30],xmm2
  da97b3:	0f 29 50 20          	movaps XMMWORD PTR [rax+0x20],xmm2
  da97b7:	0f 29 50 10          	movaps XMMWORD PTR [rax+0x10],xmm2
  da97bb:	0f 29 10             	movaps XMMWORD PTR [rax],xmm2
  da97be:	0f 29 84 24 40 01 00 	movaps XMMWORD PTR [rsp+0x140],xmm0
  da97c5:	00 
  da97c6:	0f 29 8c 24 50 01 00 	movaps XMMWORD PTR [rsp+0x150],xmm1
  da97cd:	00 
  da97ce:	48 8d b4 24 40 01 00 	lea    rsi,[rsp+0x140]
  da97d5:	00 
  da97d6:	48 89 54 24 68       	mov    QWORD PTR [rsp+0x68],rdx
  da97db:	44 0f 29 84 24 30 02 	movaps XMMWORD PTR [rsp+0x230],xmm8
  da97e2:	00 00 
  da97e4:	44 0f 29 8c 24 00 02 	movaps XMMWORD PTR [rsp+0x200],xmm9
  da97eb:	00 00 
  da97ed:	44 0f 29 94 24 f0 01 	movaps XMMWORD PTR [rsp+0x1f0],xmm10
  da97f4:	00 00 
  da97f6:	44 0f 29 9c 24 e0 01 	movaps XMMWORD PTR [rsp+0x1e0],xmm11
  da97fd:	00 00 
  da97ff:	0f 29 a4 24 30 01 00 	movaps XMMWORD PTR [rsp+0x130],xmm4
  da9806:	00 
  da9807:	0f 29 ac 24 20 02 00 	movaps XMMWORD PTR [rsp+0x220],xmm5
  da980e:	00 
  da980f:	0f 29 9c 24 10 02 00 	movaps XMMWORD PTR [rsp+0x210],xmm3
  da9816:	00 
  da9817:	0f 29 b4 24 50 02 00 	movaps XMMWORD PTR [rsp+0x250],xmm6
  da981e:	00 
  da981f:	ff 15 7b 84 4a 00    	call   QWORD PTR [rip+0x4a847b]        # 1251ca0 <memcpy@GLIBC_2.14>
  da9825:	0f 28 a4 24 50 02 00 	movaps xmm4,XMMWORD PTR [rsp+0x250]
  da982c:	00 
  da982d:	0f 28 9c 24 10 02 00 	movaps xmm3,XMMWORD PTR [rsp+0x210]
  da9834:	00 
  da9835:	0f 28 94 24 20 02 00 	movaps xmm2,XMMWORD PTR [rsp+0x220]
  da983c:	00 
  da983d:	0f 28 8c 24 30 01 00 	movaps xmm1,XMMWORD PTR [rsp+0x130]
  da9844:	00 
  da9845:	48 8b 54 24 68       	mov    rdx,QWORD PTR [rsp+0x68]
  da984a:	48 83 7c 24 70 02    	cmp    QWORD PTR [rsp+0x70],0x2
  da9850:	0f 82 6a fc ff ff    	jb     da94c0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2400>
  da9856:	48 8b 84 24 e8 00 00 	mov    rax,QWORD PTR [rsp+0xe8]
  da985d:	00 
  da985e:	48 8d 3c d8          	lea    rdi,[rax+rbx*8]
  da9862:	48 8d 84 24 60 01 00 	lea    rax,[rsp+0x160]
  da9869:	00 
  da986a:	0f 57 c0             	xorps  xmm0,xmm0
  da986d:	0f 29 40 50          	movaps XMMWORD PTR [rax+0x50],xmm0
  da9871:	0f 29 40 40          	movaps XMMWORD PTR [rax+0x40],xmm0
  da9875:	0f 29 40 30          	movaps XMMWORD PTR [rax+0x30],xmm0
  da9879:	0f 29 40 20          	movaps XMMWORD PTR [rax+0x20],xmm0
  da987d:	0f 29 40 10          	movaps XMMWORD PTR [rax+0x10],xmm0
  da9881:	0f 29 00             	movaps XMMWORD PTR [rax],xmm0
  da9884:	0f 15 cc             	unpckhps xmm1,xmm4
  da9887:	0f 15 d3             	unpckhps xmm2,xmm3
  da988a:	0f 29 8c 24 40 01 00 	movaps XMMWORD PTR [rsp+0x140],xmm1
  da9891:	00 
  da9892:	0f 29 94 24 50 01 00 	movaps XMMWORD PTR [rsp+0x150],xmm2
  da9899:	00 
  da989a:	48 8d b4 24 40 01 00 	lea    rsi,[rsp+0x140]
  da98a1:	00 
  da98a2:	ff 15 f8 83 4a 00    	call   QWORD PTR [rip+0x4a83f8]        # 1251ca0 <memcpy@GLIBC_2.14>
  da98a8:	0f 28 a4 24 e0 01 00 	movaps xmm4,XMMWORD PTR [rsp+0x1e0]
  da98af:	00 
  da98b0:	0f 28 9c 24 f0 01 00 	movaps xmm3,XMMWORD PTR [rsp+0x1f0]
  da98b7:	00 
  da98b8:	0f 28 94 24 00 02 00 	movaps xmm2,XMMWORD PTR [rsp+0x200]
  da98bf:	00 
  da98c0:	0f 28 8c 24 30 02 00 	movaps xmm1,XMMWORD PTR [rsp+0x230]
  da98c7:	00 
  da98c8:	48 8b 54 24 68       	mov    rdx,QWORD PTR [rsp+0x68]
  da98cd:	48 83 7c 24 70 02    	cmp    QWORD PTR [rsp+0x70],0x2
  da98d3:	0f 84 e7 fb ff ff    	je     da94c0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2400>
  da98d9:	48 8b 84 24 d8 00 00 	mov    rax,QWORD PTR [rsp+0xd8]
  da98e0:	00 
  da98e1:	48 8d 3c d8          	lea    rdi,[rax+rbx*8]
  da98e5:	48 8d 84 24 60 01 00 	lea    rax,[rsp+0x160]
  da98ec:	00 
  da98ed:	0f 57 c0             	xorps  xmm0,xmm0
  da98f0:	0f 29 40 50          	movaps XMMWORD PTR [rax+0x50],xmm0
  da98f4:	0f 29 40 40          	movaps XMMWORD PTR [rax+0x40],xmm0
  da98f8:	0f 29 40 30          	movaps XMMWORD PTR [rax+0x30],xmm0
  da98fc:	0f 29 40 20          	movaps XMMWORD PTR [rax+0x20],xmm0
  da9900:	0f 29 40 10          	movaps XMMWORD PTR [rax+0x10],xmm0
  da9904:	0f 29 00             	movaps XMMWORD PTR [rax],xmm0
  da9907:	0f 28 c2             	movaps xmm0,xmm2
  da990a:	0f 14 c1             	unpcklps xmm0,xmm1
  da990d:	0f 28 cc             	movaps xmm1,xmm4
  da9910:	0f 14 cb             	unpcklps xmm1,xmm3
  da9913:	0f 29 84 24 40 01 00 	movaps XMMWORD PTR [rsp+0x140],xmm0
  da991a:	00 
  da991b:	0f 29 8c 24 50 01 00 	movaps XMMWORD PTR [rsp+0x150],xmm1
  da9922:	00 
  da9923:	48 8d b4 24 40 01 00 	lea    rsi,[rsp+0x140]
  da992a:	00 
  da992b:	ff 15 6f 83 4a 00    	call   QWORD PTR [rip+0x4a836f]        # 1251ca0 <memcpy@GLIBC_2.14>
  da9931:	44 0f 28 9c 24 e0 01 	movaps xmm11,XMMWORD PTR [rsp+0x1e0]
  da9938:	00 00 
  da993a:	44 0f 28 94 24 f0 01 	movaps xmm10,XMMWORD PTR [rsp+0x1f0]
  da9941:	00 00 
  da9943:	44 0f 28 8c 24 00 02 	movaps xmm9,XMMWORD PTR [rsp+0x200]
  da994a:	00 00 
  da994c:	44 0f 28 84 24 30 02 	movaps xmm8,XMMWORD PTR [rsp+0x230]
  da9953:	00 00 
  da9955:	48 8b 54 24 68       	mov    rdx,QWORD PTR [rsp+0x68]
  da995a:	48 83 7c 24 70 03    	cmp    QWORD PTR [rsp+0x70],0x3
  da9960:	0f 84 5a fb ff ff    	je     da94c0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2400>
  da9966:	48 8b 84 24 08 01 00 	mov    rax,QWORD PTR [rsp+0x108]
  da996d:	00 
  da996e:	4a 8d 3c 38          	lea    rdi,[rax+r15*1]
  da9972:	e9 f1 fa ff ff       	jmp    da9468 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x23a8>
  da9977:	80 7c 24 58 00       	cmp    BYTE PTR [rsp+0x58],0x0
  da997c:	74 47                	je     da99c5 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2905>
  da997e:	0f ae f8             	sfence
  da9981:	f6 84 24 f8 00 00 00 	test   BYTE PTR [rsp+0xf8],0x3f
  da9988:	3f 
  da9989:	0f 94 c0             	sete   al
  da998c:	89 44 24 70          	mov    DWORD PTR [rsp+0x70],eax
  da9990:	4d 85 e4             	test   r12,r12
  da9993:	75 41                	jne    da99d6 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2916>
  da9995:	e9 1d 21 00 00       	jmp    dabab7 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x49f7>
  da999a:	80 7c 24 58 00       	cmp    BYTE PTR [rsp+0x58],0x0
  da999f:	0f 84 96 10 00 00    	je     daaa3b <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x397b>
  da99a5:	0f ae f8             	sfence
  da99a8:	f6 84 24 f8 00 00 00 	test   BYTE PTR [rsp+0xf8],0x3f
  da99af:	3f 
  da99b0:	0f 94 c0             	sete   al
  da99b3:	89 44 24 70          	mov    DWORD PTR [rsp+0x70],eax
  da99b7:	4d 85 e4             	test   r12,r12
  da99ba:	0f 85 8c 10 00 00    	jne    daaa4c <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x398c>
  da99c0:	e9 f2 20 00 00       	jmp    dabab7 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x49f7>
  da99c5:	c7 44 24 70 00 00 00 	mov    DWORD PTR [rsp+0x70],0x0
  da99cc:	00 
  da99cd:	4d 85 e4             	test   r12,r12
  da99d0:	0f 84 e1 20 00 00    	je     dabab7 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x49f7>
  da99d6:	48 8d 04 5b          	lea    rax,[rbx+rbx*2]
  da99da:	4c 89 e6             	mov    rsi,r12
  da99dd:	48 c1 ee 02          	shr    rsi,0x2
  da99e1:	44 89 e1             	mov    ecx,r12d
  da99e4:	83 e1 03             	and    ecx,0x3
  da99e7:	48 83 f9 01          	cmp    rcx,0x1
  da99eb:	48 83 de ff          	sbb    rsi,0xffffffffffffffff
  da99ef:	48 8b 4c 24 78       	mov    rcx,QWORD PTR [rsp+0x78]
  da99f4:	48 8d 14 c1          	lea    rdx,[rcx+rax*8]
  da99f8:	48 89 94 24 b0 00 00 	mov    QWORD PTR [rsp+0xb0],rdx
  da99ff:	00 
  da9a00:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  da9a05:	48 01 d2             	add    rdx,rdx
  da9a08:	48 89 94 24 c8 00 00 	mov    QWORD PTR [rsp+0xc8],rdx
  da9a0f:	00 
  da9a10:	48 8d 44 c1 20       	lea    rax,[rcx+rax*8+0x20]
  da9a15:	48 89 84 24 98 00 00 	mov    QWORD PTR [rsp+0x98],rax
  da9a1c:	00 
  da9a1d:	48 8b 84 24 80 00 00 	mov    rax,QWORD PTR [rsp+0x80]
  da9a24:	00 
  da9a25:	48 ff c8             	dec    rax
  da9a28:	48 89 84 24 30 01 00 	mov    QWORD PTR [rsp+0x130],rax
  da9a2f:	00 
  da9a30:	4a 8d 04 e5 00 00 00 	lea    rax,[r12*8+0x0]
  da9a37:	00 
  da9a38:	48 89 84 24 a0 00 00 	mov    QWORD PTR [rsp+0xa0],rax
  da9a3f:	00 
  da9a40:	45 31 c0             	xor    r8d,r8d
  da9a43:	eb 39                	jmp    da9a7e <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x29be>
  da9a45:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  da9a4c:	00 00 00 00 
  da9a50:	4c 8b 44 24 60       	mov    r8,QWORD PTR [rsp+0x60]
  da9a55:	49 83 c0 04          	add    r8,0x4
  da9a59:	48 8b b4 24 f0 00 00 	mov    rsi,QWORD PTR [rsp+0xf0]
  da9a60:	00 
  da9a61:	48 ff ce             	dec    rsi
  da9a64:	48 83 84 24 f8 00 00 	add    QWORD PTR [rsp+0xf8],0x20
  da9a6b:	00 20 
  da9a6d:	48 85 f6             	test   rsi,rsi
  da9a70:	4c 8b b4 24 90 00 00 	mov    r14,QWORD PTR [rsp+0x90]
  da9a77:	00 
  da9a78:	0f 84 39 20 00 00    	je     dabab7 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x49f7>
  da9a7e:	4c 89 e0             	mov    rax,r12
  da9a81:	4c 29 c0             	sub    rax,r8
  da9a84:	48 89 84 24 a8 00 00 	mov    QWORD PTR [rsp+0xa8],rax
  da9a8b:	00 
  da9a8c:	48 83 f8 04          	cmp    rax,0x4
  da9a90:	b9 04 00 00 00       	mov    ecx,0x4
  da9a95:	48 0f 42 c8          	cmovb  rcx,rax
  da9a99:	48 89 4c 24 58       	mov    QWORD PTR [rsp+0x58],rcx
  da9a9e:	80 bc 24 28 01 00 00 	cmp    BYTE PTR [rsp+0x128],0x0
  da9aa5:	00 
  da9aa6:	48 89 b4 24 f0 00 00 	mov    QWORD PTR [rsp+0xf0],rsi
  da9aad:	00 
  da9aae:	4c 89 44 24 60       	mov    QWORD PTR [rsp+0x60],r8
  da9ab3:	74 7b                	je     da9b30 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2a70>
  da9ab5:	48 83 bc 24 80 00 00 	cmp    QWORD PTR [rsp+0x80],0x0
  da9abc:	00 00 
  da9abe:	0f 84 97 3d 00 00    	je     dad85b <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x679b>
  da9ac4:	48 8b 84 24 b0 00 00 	mov    rax,QWORD PTR [rsp+0xb0]
  da9acb:	00 
  da9acc:	48 8b 00             	mov    rax,QWORD PTR [rax]
  da9acf:	48 83 c0 fe          	add    rax,0xfffffffffffffffe
  da9ad3:	48 83 f8 0d          	cmp    rax,0xd
  da9ad7:	0f 87 42 3d 00 00    	ja     dad81f <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x675f>
  da9add:	48 8b 8c 24 c8 00 00 	mov    rcx,QWORD PTR [rsp+0xc8]
  da9ae4:	00 
  da9ae5:	49 0f af c8          	imul   rcx,r8
  da9ae9:	48 8b 94 24 d0 00 00 	mov    rdx,QWORD PTR [rsp+0xd0]
  da9af0:	00 
  da9af1:	48 8d 3c 8a          	lea    rdi,[rdx+rcx*4]
  da9af5:	48 8d 0d f8 95 2f ff 	lea    rcx,[rip+0xffffffffff2f95f8]        # a30f4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x305a4>
  da9afc:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  da9b00:	48 01 c8             	add    rax,rcx
  da9b03:	ff e0                	jmp    rax
  da9b05:	4c 89 f6             	mov    rsi,r14
  da9b08:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  da9b0d:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  da9b12:	e8 29 c4 ff ff       	call   da5f40 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da9b17:	4d 89 f7             	mov    r15,r14
  da9b1a:	48 83 bc 24 80 00 00 	cmp    QWORD PTR [rsp+0x80],0x2
  da9b21:	00 02 
  da9b23:	0f 83 e7 02 00 00    	jae    da9e10 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2d50>
  da9b29:	e9 e2 0d 00 00       	jmp    daa910 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3850>
  da9b2e:	66 90                	xchg   ax,ax
  da9b30:	48 8b 84 24 d0 00 00 	mov    rax,QWORD PTR [rsp+0xd0]
  da9b37:	00 
  da9b38:	4a 8d 3c c0          	lea    rdi,[rax+r8*8]
  da9b3c:	48 83 bc 24 a8 00 00 	cmp    QWORD PTR [rsp+0xa8],0x3
  da9b43:	00 03 
  da9b45:	76 69                	jbe    da9bb0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2af0>
  da9b47:	48 83 bc 24 80 00 00 	cmp    QWORD PTR [rsp+0x80],0x0
  da9b4e:	00 00 
  da9b50:	0f 84 05 3d 00 00    	je     dad85b <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x679b>
  da9b56:	48 8b 84 24 b0 00 00 	mov    rax,QWORD PTR [rsp+0xb0]
  da9b5d:	00 
  da9b5e:	48 8b 00             	mov    rax,QWORD PTR [rax]
  da9b61:	48 83 c0 fe          	add    rax,0xfffffffffffffffe
  da9b65:	48 83 f8 0d          	cmp    rax,0xd
  da9b69:	0f 87 b0 3c 00 00    	ja     dad81f <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x675f>
  da9b6f:	48 8d 0d 0a 95 2f ff 	lea    rcx,[rip+0xffffffffff2f950a]        # a3080 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x30530>
  da9b76:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  da9b7a:	48 01 c8             	add    rax,rcx
  da9b7d:	ff e0                	jmp    rax
  da9b7f:	4c 89 f6             	mov    rsi,r14
  da9b82:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  da9b87:	4c 89 e1             	mov    rcx,r12
  da9b8a:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  da9b8f:	e8 6c 92 fe ff       	call   d92e00 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da9b94:	4d 89 f7             	mov    r15,r14
  da9b97:	48 83 bc 24 80 00 00 	cmp    QWORD PTR [rsp+0x80],0x2
  da9b9e:	00 02 
  da9ba0:	0f 83 ef 08 00 00    	jae    daa495 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x33d5>
  da9ba6:	e9 65 0d 00 00       	jmp    daa910 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3850>
  da9bab:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  da9bb0:	48 83 bc 24 80 00 00 	cmp    QWORD PTR [rsp+0x80],0x0
  da9bb7:	00 00 
  da9bb9:	0f 84 9c 3c 00 00    	je     dad85b <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x679b>
  da9bbf:	48 8b 84 24 b0 00 00 	mov    rax,QWORD PTR [rsp+0xb0]
  da9bc6:	00 
  da9bc7:	48 8b 00             	mov    rax,QWORD PTR [rax]
  da9bca:	48 83 c0 fe          	add    rax,0xfffffffffffffffe
  da9bce:	48 83 f8 0d          	cmp    rax,0xd
  da9bd2:	0f 87 47 3c 00 00    	ja     dad81f <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x675f>
  da9bd8:	48 8d 0d 2d 94 2f ff 	lea    rcx,[rip+0xffffffffff2f942d]        # a300c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x304bc>
  da9bdf:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  da9be3:	48 01 c8             	add    rax,rcx
  da9be6:	ff e0                	jmp    rax
  da9be8:	4c 89 f6             	mov    rsi,r14
  da9beb:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  da9bf0:	4c 89 e1             	mov    rcx,r12
  da9bf3:	4c 8b 44 24 58       	mov    r8,QWORD PTR [rsp+0x58]
  da9bf8:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  da9bfd:	e8 7e fb fd ff       	call   d89780 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da9c02:	4d 89 f7             	mov    r15,r14
  da9c05:	48 83 bc 24 80 00 00 	cmp    QWORD PTR [rsp+0x80],0x2
  da9c0c:	00 02 
  da9c0e:	0f 83 d6 0a 00 00    	jae    daa6ea <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x362a>
  da9c14:	e9 f7 0c 00 00       	jmp    daa910 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3850>
  da9c19:	4c 89 f6             	mov    rsi,r14
  da9c1c:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  da9c21:	e8 5a ac fe ff       	call   d94880 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da9c26:	4d 89 f7             	mov    r15,r14
  da9c29:	48 83 bc 24 80 00 00 	cmp    QWORD PTR [rsp+0x80],0x2
  da9c30:	00 02 
  da9c32:	0f 83 d8 01 00 00    	jae    da9e10 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2d50>
  da9c38:	e9 d3 0c 00 00       	jmp    daa910 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3850>
  da9c3d:	4c 89 f6             	mov    rsi,r14
  da9c40:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  da9c45:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  da9c4a:	e8 b1 72 fe ff       	call   d90f00 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da9c4f:	4d 89 f7             	mov    r15,r14
  da9c52:	48 83 bc 24 80 00 00 	cmp    QWORD PTR [rsp+0x80],0x2
  da9c59:	00 02 
  da9c5b:	0f 83 af 01 00 00    	jae    da9e10 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2d50>
  da9c61:	e9 aa 0c 00 00       	jmp    daa910 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3850>
  da9c66:	4c 89 f6             	mov    rsi,r14
  da9c69:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  da9c6e:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  da9c73:	e8 c8 b6 ff ff       	call   da5340 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da9c78:	4d 89 f7             	mov    r15,r14
  da9c7b:	48 83 bc 24 80 00 00 	cmp    QWORD PTR [rsp+0x80],0x2
  da9c82:	00 02 
  da9c84:	0f 83 86 01 00 00    	jae    da9e10 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2d50>
  da9c8a:	e9 81 0c 00 00       	jmp    daa910 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3850>
  da9c8f:	4c 89 f6             	mov    rsi,r14
  da9c92:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  da9c97:	e8 e4 74 fe ff       	call   d91180 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da9c9c:	4d 89 f7             	mov    r15,r14
  da9c9f:	48 83 bc 24 80 00 00 	cmp    QWORD PTR [rsp+0x80],0x2
  da9ca6:	00 02 
  da9ca8:	0f 83 62 01 00 00    	jae    da9e10 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2d50>
  da9cae:	e9 5d 0c 00 00       	jmp    daa910 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3850>
  da9cb3:	4c 89 f6             	mov    rsi,r14
  da9cb6:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  da9cbb:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  da9cc0:	e8 fb f7 fd ff       	call   d894c0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da9cc5:	4d 89 f7             	mov    r15,r14
  da9cc8:	48 83 bc 24 80 00 00 	cmp    QWORD PTR [rsp+0x80],0x2
  da9ccf:	00 02 
  da9cd1:	0f 83 39 01 00 00    	jae    da9e10 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2d50>
  da9cd7:	e9 34 0c 00 00       	jmp    daa910 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3850>
  da9cdc:	4c 89 f6             	mov    rsi,r14
  da9cdf:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  da9ce4:	e8 97 42 ff ff       	call   d9df80 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da9ce9:	4d 89 f7             	mov    r15,r14
  da9cec:	48 83 bc 24 80 00 00 	cmp    QWORD PTR [rsp+0x80],0x2
  da9cf3:	00 02 
  da9cf5:	0f 83 15 01 00 00    	jae    da9e10 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2d50>
  da9cfb:	e9 10 0c 00 00       	jmp    daa910 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3850>
  da9d00:	4c 89 f6             	mov    rsi,r14
  da9d03:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  da9d08:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  da9d0d:	e8 ae 24 ff ff       	call   d9c1c0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da9d12:	4d 89 f7             	mov    r15,r14
  da9d15:	48 83 bc 24 80 00 00 	cmp    QWORD PTR [rsp+0x80],0x2
  da9d1c:	00 02 
  da9d1e:	0f 83 ec 00 00 00    	jae    da9e10 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2d50>
  da9d24:	e9 e7 0b 00 00       	jmp    daa910 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3850>
  da9d29:	4c 89 f6             	mov    rsi,r14
  da9d2c:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  da9d31:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  da9d36:	e8 85 24 fe ff       	call   d8c1c0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da9d3b:	4d 89 f7             	mov    r15,r14
  da9d3e:	48 83 bc 24 80 00 00 	cmp    QWORD PTR [rsp+0x80],0x2
  da9d45:	00 02 
  da9d47:	0f 83 c3 00 00 00    	jae    da9e10 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2d50>
  da9d4d:	e9 be 0b 00 00       	jmp    daa910 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3850>
  da9d52:	4c 89 f6             	mov    rsi,r14
  da9d55:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  da9d5a:	e8 e1 eb fe ff       	call   d98940 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da9d5f:	4d 89 f7             	mov    r15,r14
  da9d62:	48 83 bc 24 80 00 00 	cmp    QWORD PTR [rsp+0x80],0x2
  da9d69:	00 02 
  da9d6b:	0f 83 9f 00 00 00    	jae    da9e10 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2d50>
  da9d71:	e9 9a 0b 00 00       	jmp    daa910 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3850>
  da9d76:	4c 89 f6             	mov    rsi,r14
  da9d79:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  da9d7e:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  da9d83:	e8 b8 39 fe ff       	call   d8d740 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da9d88:	4d 89 f7             	mov    r15,r14
  da9d8b:	48 83 bc 24 80 00 00 	cmp    QWORD PTR [rsp+0x80],0x2
  da9d92:	00 02 
  da9d94:	73 7a                	jae    da9e10 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2d50>
  da9d96:	e9 75 0b 00 00       	jmp    daa910 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3850>
  da9d9b:	4c 89 f6             	mov    rsi,r14
  da9d9e:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  da9da3:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  da9da8:	e8 53 b3 fd ff       	call   d85100 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da9dad:	4d 89 f7             	mov    r15,r14
  da9db0:	48 83 bc 24 80 00 00 	cmp    QWORD PTR [rsp+0x80],0x2
  da9db7:	00 02 
  da9db9:	73 55                	jae    da9e10 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2d50>
  da9dbb:	e9 50 0b 00 00       	jmp    daa910 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3850>
  da9dc0:	4c 89 f6             	mov    rsi,r14
  da9dc3:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  da9dc8:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  da9dcd:	e8 6e 3a ff ff       	call   d9d840 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da9dd2:	4d 89 f7             	mov    r15,r14
  da9dd5:	48 83 bc 24 80 00 00 	cmp    QWORD PTR [rsp+0x80],0x2
  da9ddc:	00 02 
  da9dde:	73 30                	jae    da9e10 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2d50>
  da9de0:	e9 2b 0b 00 00       	jmp    daa910 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3850>
  da9de5:	4c 89 f6             	mov    rsi,r14
  da9de8:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  da9ded:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  da9df2:	e8 c9 ba fe ff       	call   d958c0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da9df7:	4d 89 f7             	mov    r15,r14
  da9dfa:	48 83 bc 24 80 00 00 	cmp    QWORD PTR [rsp+0x80],0x2
  da9e01:	00 02 
  da9e03:	0f 82 07 0b 00 00    	jb     daa910 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3850>
  da9e09:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  da9e10:	48 8b 84 24 b0 00 00 	mov    rax,QWORD PTR [rsp+0xb0]
  da9e17:	00 
  da9e18:	48 8b 18             	mov    rbx,QWORD PTR [rax]
  da9e1b:	4c 8b a4 24 30 01 00 	mov    r12,QWORD PTR [rsp+0x130]
  da9e22:	00 
  da9e23:	4c 8b ac 24 98 00 00 	mov    r13,QWORD PTR [rsp+0x98]
  da9e2a:	00 
  da9e2b:	48 8b 84 24 90 00 00 	mov    rax,QWORD PTR [rsp+0x90]
  da9e32:	00 
  da9e33:	48 8b 8c 24 e0 00 00 	mov    rcx,QWORD PTR [rsp+0xe0]
  da9e3a:	00 
  da9e3b:	eb 4c                	jmp    da9e89 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2dc9>
  da9e3d:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  da9e42:	0f 29 84 24 40 01 00 	movaps XMMWORD PTR [rsp+0x140],xmm0
  da9e49:	00 
  da9e4a:	48 89 d7             	mov    rdi,rdx
  da9e4d:	4c 89 fe             	mov    rsi,r15
  da9e50:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  da9e55:	48 89 d9             	mov    rcx,rbx
  da9e58:	4c 8d 8c 24 40 01 00 	lea    r9,[rsp+0x140]
  da9e5f:	00 
  da9e60:	e8 5b b5 f1 ff       	call   cc53c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da9e65:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  da9e6c:	00 00 00 00 
  da9e70:	49 0f af de          	imul   rbx,r14
  da9e74:	49 83 c5 18          	add    r13,0x18
  da9e78:	4c 89 f8             	mov    rax,r15
  da9e7b:	49 ff cc             	dec    r12
  da9e7e:	48 8b 4c 24 68       	mov    rcx,QWORD PTR [rsp+0x68]
  da9e83:	0f 84 87 0a 00 00    	je     daa910 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3850>
  da9e89:	48 89 c2             	mov    rdx,rax
  da9e8c:	4d 8b 75 f8          	mov    r14,QWORD PTR [r13-0x8]
  da9e90:	4d 8b 45 00          	mov    r8,QWORD PTR [r13+0x0]
  da9e94:	4c 03 44 24 78       	add    r8,QWORD PTR [rsp+0x78]
  da9e99:	4c 89 b4 24 88 00 00 	mov    QWORD PTR [rsp+0x88],r14
  da9ea0:	00 
  da9ea1:	49 8d 46 fe          	lea    rax,[r14-0x2]
  da9ea5:	48 83 f8 0e          	cmp    rax,0xe
  da9ea9:	0f 87 06 39 00 00    	ja     dad7b5 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x66f5>
  da9eaf:	49 89 cf             	mov    r15,rcx
  da9eb2:	48 8d 0d 73 92 2f ff 	lea    rcx,[rip+0xffffffffff2f9273]        # a312c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x305dc>
  da9eb9:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  da9ebd:	48 01 c8             	add    rax,rcx
  da9ec0:	48 89 54 24 68       	mov    QWORD PTR [rsp+0x68],rdx
  da9ec5:	ff e0                	jmp    rax
  da9ec7:	48 89 d7             	mov    rdi,rdx
  da9eca:	4c 89 fe             	mov    rsi,r15
  da9ecd:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  da9ed2:	48 89 d9             	mov    rcx,rbx
  da9ed5:	e8 a6 30 f1 ff       	call   cbcf80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da9eda:	eb 94                	jmp    da9e70 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2db0>
  da9edc:	48 89 d7             	mov    rdi,rdx
  da9edf:	4c 89 fe             	mov    rsi,r15
  da9ee2:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  da9ee7:	48 89 d9             	mov    rcx,rbx
  da9eea:	e8 11 7b f1 ff       	call   cc1a00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da9eef:	e9 7c ff ff ff       	jmp    da9e70 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2db0>
  da9ef4:	48 89 d7             	mov    rdi,rdx
  da9ef7:	4c 89 fe             	mov    rsi,r15
  da9efa:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  da9eff:	48 89 d9             	mov    rcx,rbx
  da9f02:	e8 f9 39 f1 ff       	call   cbd900 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da9f07:	e9 64 ff ff ff       	jmp    da9e70 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2db0>
  da9f0c:	48 89 d7             	mov    rdi,rdx
  da9f0f:	4c 89 fe             	mov    rsi,r15
  da9f12:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  da9f17:	48 89 d9             	mov    rcx,rbx
  da9f1a:	e8 21 90 f1 ff       	call   cc2f40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da9f1f:	e9 4c ff ff ff       	jmp    da9e70 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2db0>
  da9f24:	48 89 d7             	mov    rdi,rdx
  da9f27:	4c 89 fe             	mov    rsi,r15
  da9f2a:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  da9f2f:	48 89 d9             	mov    rcx,rbx
  da9f32:	e8 49 5e f1 ff       	call   cbfd80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da9f37:	e9 34 ff ff ff       	jmp    da9e70 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2db0>
  da9f3c:	48 89 d7             	mov    rdi,rdx
  da9f3f:	4c 89 fe             	mov    rsi,r15
  da9f42:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  da9f47:	48 89 d9             	mov    rcx,rbx
  da9f4a:	e8 b1 33 f1 ff       	call   cbd300 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da9f4f:	e9 1c ff ff ff       	jmp    da9e70 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2db0>
  da9f54:	48 89 d7             	mov    rdi,rdx
  da9f57:	4c 89 fe             	mov    rsi,r15
  da9f5a:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  da9f5f:	48 89 d9             	mov    rcx,rbx
  da9f62:	e8 19 36 f1 ff       	call   cbd580 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da9f67:	e9 04 ff ff ff       	jmp    da9e70 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2db0>
  da9f6c:	48 89 d7             	mov    rdi,rdx
  da9f6f:	4c 89 fe             	mov    rsi,r15
  da9f72:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  da9f77:	48 89 d9             	mov    rcx,rbx
  da9f7a:	e8 81 4a f1 ff       	call   cbea00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da9f7f:	e9 ec fe ff ff       	jmp    da9e70 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2db0>
  da9f84:	48 89 d7             	mov    rdi,rdx
  da9f87:	4c 89 fe             	mov    rsi,r15
  da9f8a:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  da9f8f:	48 89 d9             	mov    rcx,rbx
  da9f92:	e8 29 31 f1 ff       	call   cbd0c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da9f97:	e9 d4 fe ff ff       	jmp    da9e70 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2db0>
  da9f9c:	48 89 d7             	mov    rdi,rdx
  da9f9f:	4c 89 fe             	mov    rsi,r15
  da9fa2:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  da9fa7:	48 89 d9             	mov    rcx,rbx
  da9faa:	e8 91 3d f1 ff       	call   cbdd40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da9faf:	e9 bc fe ff ff       	jmp    da9e70 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2db0>
  da9fb4:	48 89 d7             	mov    rdi,rdx
  da9fb7:	4c 89 fe             	mov    rsi,r15
  da9fba:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  da9fbf:	48 89 d9             	mov    rcx,rbx
  da9fc2:	e8 79 a1 f1 ff       	call   cc4140 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da9fc7:	e9 a4 fe ff ff       	jmp    da9e70 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2db0>
  da9fcc:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  da9fd1:	0f 29 84 24 40 01 00 	movaps XMMWORD PTR [rsp+0x140],xmm0
  da9fd8:	00 
  da9fd9:	48 89 d7             	mov    rdi,rdx
  da9fdc:	4c 89 fe             	mov    rsi,r15
  da9fdf:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  da9fe4:	48 89 d9             	mov    rcx,rbx
  da9fe7:	4c 8d 8c 24 40 01 00 	lea    r9,[rsp+0x140]
  da9fee:	00 
  da9fef:	e8 0c 44 f1 ff       	call   cbe400 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da9ff4:	e9 77 fe ff ff       	jmp    da9e70 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2db0>
  da9ff9:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  da9ffe:	0f 29 84 24 40 01 00 	movaps XMMWORD PTR [rsp+0x140],xmm0
  daa005:	00 
  daa006:	48 89 d7             	mov    rdi,rdx
  daa009:	4c 89 fe             	mov    rsi,r15
  daa00c:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  daa011:	48 89 d9             	mov    rcx,rbx
  daa014:	4c 8d 8c 24 40 01 00 	lea    r9,[rsp+0x140]
  daa01b:	00 
  daa01c:	e8 9f 6d f1 ff       	call   cc0dc0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  daa021:	e9 4a fe ff ff       	jmp    da9e70 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2db0>
  daa026:	48 89 d7             	mov    rdi,rdx
  daa029:	4c 89 fe             	mov    rsi,r15
  daa02c:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  daa031:	48 89 d9             	mov    rcx,rbx
  daa034:	e8 07 53 f1 ff       	call   cbf340 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  daa039:	e9 32 fe ff ff       	jmp    da9e70 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2db0>
  daa03e:	4c 89 f6             	mov    rsi,r14
  daa041:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  daa046:	4c 89 e1             	mov    rcx,r12
  daa049:	e8 72 bf ff ff       	call   da5fc0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  daa04e:	4d 89 f7             	mov    r15,r14
  daa051:	48 83 bc 24 80 00 00 	cmp    QWORD PTR [rsp+0x80],0x2
  daa058:	00 02 
  daa05a:	0f 83 35 04 00 00    	jae    daa495 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x33d5>
  daa060:	e9 ab 08 00 00       	jmp    daa910 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3850>
  daa065:	4c 89 f6             	mov    rsi,r14
  daa068:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  daa06d:	4c 89 e1             	mov    rcx,r12
  daa070:	4c 8b 44 24 58       	mov    r8,QWORD PTR [rsp+0x58]
  daa075:	e8 86 8d ff ff       	call   da2e00 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  daa07a:	4d 89 f7             	mov    r15,r14
  daa07d:	48 83 bc 24 80 00 00 	cmp    QWORD PTR [rsp+0x80],0x2
  daa084:	00 02 
  daa086:	0f 83 5e 06 00 00    	jae    daa6ea <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x362a>
  daa08c:	e9 7f 08 00 00       	jmp    daa910 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3850>
  daa091:	4c 89 f6             	mov    rsi,r14
  daa094:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  daa099:	4c 89 e1             	mov    rcx,r12
  daa09c:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  daa0a1:	e8 9a 85 ff ff       	call   da2640 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  daa0a6:	4d 89 f7             	mov    r15,r14
  daa0a9:	48 83 bc 24 80 00 00 	cmp    QWORD PTR [rsp+0x80],0x2
  daa0b0:	00 02 
  daa0b2:	0f 83 dd 03 00 00    	jae    daa495 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x33d5>
  daa0b8:	e9 53 08 00 00       	jmp    daa910 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3850>
  daa0bd:	4c 89 f6             	mov    rsi,r14
  daa0c0:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  daa0c5:	4c 89 e1             	mov    rcx,r12
  daa0c8:	4c 8b 44 24 58       	mov    r8,QWORD PTR [rsp+0x58]
  daa0cd:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  daa0d2:	e8 69 6f ff ff       	call   da1040 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  daa0d7:	4d 89 f7             	mov    r15,r14
  daa0da:	48 83 bc 24 80 00 00 	cmp    QWORD PTR [rsp+0x80],0x2
  daa0e1:	00 02 
  daa0e3:	0f 83 01 06 00 00    	jae    daa6ea <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x362a>
  daa0e9:	e9 22 08 00 00       	jmp    daa910 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3850>
  daa0ee:	4c 89 f6             	mov    rsi,r14
  daa0f1:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  daa0f6:	4c 89 e1             	mov    rcx,r12
  daa0f9:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  daa0fe:	e8 fd 13 ff ff       	call   d9b500 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  daa103:	4d 89 f7             	mov    r15,r14
  daa106:	48 83 bc 24 80 00 00 	cmp    QWORD PTR [rsp+0x80],0x2
  daa10d:	00 02 
  daa10f:	0f 83 80 03 00 00    	jae    daa495 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x33d5>
  daa115:	e9 f6 07 00 00       	jmp    daa910 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3850>
  daa11a:	4c 89 f6             	mov    rsi,r14
  daa11d:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  daa122:	4c 89 e1             	mov    rcx,r12
  daa125:	4c 8b 44 24 58       	mov    r8,QWORD PTR [rsp+0x58]
  daa12a:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  daa12f:	e8 0c 01 ff ff       	call   d9a240 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  daa134:	4d 89 f7             	mov    r15,r14
  daa137:	48 83 bc 24 80 00 00 	cmp    QWORD PTR [rsp+0x80],0x2
  daa13e:	00 02 
  daa140:	0f 83 a4 05 00 00    	jae    daa6ea <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x362a>
  daa146:	e9 c5 07 00 00       	jmp    daa910 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3850>
  daa14b:	4c 89 f6             	mov    rsi,r14
  daa14e:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  daa153:	4c 89 e1             	mov    rcx,r12
  daa156:	e8 25 14 fe ff       	call   d8b580 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  daa15b:	4d 89 f7             	mov    r15,r14
  daa15e:	48 83 bc 24 80 00 00 	cmp    QWORD PTR [rsp+0x80],0x2
  daa165:	00 02 
  daa167:	0f 83 28 03 00 00    	jae    daa495 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x33d5>
  daa16d:	e9 9e 07 00 00       	jmp    daa910 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3850>
  daa172:	4c 89 f6             	mov    rsi,r14
  daa175:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  daa17a:	4c 89 e1             	mov    rcx,r12
  daa17d:	4c 8b 44 24 58       	mov    r8,QWORD PTR [rsp+0x58]
  daa182:	e8 79 bd fe ff       	call   d95f00 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  daa187:	4d 89 f7             	mov    r15,r14
  daa18a:	48 83 bc 24 80 00 00 	cmp    QWORD PTR [rsp+0x80],0x2
  daa191:	00 02 
  daa193:	0f 83 51 05 00 00    	jae    daa6ea <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x362a>
  daa199:	e9 72 07 00 00       	jmp    daa910 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3850>
  daa19e:	4c 89 f6             	mov    rsi,r14
  daa1a1:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  daa1a6:	4c 89 e1             	mov    rcx,r12
  daa1a9:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  daa1ae:	e8 0d 6d ff ff       	call   da0ec0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  daa1b3:	4d 89 f7             	mov    r15,r14
  daa1b6:	48 83 bc 24 80 00 00 	cmp    QWORD PTR [rsp+0x80],0x2
  daa1bd:	00 02 
  daa1bf:	0f 83 d0 02 00 00    	jae    daa495 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x33d5>
  daa1c5:	e9 46 07 00 00       	jmp    daa910 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3850>
  daa1ca:	4c 89 f6             	mov    rsi,r14
  daa1cd:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  daa1d2:	4c 89 e1             	mov    rcx,r12
  daa1d5:	4c 8b 44 24 58       	mov    r8,QWORD PTR [rsp+0x58]
  daa1da:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  daa1df:	e8 5c 92 fd ff       	call   d83440 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  daa1e4:	4d 89 f7             	mov    r15,r14
  daa1e7:	48 83 bc 24 80 00 00 	cmp    QWORD PTR [rsp+0x80],0x2
  daa1ee:	00 02 
  daa1f0:	0f 83 f4 04 00 00    	jae    daa6ea <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x362a>
  daa1f6:	e9 15 07 00 00       	jmp    daa910 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3850>
  daa1fb:	4c 89 f6             	mov    rsi,r14
  daa1fe:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  daa203:	4c 89 e1             	mov    rcx,r12
  daa206:	e8 75 4b ff ff       	call   d9ed80 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  daa20b:	4d 89 f7             	mov    r15,r14
  daa20e:	48 83 bc 24 80 00 00 	cmp    QWORD PTR [rsp+0x80],0x2
  daa215:	00 02 
  daa217:	0f 83 78 02 00 00    	jae    daa495 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x33d5>
  daa21d:	e9 ee 06 00 00       	jmp    daa910 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3850>
  daa222:	4c 89 f6             	mov    rsi,r14
  daa225:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  daa22a:	4c 89 e1             	mov    rcx,r12
  daa22d:	4c 8b 44 24 58       	mov    r8,QWORD PTR [rsp+0x58]
  daa232:	e8 09 e2 fe ff       	call   d98440 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  daa237:	4d 89 f7             	mov    r15,r14
  daa23a:	48 83 bc 24 80 00 00 	cmp    QWORD PTR [rsp+0x80],0x2
  daa241:	00 02 
  daa243:	0f 83 a1 04 00 00    	jae    daa6ea <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x362a>
  daa249:	e9 c2 06 00 00       	jmp    daa910 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3850>
  daa24e:	4c 89 f6             	mov    rsi,r14
  daa251:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  daa256:	4c 89 e1             	mov    rcx,r12
  daa259:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  daa25e:	e8 9d a1 fd ff       	call   d84400 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  daa263:	4d 89 f7             	mov    r15,r14
  daa266:	48 83 bc 24 80 00 00 	cmp    QWORD PTR [rsp+0x80],0x2
  daa26d:	00 02 
  daa26f:	0f 83 20 02 00 00    	jae    daa495 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x33d5>
  daa275:	e9 96 06 00 00       	jmp    daa910 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3850>
  daa27a:	4c 89 f6             	mov    rsi,r14
  daa27d:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  daa282:	4c 89 e1             	mov    rcx,r12
  daa285:	4c 8b 44 24 58       	mov    r8,QWORD PTR [rsp+0x58]
  daa28a:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  daa28f:	e8 ec 80 fe ff       	call   d92380 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  daa294:	4d 89 f7             	mov    r15,r14
  daa297:	48 83 bc 24 80 00 00 	cmp    QWORD PTR [rsp+0x80],0x2
  daa29e:	00 02 
  daa2a0:	0f 83 44 04 00 00    	jae    daa6ea <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x362a>
  daa2a6:	e9 65 06 00 00       	jmp    daa910 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3850>
  daa2ab:	4c 89 f6             	mov    rsi,r14
  daa2ae:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  daa2b3:	4c 89 e1             	mov    rcx,r12
  daa2b6:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  daa2bb:	e8 40 82 ff ff       	call   da2500 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  daa2c0:	4d 89 f7             	mov    r15,r14
  daa2c3:	48 83 bc 24 80 00 00 	cmp    QWORD PTR [rsp+0x80],0x2
  daa2ca:	00 02 
  daa2cc:	0f 83 c3 01 00 00    	jae    daa495 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x33d5>
  daa2d2:	e9 39 06 00 00       	jmp    daa910 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3850>
  daa2d7:	4c 89 f6             	mov    rsi,r14
  daa2da:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  daa2df:	4c 89 e1             	mov    rcx,r12
  daa2e2:	4c 8b 44 24 58       	mov    r8,QWORD PTR [rsp+0x58]
  daa2e7:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  daa2ec:	e8 cf 72 ff ff       	call   da15c0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  daa2f1:	4d 89 f7             	mov    r15,r14
  daa2f4:	48 83 bc 24 80 00 00 	cmp    QWORD PTR [rsp+0x80],0x2
  daa2fb:	00 02 
  daa2fd:	0f 83 e7 03 00 00    	jae    daa6ea <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x362a>
  daa303:	e9 08 06 00 00       	jmp    daa910 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3850>
  daa308:	4c 89 f6             	mov    rsi,r14
  daa30b:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  daa310:	4c 89 e1             	mov    rcx,r12
  daa313:	e8 e8 4c ff ff       	call   d9f000 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  daa318:	4d 89 f7             	mov    r15,r14
  daa31b:	48 83 bc 24 80 00 00 	cmp    QWORD PTR [rsp+0x80],0x2
  daa322:	00 02 
  daa324:	0f 83 6b 01 00 00    	jae    daa495 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x33d5>
  daa32a:	e9 e1 05 00 00       	jmp    daa910 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3850>
  daa32f:	4c 89 f6             	mov    rsi,r14
  daa332:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  daa337:	4c 89 e1             	mov    rcx,r12
  daa33a:	4c 8b 44 24 58       	mov    r8,QWORD PTR [rsp+0x58]
  daa33f:	e8 bc 40 fe ff       	call   d8e400 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  daa344:	4d 89 f7             	mov    r15,r14
  daa347:	48 83 bc 24 80 00 00 	cmp    QWORD PTR [rsp+0x80],0x2
  daa34e:	00 02 
  daa350:	0f 83 94 03 00 00    	jae    daa6ea <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x362a>
  daa356:	e9 b5 05 00 00       	jmp    daa910 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3850>
  daa35b:	4c 89 f6             	mov    rsi,r14
  daa35e:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  daa363:	4c 89 e1             	mov    rcx,r12
  daa366:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  daa36b:	e8 d0 bc fd ff       	call   d86040 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  daa370:	4d 89 f7             	mov    r15,r14
  daa373:	48 83 bc 24 80 00 00 	cmp    QWORD PTR [rsp+0x80],0x2
  daa37a:	00 02 
  daa37c:	0f 83 13 01 00 00    	jae    daa495 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x33d5>
  daa382:	e9 89 05 00 00       	jmp    daa910 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3850>
  daa387:	4c 89 f6             	mov    rsi,r14
  daa38a:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  daa38f:	4c 89 e1             	mov    rcx,r12
  daa392:	4c 8b 44 24 58       	mov    r8,QWORD PTR [rsp+0x58]
  daa397:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  daa39c:	e8 9f f5 fd ff       	call   d89940 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  daa3a1:	4d 89 f7             	mov    r15,r14
  daa3a4:	48 83 bc 24 80 00 00 	cmp    QWORD PTR [rsp+0x80],0x2
  daa3ab:	00 02 
  daa3ad:	0f 83 37 03 00 00    	jae    daa6ea <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x362a>
  daa3b3:	e9 58 05 00 00       	jmp    daa910 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3850>
  daa3b8:	4c 89 f6             	mov    rsi,r14
  daa3bb:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  daa3c0:	4c 89 e1             	mov    rcx,r12
  daa3c3:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  daa3c8:	e8 33 7d ff ff       	call   da2100 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  daa3cd:	4d 89 f7             	mov    r15,r14
  daa3d0:	48 83 bc 24 80 00 00 	cmp    QWORD PTR [rsp+0x80],0x2
  daa3d7:	00 02 
  daa3d9:	0f 83 b6 00 00 00    	jae    daa495 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x33d5>
  daa3df:	e9 2c 05 00 00       	jmp    daa910 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3850>
  daa3e4:	4c 89 f6             	mov    rsi,r14
  daa3e7:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  daa3ec:	4c 89 e1             	mov    rcx,r12
  daa3ef:	4c 8b 44 24 58       	mov    r8,QWORD PTR [rsp+0x58]
  daa3f4:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  daa3f9:	e8 c2 a7 ff ff       	call   da4bc0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  daa3fe:	4d 89 f7             	mov    r15,r14
  daa401:	48 83 bc 24 80 00 00 	cmp    QWORD PTR [rsp+0x80],0x2
  daa408:	00 02 
  daa40a:	0f 83 da 02 00 00    	jae    daa6ea <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x362a>
  daa410:	e9 fb 04 00 00       	jmp    daa910 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3850>
  daa415:	4c 89 f6             	mov    rsi,r14
  daa418:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  daa41d:	4c 89 e1             	mov    rcx,r12
  daa420:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  daa425:	e8 56 09 fe ff       	call   d8ad80 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  daa42a:	4d 89 f7             	mov    r15,r14
  daa42d:	48 83 bc 24 80 00 00 	cmp    QWORD PTR [rsp+0x80],0x2
  daa434:	00 02 
  daa436:	73 5d                	jae    daa495 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x33d5>
  daa438:	e9 d3 04 00 00       	jmp    daa910 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3850>
  daa43d:	4c 89 f6             	mov    rsi,r14
  daa440:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  daa445:	4c 89 e1             	mov    rcx,r12
  daa448:	4c 8b 44 24 58       	mov    r8,QWORD PTR [rsp+0x58]
  daa44d:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  daa452:	e8 e9 47 fe ff       	call   d8ec40 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  daa457:	4d 89 f7             	mov    r15,r14
  daa45a:	48 83 bc 24 80 00 00 	cmp    QWORD PTR [rsp+0x80],0x2
  daa461:	00 02 
  daa463:	0f 83 81 02 00 00    	jae    daa6ea <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x362a>
  daa469:	e9 a2 04 00 00       	jmp    daa910 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3850>
  daa46e:	4c 89 f6             	mov    rsi,r14
  daa471:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  daa476:	4c 89 e1             	mov    rcx,r12
  daa479:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  daa47e:	e8 3d 78 fe ff       	call   d91cc0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  daa483:	4d 89 f7             	mov    r15,r14
  daa486:	48 83 bc 24 80 00 00 	cmp    QWORD PTR [rsp+0x80],0x2
  daa48d:	00 02 
  daa48f:	0f 82 7b 04 00 00    	jb     daa910 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3850>
  daa495:	48 8b 84 24 b0 00 00 	mov    rax,QWORD PTR [rsp+0xb0]
  daa49c:	00 
  daa49d:	48 8b 18             	mov    rbx,QWORD PTR [rax]
  daa4a0:	4c 8b a4 24 30 01 00 	mov    r12,QWORD PTR [rsp+0x130]
  daa4a7:	00 
  daa4a8:	4c 8b ac 24 98 00 00 	mov    r13,QWORD PTR [rsp+0x98]
  daa4af:	00 
  daa4b0:	48 8b 84 24 90 00 00 	mov    rax,QWORD PTR [rsp+0x90]
  daa4b7:	00 
  daa4b8:	48 8b 8c 24 e0 00 00 	mov    rcx,QWORD PTR [rsp+0xe0]
  daa4bf:	00 
  daa4c0:	eb 47                	jmp    daa509 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3449>
  daa4c2:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  daa4c7:	0f 29 84 24 40 01 00 	movaps XMMWORD PTR [rsp+0x140],xmm0
  daa4ce:	00 
  daa4cf:	48 89 d7             	mov    rdi,rdx
  daa4d2:	4c 89 fe             	mov    rsi,r15
  daa4d5:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  daa4da:	48 89 d9             	mov    rcx,rbx
  daa4dd:	4c 8d 8c 24 40 01 00 	lea    r9,[rsp+0x140]
  daa4e4:	00 
  daa4e5:	e8 d6 ae f1 ff       	call   cc53c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  daa4ea:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  daa4f0:	49 0f af de          	imul   rbx,r14
  daa4f4:	49 83 c5 18          	add    r13,0x18
  daa4f8:	4c 89 f8             	mov    rax,r15
  daa4fb:	49 ff cc             	dec    r12
  daa4fe:	48 8b 4c 24 68       	mov    rcx,QWORD PTR [rsp+0x68]
  daa503:	0f 84 07 04 00 00    	je     daa910 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3850>
  daa509:	48 89 c2             	mov    rdx,rax
  daa50c:	4d 8b 75 f8          	mov    r14,QWORD PTR [r13-0x8]
  daa510:	4d 8b 45 00          	mov    r8,QWORD PTR [r13+0x0]
  daa514:	4c 03 44 24 78       	add    r8,QWORD PTR [rsp+0x78]
  daa519:	4c 89 b4 24 88 00 00 	mov    QWORD PTR [rsp+0x88],r14
  daa520:	00 
  daa521:	49 8d 46 fe          	lea    rax,[r14-0x2]
  daa525:	48 83 f8 0e          	cmp    rax,0xe
  daa529:	0f 87 86 32 00 00    	ja     dad7b5 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x66f5>
  daa52f:	49 89 cf             	mov    r15,rcx
  daa532:	48 8d 0d 7f 8b 2f ff 	lea    rcx,[rip+0xffffffffff2f8b7f]        # a30b8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x30568>
  daa539:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  daa53d:	48 01 c8             	add    rax,rcx
  daa540:	48 89 54 24 68       	mov    QWORD PTR [rsp+0x68],rdx
  daa545:	ff e0                	jmp    rax
  daa547:	48 89 d7             	mov    rdi,rdx
  daa54a:	4c 89 fe             	mov    rsi,r15
  daa54d:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  daa552:	48 89 d9             	mov    rcx,rbx
  daa555:	e8 26 2a f1 ff       	call   cbcf80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  daa55a:	eb 94                	jmp    daa4f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3430>
  daa55c:	48 89 d7             	mov    rdi,rdx
  daa55f:	4c 89 fe             	mov    rsi,r15
  daa562:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  daa567:	48 89 d9             	mov    rcx,rbx
  daa56a:	e8 91 74 f1 ff       	call   cc1a00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  daa56f:	e9 7c ff ff ff       	jmp    daa4f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3430>
  daa574:	48 89 d7             	mov    rdi,rdx
  daa577:	4c 89 fe             	mov    rsi,r15
  daa57a:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  daa57f:	48 89 d9             	mov    rcx,rbx
  daa582:	e8 79 33 f1 ff       	call   cbd900 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  daa587:	e9 64 ff ff ff       	jmp    daa4f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3430>
  daa58c:	48 89 d7             	mov    rdi,rdx
  daa58f:	4c 89 fe             	mov    rsi,r15
  daa592:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  daa597:	48 89 d9             	mov    rcx,rbx
  daa59a:	e8 a1 89 f1 ff       	call   cc2f40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  daa59f:	e9 4c ff ff ff       	jmp    daa4f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3430>
  daa5a4:	48 89 d7             	mov    rdi,rdx
  daa5a7:	4c 89 fe             	mov    rsi,r15
  daa5aa:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  daa5af:	48 89 d9             	mov    rcx,rbx
  daa5b2:	e8 c9 57 f1 ff       	call   cbfd80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  daa5b7:	e9 34 ff ff ff       	jmp    daa4f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3430>
  daa5bc:	48 89 d7             	mov    rdi,rdx
  daa5bf:	4c 89 fe             	mov    rsi,r15
  daa5c2:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  daa5c7:	48 89 d9             	mov    rcx,rbx
  daa5ca:	e8 31 2d f1 ff       	call   cbd300 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  daa5cf:	e9 1c ff ff ff       	jmp    daa4f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3430>
  daa5d4:	48 89 d7             	mov    rdi,rdx
  daa5d7:	4c 89 fe             	mov    rsi,r15
  daa5da:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  daa5df:	48 89 d9             	mov    rcx,rbx
  daa5e2:	e8 99 2f f1 ff       	call   cbd580 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  daa5e7:	e9 04 ff ff ff       	jmp    daa4f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3430>
  daa5ec:	48 89 d7             	mov    rdi,rdx
  daa5ef:	4c 89 fe             	mov    rsi,r15
  daa5f2:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  daa5f7:	48 89 d9             	mov    rcx,rbx
  daa5fa:	e8 01 44 f1 ff       	call   cbea00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  daa5ff:	e9 ec fe ff ff       	jmp    daa4f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3430>
  daa604:	48 89 d7             	mov    rdi,rdx
  daa607:	4c 89 fe             	mov    rsi,r15
  daa60a:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  daa60f:	48 89 d9             	mov    rcx,rbx
  daa612:	e8 a9 2a f1 ff       	call   cbd0c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  daa617:	e9 d4 fe ff ff       	jmp    daa4f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3430>
  daa61c:	48 89 d7             	mov    rdi,rdx
  daa61f:	4c 89 fe             	mov    rsi,r15
  daa622:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  daa627:	48 89 d9             	mov    rcx,rbx
  daa62a:	e8 11 37 f1 ff       	call   cbdd40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  daa62f:	e9 bc fe ff ff       	jmp    daa4f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3430>
  daa634:	48 89 d7             	mov    rdi,rdx
  daa637:	4c 89 fe             	mov    rsi,r15
  daa63a:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  daa63f:	48 89 d9             	mov    rcx,rbx
  daa642:	e8 f9 9a f1 ff       	call   cc4140 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  daa647:	e9 a4 fe ff ff       	jmp    daa4f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3430>
  daa64c:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  daa651:	0f 29 84 24 40 01 00 	movaps XMMWORD PTR [rsp+0x140],xmm0
  daa658:	00 
  daa659:	48 89 d7             	mov    rdi,rdx
  daa65c:	4c 89 fe             	mov    rsi,r15
  daa65f:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  daa664:	48 89 d9             	mov    rcx,rbx
  daa667:	4c 8d 8c 24 40 01 00 	lea    r9,[rsp+0x140]
  daa66e:	00 
  daa66f:	e8 8c 3d f1 ff       	call   cbe400 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  daa674:	e9 77 fe ff ff       	jmp    daa4f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3430>
  daa679:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  daa67e:	0f 29 84 24 40 01 00 	movaps XMMWORD PTR [rsp+0x140],xmm0
  daa685:	00 
  daa686:	48 89 d7             	mov    rdi,rdx
  daa689:	4c 89 fe             	mov    rsi,r15
  daa68c:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  daa691:	48 89 d9             	mov    rcx,rbx
  daa694:	4c 8d 8c 24 40 01 00 	lea    r9,[rsp+0x140]
  daa69b:	00 
  daa69c:	e8 1f 67 f1 ff       	call   cc0dc0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  daa6a1:	e9 4a fe ff ff       	jmp    daa4f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3430>
  daa6a6:	48 89 d7             	mov    rdi,rdx
  daa6a9:	4c 89 fe             	mov    rsi,r15
  daa6ac:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  daa6b1:	48 89 d9             	mov    rcx,rbx
  daa6b4:	e8 87 4c f1 ff       	call   cbf340 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  daa6b9:	e9 32 fe ff ff       	jmp    daa4f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3430>
  daa6be:	4c 89 f6             	mov    rsi,r14
  daa6c1:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  daa6c6:	4c 89 e1             	mov    rcx,r12
  daa6c9:	4c 8b 44 24 58       	mov    r8,QWORD PTR [rsp+0x58]
  daa6ce:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  daa6d3:	e8 e8 3a ff ff       	call   d9e1c0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  daa6d8:	4d 89 f7             	mov    r15,r14
  daa6db:	48 83 bc 24 80 00 00 	cmp    QWORD PTR [rsp+0x80],0x2
  daa6e2:	00 02 
  daa6e4:	0f 82 26 02 00 00    	jb     daa910 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3850>
  daa6ea:	48 8b 84 24 b0 00 00 	mov    rax,QWORD PTR [rsp+0xb0]
  daa6f1:	00 
  daa6f2:	48 8b 18             	mov    rbx,QWORD PTR [rax]
  daa6f5:	4c 8b a4 24 30 01 00 	mov    r12,QWORD PTR [rsp+0x130]
  daa6fc:	00 
  daa6fd:	4c 8b ac 24 98 00 00 	mov    r13,QWORD PTR [rsp+0x98]
  daa704:	00 
  daa705:	48 8b 84 24 90 00 00 	mov    rax,QWORD PTR [rsp+0x90]
  daa70c:	00 
  daa70d:	48 8b 8c 24 e0 00 00 	mov    rcx,QWORD PTR [rsp+0xe0]
  daa714:	00 
  daa715:	eb 42                	jmp    daa759 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3699>
  daa717:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  daa71c:	0f 29 84 24 40 01 00 	movaps XMMWORD PTR [rsp+0x140],xmm0
  daa723:	00 
  daa724:	48 89 d7             	mov    rdi,rdx
  daa727:	4c 89 fe             	mov    rsi,r15
  daa72a:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  daa72f:	48 89 d9             	mov    rcx,rbx
  daa732:	4c 8d 8c 24 40 01 00 	lea    r9,[rsp+0x140]
  daa739:	00 
  daa73a:	e8 81 ac f1 ff       	call   cc53c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  daa73f:	90                   	nop
  daa740:	49 0f af de          	imul   rbx,r14
  daa744:	49 83 c5 18          	add    r13,0x18
  daa748:	4c 89 f8             	mov    rax,r15
  daa74b:	49 ff cc             	dec    r12
  daa74e:	48 8b 4c 24 68       	mov    rcx,QWORD PTR [rsp+0x68]
  daa753:	0f 84 b7 01 00 00    	je     daa910 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3850>
  daa759:	48 89 c2             	mov    rdx,rax
  daa75c:	4d 8b 75 f8          	mov    r14,QWORD PTR [r13-0x8]
  daa760:	4d 8b 45 00          	mov    r8,QWORD PTR [r13+0x0]
  daa764:	4c 03 44 24 78       	add    r8,QWORD PTR [rsp+0x78]
  daa769:	4c 89 b4 24 88 00 00 	mov    QWORD PTR [rsp+0x88],r14
  daa770:	00 
  daa771:	49 8d 46 fe          	lea    rax,[r14-0x2]
  daa775:	48 83 f8 0e          	cmp    rax,0xe
  daa779:	0f 87 36 30 00 00    	ja     dad7b5 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x66f5>
  daa77f:	49 89 cf             	mov    r15,rcx
  daa782:	48 8d 0d bb 88 2f ff 	lea    rcx,[rip+0xffffffffff2f88bb]        # a3044 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x304f4>
  daa789:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  daa78d:	48 01 c8             	add    rax,rcx
  daa790:	48 89 54 24 68       	mov    QWORD PTR [rsp+0x68],rdx
  daa795:	ff e0                	jmp    rax
  daa797:	48 89 d7             	mov    rdi,rdx
  daa79a:	4c 89 fe             	mov    rsi,r15
  daa79d:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  daa7a2:	48 89 d9             	mov    rcx,rbx
  daa7a5:	e8 d6 27 f1 ff       	call   cbcf80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  daa7aa:	eb 94                	jmp    daa740 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3680>
  daa7ac:	48 89 d7             	mov    rdi,rdx
  daa7af:	4c 89 fe             	mov    rsi,r15
  daa7b2:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  daa7b7:	48 89 d9             	mov    rcx,rbx
  daa7ba:	e8 41 72 f1 ff       	call   cc1a00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  daa7bf:	e9 7c ff ff ff       	jmp    daa740 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3680>
  daa7c4:	48 89 d7             	mov    rdi,rdx
  daa7c7:	4c 89 fe             	mov    rsi,r15
  daa7ca:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  daa7cf:	48 89 d9             	mov    rcx,rbx
  daa7d2:	e8 29 31 f1 ff       	call   cbd900 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  daa7d7:	e9 64 ff ff ff       	jmp    daa740 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3680>
  daa7dc:	48 89 d7             	mov    rdi,rdx
  daa7df:	4c 89 fe             	mov    rsi,r15
  daa7e2:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  daa7e7:	48 89 d9             	mov    rcx,rbx
  daa7ea:	e8 51 87 f1 ff       	call   cc2f40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  daa7ef:	e9 4c ff ff ff       	jmp    daa740 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3680>
  daa7f4:	48 89 d7             	mov    rdi,rdx
  daa7f7:	4c 89 fe             	mov    rsi,r15
  daa7fa:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  daa7ff:	48 89 d9             	mov    rcx,rbx
  daa802:	e8 79 55 f1 ff       	call   cbfd80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  daa807:	e9 34 ff ff ff       	jmp    daa740 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3680>
  daa80c:	48 89 d7             	mov    rdi,rdx
  daa80f:	4c 89 fe             	mov    rsi,r15
  daa812:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  daa817:	48 89 d9             	mov    rcx,rbx
  daa81a:	e8 e1 2a f1 ff       	call   cbd300 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  daa81f:	e9 1c ff ff ff       	jmp    daa740 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3680>
  daa824:	48 89 d7             	mov    rdi,rdx
  daa827:	4c 89 fe             	mov    rsi,r15
  daa82a:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  daa82f:	48 89 d9             	mov    rcx,rbx
  daa832:	e8 49 2d f1 ff       	call   cbd580 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  daa837:	e9 04 ff ff ff       	jmp    daa740 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3680>
  daa83c:	48 89 d7             	mov    rdi,rdx
  daa83f:	4c 89 fe             	mov    rsi,r15
  daa842:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  daa847:	48 89 d9             	mov    rcx,rbx
  daa84a:	e8 b1 41 f1 ff       	call   cbea00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  daa84f:	e9 ec fe ff ff       	jmp    daa740 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3680>
  daa854:	48 89 d7             	mov    rdi,rdx
  daa857:	4c 89 fe             	mov    rsi,r15
  daa85a:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  daa85f:	48 89 d9             	mov    rcx,rbx
  daa862:	e8 59 28 f1 ff       	call   cbd0c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  daa867:	e9 d4 fe ff ff       	jmp    daa740 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3680>
  daa86c:	48 89 d7             	mov    rdi,rdx
  daa86f:	4c 89 fe             	mov    rsi,r15
  daa872:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  daa877:	48 89 d9             	mov    rcx,rbx
  daa87a:	e8 c1 34 f1 ff       	call   cbdd40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  daa87f:	e9 bc fe ff ff       	jmp    daa740 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3680>
  daa884:	48 89 d7             	mov    rdi,rdx
  daa887:	4c 89 fe             	mov    rsi,r15
  daa88a:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  daa88f:	48 89 d9             	mov    rcx,rbx
  daa892:	e8 a9 98 f1 ff       	call   cc4140 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  daa897:	e9 a4 fe ff ff       	jmp    daa740 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3680>
  daa89c:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  daa8a1:	0f 29 84 24 40 01 00 	movaps XMMWORD PTR [rsp+0x140],xmm0
  daa8a8:	00 
  daa8a9:	48 89 d7             	mov    rdi,rdx
  daa8ac:	4c 89 fe             	mov    rsi,r15
  daa8af:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  daa8b4:	48 89 d9             	mov    rcx,rbx
  daa8b7:	4c 8d 8c 24 40 01 00 	lea    r9,[rsp+0x140]
  daa8be:	00 
  daa8bf:	e8 3c 3b f1 ff       	call   cbe400 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  daa8c4:	e9 77 fe ff ff       	jmp    daa740 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3680>
  daa8c9:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  daa8ce:	0f 29 84 24 40 01 00 	movaps XMMWORD PTR [rsp+0x140],xmm0
  daa8d5:	00 
  daa8d6:	48 89 d7             	mov    rdi,rdx
  daa8d9:	4c 89 fe             	mov    rsi,r15
  daa8dc:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  daa8e1:	48 89 d9             	mov    rcx,rbx
  daa8e4:	4c 8d 8c 24 40 01 00 	lea    r9,[rsp+0x140]
  daa8eb:	00 
  daa8ec:	e8 cf 64 f1 ff       	call   cc0dc0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  daa8f1:	e9 4a fe ff ff       	jmp    daa740 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3680>
  daa8f6:	48 89 d7             	mov    rdi,rdx
  daa8f9:	4c 89 fe             	mov    rsi,r15
  daa8fc:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  daa901:	48 89 d9             	mov    rcx,rbx
  daa904:	e8 37 4a f1 ff       	call   cbf340 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  daa909:	e9 32 fe ff ff       	jmp    daa740 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3680>
  daa90e:	66 90                	xchg   ax,ax
  daa910:	48 83 7c 24 30 00    	cmp    QWORD PTR [rsp+0x30],0x0
  daa916:	4c 8b 64 24 38       	mov    r12,QWORD PTR [rsp+0x38]
  daa91b:	4c 8d ac 24 60 01 00 	lea    r13,[rsp+0x160]
  daa922:	00 
  daa923:	48 8b b4 24 a0 00 00 	mov    rsi,QWORD PTR [rsp+0xa0]
  daa92a:	00 
  daa92b:	48 8b 84 24 a8 00 00 	mov    rax,QWORD PTR [rsp+0xa8]
  daa932:	00 
  daa933:	0f 84 17 f1 ff ff    	je     da9a50 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2990>
  daa939:	80 7c 24 70 00       	cmp    BYTE PTR [rsp+0x70],0x0
  daa93e:	74 50                	je     daa990 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x38d0>
  daa940:	49 83 c7 10          	add    r15,0x10
  daa944:	48 8b 44 24 30       	mov    rax,QWORD PTR [rsp+0x30]
  daa949:	48 8b 8c 24 f8 00 00 	mov    rcx,QWORD PTR [rsp+0xf8]
  daa950:	00 
  daa951:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  daa958:	0f 1f 84 00 00 00 00 
  daa95f:	00 
  daa960:	41 0f 10 47 f0       	movups xmm0,XMMWORD PTR [r15-0x10]
  daa965:	41 0f 10 0f          	movups xmm1,XMMWORD PTR [r15]
  daa969:	0f 28 d0             	movaps xmm2,xmm0
  daa96c:	0f 14 d1             	unpcklps xmm2,xmm1
  daa96f:	0f 15 c1             	unpckhps xmm0,xmm1
  daa972:	0f 2b 11             	movntps XMMWORD PTR [rcx],xmm2
  daa975:	48 8d 51 10          	lea    rdx,[rcx+0x10]
  daa979:	0f 2b 02             	movntps XMMWORD PTR [rdx],xmm0
  daa97c:	48 01 f1             	add    rcx,rsi
  daa97f:	49 83 c7 20          	add    r15,0x20
  daa983:	48 ff c8             	dec    rax
  daa986:	75 d8                	jne    daa960 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x38a0>
  daa988:	e9 c3 f0 ff ff       	jmp    da9a50 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2990>
  daa98d:	0f 1f 00             	nop    DWORD PTR [rax]
  daa990:	48 c1 64 24 58 03    	shl    QWORD PTR [rsp+0x58],0x3
  daa996:	49 83 c7 10          	add    r15,0x10
  daa99a:	4c 8b 74 24 30       	mov    r14,QWORD PTR [rsp+0x30]
  daa99f:	48 8b 9c 24 f8 00 00 	mov    rbx,QWORD PTR [rsp+0xf8]
  daa9a6:	00 
  daa9a7:	eb 1e                	jmp    daa9c7 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3907>
  daa9a9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  daa9b0:	0f 11 0b             	movups XMMWORD PTR [rbx],xmm1
  daa9b3:	0f 11 43 10          	movups XMMWORD PTR [rbx+0x10],xmm0
  daa9b7:	48 01 f3             	add    rbx,rsi
  daa9ba:	49 83 c7 20          	add    r15,0x20
  daa9be:	49 ff ce             	dec    r14
  daa9c1:	0f 84 89 f0 ff ff    	je     da9a50 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2990>
  daa9c7:	41 0f 10 47 f0       	movups xmm0,XMMWORD PTR [r15-0x10]
  daa9cc:	41 0f 10 17          	movups xmm2,XMMWORD PTR [r15]
  daa9d0:	0f 28 c8             	movaps xmm1,xmm0
  daa9d3:	0f 14 ca             	unpcklps xmm1,xmm2
  daa9d6:	0f 15 c2             	unpckhps xmm0,xmm2
  daa9d9:	48 83 f8 03          	cmp    rax,0x3
  daa9dd:	77 d1                	ja     daa9b0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x38f0>
  daa9df:	0f 57 d2             	xorps  xmm2,xmm2
  daa9e2:	41 0f 29 55 50       	movaps XMMWORD PTR [r13+0x50],xmm2
  daa9e7:	41 0f 29 55 40       	movaps XMMWORD PTR [r13+0x40],xmm2
  daa9ec:	41 0f 29 55 30       	movaps XMMWORD PTR [r13+0x30],xmm2
  daa9f1:	41 0f 29 55 20       	movaps XMMWORD PTR [r13+0x20],xmm2
  daa9f6:	41 0f 29 55 10       	movaps XMMWORD PTR [r13+0x10],xmm2
  daa9fb:	41 0f 29 55 00       	movaps XMMWORD PTR [r13+0x0],xmm2
  daaa00:	0f 29 8c 24 40 01 00 	movaps XMMWORD PTR [rsp+0x140],xmm1
  daaa07:	00 
  daaa08:	0f 29 84 24 50 01 00 	movaps XMMWORD PTR [rsp+0x150],xmm0
  daaa0f:	00 
  daaa10:	48 89 df             	mov    rdi,rbx
  daaa13:	48 8d b4 24 40 01 00 	lea    rsi,[rsp+0x140]
  daaa1a:	00 
  daaa1b:	48 8b 54 24 58       	mov    rdx,QWORD PTR [rsp+0x58]
  daaa20:	ff 15 7a 72 4a 00    	call   QWORD PTR [rip+0x4a727a]        # 1251ca0 <memcpy@GLIBC_2.14>
  daaa26:	48 8b 84 24 a8 00 00 	mov    rax,QWORD PTR [rsp+0xa8]
  daaa2d:	00 
  daaa2e:	48 8b b4 24 a0 00 00 	mov    rsi,QWORD PTR [rsp+0xa0]
  daaa35:	00 
  daaa36:	e9 7c ff ff ff       	jmp    daa9b7 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x38f7>
  daaa3b:	c7 44 24 70 00 00 00 	mov    DWORD PTR [rsp+0x70],0x0
  daaa42:	00 
  daaa43:	4d 85 e4             	test   r12,r12
  daaa46:	0f 84 6b 10 00 00    	je     dabab7 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x49f7>
  daaa4c:	48 8d 04 5b          	lea    rax,[rbx+rbx*2]
  daaa50:	4c 89 e6             	mov    rsi,r12
  daaa53:	48 c1 ee 02          	shr    rsi,0x2
  daaa57:	44 89 e1             	mov    ecx,r12d
  daaa5a:	83 e1 03             	and    ecx,0x3
  daaa5d:	48 83 f9 01          	cmp    rcx,0x1
  daaa61:	48 83 de ff          	sbb    rsi,0xffffffffffffffff
  daaa65:	48 8b 4c 24 78       	mov    rcx,QWORD PTR [rsp+0x78]
  daaa6a:	48 8d 14 c1          	lea    rdx,[rcx+rax*8]
  daaa6e:	48 89 94 24 b0 00 00 	mov    QWORD PTR [rsp+0xb0],rdx
  daaa75:	00 
  daaa76:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  daaa7b:	48 01 d2             	add    rdx,rdx
  daaa7e:	48 89 94 24 c8 00 00 	mov    QWORD PTR [rsp+0xc8],rdx
  daaa85:	00 
  daaa86:	48 8d 44 c1 20       	lea    rax,[rcx+rax*8+0x20]
  daaa8b:	48 89 84 24 98 00 00 	mov    QWORD PTR [rsp+0x98],rax
  daaa92:	00 
  daaa93:	48 8b 84 24 80 00 00 	mov    rax,QWORD PTR [rsp+0x80]
  daaa9a:	00 
  daaa9b:	48 ff c8             	dec    rax
  daaa9e:	48 89 84 24 30 01 00 	mov    QWORD PTR [rsp+0x130],rax
  daaaa5:	00 
  daaaa6:	4a 8d 04 e5 00 00 00 	lea    rax,[r12*8+0x0]
  daaaad:	00 
  daaaae:	48 89 84 24 a0 00 00 	mov    QWORD PTR [rsp+0xa0],rax
  daaab5:	00 
  daaab6:	45 31 c0             	xor    r8d,r8d
  daaab9:	eb 33                	jmp    daaaee <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3a2e>
  daaabb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  daaac0:	4c 8b 44 24 60       	mov    r8,QWORD PTR [rsp+0x60]
  daaac5:	49 83 c0 04          	add    r8,0x4
  daaac9:	48 8b b4 24 f0 00 00 	mov    rsi,QWORD PTR [rsp+0xf0]
  daaad0:	00 
  daaad1:	48 ff ce             	dec    rsi
  daaad4:	48 83 84 24 f8 00 00 	add    QWORD PTR [rsp+0xf8],0x20
  daaadb:	00 20 
  daaadd:	48 85 f6             	test   rsi,rsi
  daaae0:	4c 8b b4 24 90 00 00 	mov    r14,QWORD PTR [rsp+0x90]
  daaae7:	00 
  daaae8:	0f 84 c9 0f 00 00    	je     dabab7 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x49f7>
  daaaee:	4c 89 e0             	mov    rax,r12
  daaaf1:	4c 29 c0             	sub    rax,r8
  daaaf4:	48 89 84 24 a8 00 00 	mov    QWORD PTR [rsp+0xa8],rax
  daaafb:	00 
  daaafc:	48 83 f8 04          	cmp    rax,0x4
  daab00:	b9 04 00 00 00       	mov    ecx,0x4
  daab05:	48 0f 42 c8          	cmovb  rcx,rax
  daab09:	48 89 4c 24 58       	mov    QWORD PTR [rsp+0x58],rcx
  daab0e:	80 bc 24 28 01 00 00 	cmp    BYTE PTR [rsp+0x128],0x0
  daab15:	00 
  daab16:	48 89 b4 24 f0 00 00 	mov    QWORD PTR [rsp+0xf0],rsi
  daab1d:	00 
  daab1e:	4c 89 44 24 60       	mov    QWORD PTR [rsp+0x60],r8
  daab23:	74 7b                	je     daaba0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3ae0>
  daab25:	48 83 bc 24 80 00 00 	cmp    QWORD PTR [rsp+0x80],0x0
  daab2c:	00 00 
  daab2e:	0f 84 27 2d 00 00    	je     dad85b <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x679b>
  daab34:	48 8b 84 24 b0 00 00 	mov    rax,QWORD PTR [rsp+0xb0]
  daab3b:	00 
  daab3c:	48 8b 00             	mov    rax,QWORD PTR [rax]
  daab3f:	48 83 c0 fe          	add    rax,0xfffffffffffffffe
  daab43:	48 83 f8 0d          	cmp    rax,0xd
  daab47:	0f 87 d2 2c 00 00    	ja     dad81f <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x675f>
  daab4d:	48 8b 8c 24 c8 00 00 	mov    rcx,QWORD PTR [rsp+0xc8]
  daab54:	00 
  daab55:	49 0f af c8          	imul   rcx,r8
  daab59:	48 8b 94 24 d0 00 00 	mov    rdx,QWORD PTR [rsp+0xd0]
  daab60:	00 
  daab61:	48 8d 3c 8a          	lea    rdi,[rdx+rcx*4]
  daab65:	48 8d 0d 44 88 2f ff 	lea    rcx,[rip+0xffffffffff2f8844]        # a33b0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x30860>
  daab6c:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  daab70:	48 01 c8             	add    rax,rcx
  daab73:	ff e0                	jmp    rax
  daab75:	4c 89 f6             	mov    rsi,r14
  daab78:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  daab7d:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  daab82:	e8 b9 b3 ff ff       	call   da5f40 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  daab87:	4d 89 f7             	mov    r15,r14
  daab8a:	48 83 bc 24 80 00 00 	cmp    QWORD PTR [rsp+0x80],0x2
  daab91:	00 02 
  daab93:	0f 83 e7 02 00 00    	jae    daae80 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3dc0>
  daab99:	e9 e2 0d 00 00       	jmp    dab980 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x48c0>
  daab9e:	66 90                	xchg   ax,ax
  daaba0:	48 8b 84 24 d0 00 00 	mov    rax,QWORD PTR [rsp+0xd0]
  daaba7:	00 
  daaba8:	4a 8d 3c c0          	lea    rdi,[rax+r8*8]
  daabac:	48 83 bc 24 a8 00 00 	cmp    QWORD PTR [rsp+0xa8],0x3
  daabb3:	00 03 
  daabb5:	76 69                	jbe    daac20 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3b60>
  daabb7:	48 83 bc 24 80 00 00 	cmp    QWORD PTR [rsp+0x80],0x0
  daabbe:	00 00 
  daabc0:	0f 84 95 2c 00 00    	je     dad85b <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x679b>
  daabc6:	48 8b 84 24 b0 00 00 	mov    rax,QWORD PTR [rsp+0xb0]
  daabcd:	00 
  daabce:	48 8b 00             	mov    rax,QWORD PTR [rax]
  daabd1:	48 83 c0 fe          	add    rax,0xfffffffffffffffe
  daabd5:	48 83 f8 0d          	cmp    rax,0xd
  daabd9:	0f 87 40 2c 00 00    	ja     dad81f <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x675f>
  daabdf:	48 8d 0d 56 87 2f ff 	lea    rcx,[rip+0xffffffffff2f8756]        # a333c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x307ec>
  daabe6:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  daabea:	48 01 c8             	add    rax,rcx
  daabed:	ff e0                	jmp    rax
  daabef:	4c 89 f6             	mov    rsi,r14
  daabf2:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  daabf7:	4c 89 e1             	mov    rcx,r12
  daabfa:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  daabff:	e8 fc 81 fe ff       	call   d92e00 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  daac04:	4d 89 f7             	mov    r15,r14
  daac07:	48 83 bc 24 80 00 00 	cmp    QWORD PTR [rsp+0x80],0x2
  daac0e:	00 02 
  daac10:	0f 83 ef 08 00 00    	jae    dab505 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4445>
  daac16:	e9 65 0d 00 00       	jmp    dab980 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x48c0>
  daac1b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  daac20:	48 83 bc 24 80 00 00 	cmp    QWORD PTR [rsp+0x80],0x0
  daac27:	00 00 
  daac29:	0f 84 2c 2c 00 00    	je     dad85b <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x679b>
  daac2f:	48 8b 84 24 b0 00 00 	mov    rax,QWORD PTR [rsp+0xb0]
  daac36:	00 
  daac37:	48 8b 00             	mov    rax,QWORD PTR [rax]
  daac3a:	48 83 c0 fe          	add    rax,0xfffffffffffffffe
  daac3e:	48 83 f8 0d          	cmp    rax,0xd
  daac42:	0f 87 d7 2b 00 00    	ja     dad81f <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x675f>
  daac48:	48 8d 0d 79 86 2f ff 	lea    rcx,[rip+0xffffffffff2f8679]        # a32c8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x30778>
  daac4f:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  daac53:	48 01 c8             	add    rax,rcx
  daac56:	ff e0                	jmp    rax
  daac58:	4c 89 f6             	mov    rsi,r14
  daac5b:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  daac60:	4c 89 e1             	mov    rcx,r12
  daac63:	4c 8b 44 24 58       	mov    r8,QWORD PTR [rsp+0x58]
  daac68:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  daac6d:	e8 0e eb fd ff       	call   d89780 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  daac72:	4d 89 f7             	mov    r15,r14
  daac75:	48 83 bc 24 80 00 00 	cmp    QWORD PTR [rsp+0x80],0x2
  daac7c:	00 02 
  daac7e:	0f 83 d6 0a 00 00    	jae    dab75a <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x469a>
  daac84:	e9 f7 0c 00 00       	jmp    dab980 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x48c0>
  daac89:	4c 89 f6             	mov    rsi,r14
  daac8c:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  daac91:	e8 ea 9b fe ff       	call   d94880 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  daac96:	4d 89 f7             	mov    r15,r14
  daac99:	48 83 bc 24 80 00 00 	cmp    QWORD PTR [rsp+0x80],0x2
  daaca0:	00 02 
  daaca2:	0f 83 d8 01 00 00    	jae    daae80 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3dc0>
  daaca8:	e9 d3 0c 00 00       	jmp    dab980 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x48c0>
  daacad:	4c 89 f6             	mov    rsi,r14
  daacb0:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  daacb5:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  daacba:	e8 41 62 fe ff       	call   d90f00 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  daacbf:	4d 89 f7             	mov    r15,r14
  daacc2:	48 83 bc 24 80 00 00 	cmp    QWORD PTR [rsp+0x80],0x2
  daacc9:	00 02 
  daaccb:	0f 83 af 01 00 00    	jae    daae80 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3dc0>
  daacd1:	e9 aa 0c 00 00       	jmp    dab980 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x48c0>
  daacd6:	4c 89 f6             	mov    rsi,r14
  daacd9:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  daacde:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  daace3:	e8 58 a6 ff ff       	call   da5340 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  daace8:	4d 89 f7             	mov    r15,r14
  daaceb:	48 83 bc 24 80 00 00 	cmp    QWORD PTR [rsp+0x80],0x2
  daacf2:	00 02 
  daacf4:	0f 83 86 01 00 00    	jae    daae80 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3dc0>
  daacfa:	e9 81 0c 00 00       	jmp    dab980 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x48c0>
  daacff:	4c 89 f6             	mov    rsi,r14
  daad02:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  daad07:	e8 74 64 fe ff       	call   d91180 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  daad0c:	4d 89 f7             	mov    r15,r14
  daad0f:	48 83 bc 24 80 00 00 	cmp    QWORD PTR [rsp+0x80],0x2
  daad16:	00 02 
  daad18:	0f 83 62 01 00 00    	jae    daae80 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3dc0>
  daad1e:	e9 5d 0c 00 00       	jmp    dab980 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x48c0>
  daad23:	4c 89 f6             	mov    rsi,r14
  daad26:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  daad2b:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  daad30:	e8 8b e7 fd ff       	call   d894c0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  daad35:	4d 89 f7             	mov    r15,r14
  daad38:	48 83 bc 24 80 00 00 	cmp    QWORD PTR [rsp+0x80],0x2
  daad3f:	00 02 
  daad41:	0f 83 39 01 00 00    	jae    daae80 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3dc0>
  daad47:	e9 34 0c 00 00       	jmp    dab980 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x48c0>
  daad4c:	4c 89 f6             	mov    rsi,r14
  daad4f:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  daad54:	e8 27 32 ff ff       	call   d9df80 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  daad59:	4d 89 f7             	mov    r15,r14
  daad5c:	48 83 bc 24 80 00 00 	cmp    QWORD PTR [rsp+0x80],0x2
  daad63:	00 02 
  daad65:	0f 83 15 01 00 00    	jae    daae80 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3dc0>
  daad6b:	e9 10 0c 00 00       	jmp    dab980 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x48c0>
  daad70:	4c 89 f6             	mov    rsi,r14
  daad73:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  daad78:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  daad7d:	e8 3e 14 ff ff       	call   d9c1c0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  daad82:	4d 89 f7             	mov    r15,r14
  daad85:	48 83 bc 24 80 00 00 	cmp    QWORD PTR [rsp+0x80],0x2
  daad8c:	00 02 
  daad8e:	0f 83 ec 00 00 00    	jae    daae80 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3dc0>
  daad94:	e9 e7 0b 00 00       	jmp    dab980 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x48c0>
  daad99:	4c 89 f6             	mov    rsi,r14
  daad9c:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  daada1:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  daada6:	e8 15 14 fe ff       	call   d8c1c0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  daadab:	4d 89 f7             	mov    r15,r14
  daadae:	48 83 bc 24 80 00 00 	cmp    QWORD PTR [rsp+0x80],0x2
  daadb5:	00 02 
  daadb7:	0f 83 c3 00 00 00    	jae    daae80 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3dc0>
  daadbd:	e9 be 0b 00 00       	jmp    dab980 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x48c0>
  daadc2:	4c 89 f6             	mov    rsi,r14
  daadc5:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  daadca:	e8 71 db fe ff       	call   d98940 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  daadcf:	4d 89 f7             	mov    r15,r14
  daadd2:	48 83 bc 24 80 00 00 	cmp    QWORD PTR [rsp+0x80],0x2
  daadd9:	00 02 
  daaddb:	0f 83 9f 00 00 00    	jae    daae80 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3dc0>
  daade1:	e9 9a 0b 00 00       	jmp    dab980 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x48c0>
  daade6:	4c 89 f6             	mov    rsi,r14
  daade9:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  daadee:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  daadf3:	e8 48 29 fe ff       	call   d8d740 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  daadf8:	4d 89 f7             	mov    r15,r14
  daadfb:	48 83 bc 24 80 00 00 	cmp    QWORD PTR [rsp+0x80],0x2
  daae02:	00 02 
  daae04:	73 7a                	jae    daae80 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3dc0>
  daae06:	e9 75 0b 00 00       	jmp    dab980 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x48c0>
  daae0b:	4c 89 f6             	mov    rsi,r14
  daae0e:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  daae13:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  daae18:	e8 e3 a2 fd ff       	call   d85100 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  daae1d:	4d 89 f7             	mov    r15,r14
  daae20:	48 83 bc 24 80 00 00 	cmp    QWORD PTR [rsp+0x80],0x2
  daae27:	00 02 
  daae29:	73 55                	jae    daae80 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3dc0>
  daae2b:	e9 50 0b 00 00       	jmp    dab980 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x48c0>
  daae30:	4c 89 f6             	mov    rsi,r14
  daae33:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  daae38:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  daae3d:	e8 fe 29 ff ff       	call   d9d840 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  daae42:	4d 89 f7             	mov    r15,r14
  daae45:	48 83 bc 24 80 00 00 	cmp    QWORD PTR [rsp+0x80],0x2
  daae4c:	00 02 
  daae4e:	73 30                	jae    daae80 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3dc0>
  daae50:	e9 2b 0b 00 00       	jmp    dab980 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x48c0>
  daae55:	4c 89 f6             	mov    rsi,r14
  daae58:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  daae5d:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  daae62:	e8 59 aa fe ff       	call   d958c0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  daae67:	4d 89 f7             	mov    r15,r14
  daae6a:	48 83 bc 24 80 00 00 	cmp    QWORD PTR [rsp+0x80],0x2
  daae71:	00 02 
  daae73:	0f 82 07 0b 00 00    	jb     dab980 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x48c0>
  daae79:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  daae80:	48 8b 84 24 b0 00 00 	mov    rax,QWORD PTR [rsp+0xb0]
  daae87:	00 
  daae88:	48 8b 18             	mov    rbx,QWORD PTR [rax]
  daae8b:	4c 8b a4 24 30 01 00 	mov    r12,QWORD PTR [rsp+0x130]
  daae92:	00 
  daae93:	4c 8b ac 24 98 00 00 	mov    r13,QWORD PTR [rsp+0x98]
  daae9a:	00 
  daae9b:	48 8b 84 24 90 00 00 	mov    rax,QWORD PTR [rsp+0x90]
  daaea2:	00 
  daaea3:	48 8b 8c 24 e0 00 00 	mov    rcx,QWORD PTR [rsp+0xe0]
  daaeaa:	00 
  daaeab:	eb 4c                	jmp    daaef9 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3e39>
  daaead:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  daaeb2:	0f 29 84 24 40 01 00 	movaps XMMWORD PTR [rsp+0x140],xmm0
  daaeb9:	00 
  daaeba:	48 89 d7             	mov    rdi,rdx
  daaebd:	4c 89 fe             	mov    rsi,r15
  daaec0:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  daaec5:	48 89 d9             	mov    rcx,rbx
  daaec8:	4c 8d 8c 24 40 01 00 	lea    r9,[rsp+0x140]
  daaecf:	00 
  daaed0:	e8 eb a4 f1 ff       	call   cc53c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  daaed5:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  daaedc:	00 00 00 00 
  daaee0:	49 0f af de          	imul   rbx,r14
  daaee4:	49 83 c5 18          	add    r13,0x18
  daaee8:	4c 89 f8             	mov    rax,r15
  daaeeb:	49 ff cc             	dec    r12
  daaeee:	48 8b 4c 24 68       	mov    rcx,QWORD PTR [rsp+0x68]
  daaef3:	0f 84 87 0a 00 00    	je     dab980 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x48c0>
  daaef9:	48 89 c2             	mov    rdx,rax
  daaefc:	4d 8b 75 f8          	mov    r14,QWORD PTR [r13-0x8]
  daaf00:	4d 8b 45 00          	mov    r8,QWORD PTR [r13+0x0]
  daaf04:	4c 03 44 24 78       	add    r8,QWORD PTR [rsp+0x78]
  daaf09:	4c 89 b4 24 88 00 00 	mov    QWORD PTR [rsp+0x88],r14
  daaf10:	00 
  daaf11:	49 8d 46 fe          	lea    rax,[r14-0x2]
  daaf15:	48 83 f8 0e          	cmp    rax,0xe
  daaf19:	0f 87 96 28 00 00    	ja     dad7b5 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x66f5>
  daaf1f:	49 89 cf             	mov    r15,rcx
  daaf22:	48 8d 0d bf 84 2f ff 	lea    rcx,[rip+0xffffffffff2f84bf]        # a33e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x30898>
  daaf29:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  daaf2d:	48 01 c8             	add    rax,rcx
  daaf30:	48 89 54 24 68       	mov    QWORD PTR [rsp+0x68],rdx
  daaf35:	ff e0                	jmp    rax
  daaf37:	48 89 d7             	mov    rdi,rdx
  daaf3a:	4c 89 fe             	mov    rsi,r15
  daaf3d:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  daaf42:	48 89 d9             	mov    rcx,rbx
  daaf45:	e8 36 20 f1 ff       	call   cbcf80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  daaf4a:	eb 94                	jmp    daaee0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3e20>
  daaf4c:	48 89 d7             	mov    rdi,rdx
  daaf4f:	4c 89 fe             	mov    rsi,r15
  daaf52:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  daaf57:	48 89 d9             	mov    rcx,rbx
  daaf5a:	e8 a1 6a f1 ff       	call   cc1a00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  daaf5f:	e9 7c ff ff ff       	jmp    daaee0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3e20>
  daaf64:	48 89 d7             	mov    rdi,rdx
  daaf67:	4c 89 fe             	mov    rsi,r15
  daaf6a:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  daaf6f:	48 89 d9             	mov    rcx,rbx
  daaf72:	e8 89 29 f1 ff       	call   cbd900 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  daaf77:	e9 64 ff ff ff       	jmp    daaee0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3e20>
  daaf7c:	48 89 d7             	mov    rdi,rdx
  daaf7f:	4c 89 fe             	mov    rsi,r15
  daaf82:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  daaf87:	48 89 d9             	mov    rcx,rbx
  daaf8a:	e8 b1 7f f1 ff       	call   cc2f40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  daaf8f:	e9 4c ff ff ff       	jmp    daaee0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3e20>
  daaf94:	48 89 d7             	mov    rdi,rdx
  daaf97:	4c 89 fe             	mov    rsi,r15
  daaf9a:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  daaf9f:	48 89 d9             	mov    rcx,rbx
  daafa2:	e8 d9 4d f1 ff       	call   cbfd80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  daafa7:	e9 34 ff ff ff       	jmp    daaee0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3e20>
  daafac:	48 89 d7             	mov    rdi,rdx
  daafaf:	4c 89 fe             	mov    rsi,r15
  daafb2:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  daafb7:	48 89 d9             	mov    rcx,rbx
  daafba:	e8 41 23 f1 ff       	call   cbd300 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  daafbf:	e9 1c ff ff ff       	jmp    daaee0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3e20>
  daafc4:	48 89 d7             	mov    rdi,rdx
  daafc7:	4c 89 fe             	mov    rsi,r15
  daafca:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  daafcf:	48 89 d9             	mov    rcx,rbx
  daafd2:	e8 a9 25 f1 ff       	call   cbd580 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  daafd7:	e9 04 ff ff ff       	jmp    daaee0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3e20>
  daafdc:	48 89 d7             	mov    rdi,rdx
  daafdf:	4c 89 fe             	mov    rsi,r15
  daafe2:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  daafe7:	48 89 d9             	mov    rcx,rbx
  daafea:	e8 11 3a f1 ff       	call   cbea00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  daafef:	e9 ec fe ff ff       	jmp    daaee0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3e20>
  daaff4:	48 89 d7             	mov    rdi,rdx
  daaff7:	4c 89 fe             	mov    rsi,r15
  daaffa:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  daafff:	48 89 d9             	mov    rcx,rbx
  dab002:	e8 b9 20 f1 ff       	call   cbd0c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  dab007:	e9 d4 fe ff ff       	jmp    daaee0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3e20>
  dab00c:	48 89 d7             	mov    rdi,rdx
  dab00f:	4c 89 fe             	mov    rsi,r15
  dab012:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  dab017:	48 89 d9             	mov    rcx,rbx
  dab01a:	e8 21 2d f1 ff       	call   cbdd40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  dab01f:	e9 bc fe ff ff       	jmp    daaee0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3e20>
  dab024:	48 89 d7             	mov    rdi,rdx
  dab027:	4c 89 fe             	mov    rsi,r15
  dab02a:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  dab02f:	48 89 d9             	mov    rcx,rbx
  dab032:	e8 09 91 f1 ff       	call   cc4140 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  dab037:	e9 a4 fe ff ff       	jmp    daaee0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3e20>
  dab03c:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  dab041:	0f 29 84 24 40 01 00 	movaps XMMWORD PTR [rsp+0x140],xmm0
  dab048:	00 
  dab049:	48 89 d7             	mov    rdi,rdx
  dab04c:	4c 89 fe             	mov    rsi,r15
  dab04f:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  dab054:	48 89 d9             	mov    rcx,rbx
  dab057:	4c 8d 8c 24 40 01 00 	lea    r9,[rsp+0x140]
  dab05e:	00 
  dab05f:	e8 9c 33 f1 ff       	call   cbe400 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  dab064:	e9 77 fe ff ff       	jmp    daaee0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3e20>
  dab069:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  dab06e:	0f 29 84 24 40 01 00 	movaps XMMWORD PTR [rsp+0x140],xmm0
  dab075:	00 
  dab076:	48 89 d7             	mov    rdi,rdx
  dab079:	4c 89 fe             	mov    rsi,r15
  dab07c:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  dab081:	48 89 d9             	mov    rcx,rbx
  dab084:	4c 8d 8c 24 40 01 00 	lea    r9,[rsp+0x140]
  dab08b:	00 
  dab08c:	e8 2f 5d f1 ff       	call   cc0dc0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  dab091:	e9 4a fe ff ff       	jmp    daaee0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3e20>
  dab096:	48 89 d7             	mov    rdi,rdx
  dab099:	4c 89 fe             	mov    rsi,r15
  dab09c:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  dab0a1:	48 89 d9             	mov    rcx,rbx
  dab0a4:	e8 97 42 f1 ff       	call   cbf340 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  dab0a9:	e9 32 fe ff ff       	jmp    daaee0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3e20>
  dab0ae:	4c 89 f6             	mov    rsi,r14
  dab0b1:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  dab0b6:	4c 89 e1             	mov    rcx,r12
  dab0b9:	e8 02 af ff ff       	call   da5fc0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  dab0be:	4d 89 f7             	mov    r15,r14
  dab0c1:	48 83 bc 24 80 00 00 	cmp    QWORD PTR [rsp+0x80],0x2
  dab0c8:	00 02 
  dab0ca:	0f 83 35 04 00 00    	jae    dab505 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4445>
  dab0d0:	e9 ab 08 00 00       	jmp    dab980 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x48c0>
  dab0d5:	4c 89 f6             	mov    rsi,r14
  dab0d8:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  dab0dd:	4c 89 e1             	mov    rcx,r12
  dab0e0:	4c 8b 44 24 58       	mov    r8,QWORD PTR [rsp+0x58]
  dab0e5:	e8 16 7d ff ff       	call   da2e00 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  dab0ea:	4d 89 f7             	mov    r15,r14
  dab0ed:	48 83 bc 24 80 00 00 	cmp    QWORD PTR [rsp+0x80],0x2
  dab0f4:	00 02 
  dab0f6:	0f 83 5e 06 00 00    	jae    dab75a <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x469a>
  dab0fc:	e9 7f 08 00 00       	jmp    dab980 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x48c0>
  dab101:	4c 89 f6             	mov    rsi,r14
  dab104:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  dab109:	4c 89 e1             	mov    rcx,r12
  dab10c:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  dab111:	e8 2a 75 ff ff       	call   da2640 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  dab116:	4d 89 f7             	mov    r15,r14
  dab119:	48 83 bc 24 80 00 00 	cmp    QWORD PTR [rsp+0x80],0x2
  dab120:	00 02 
  dab122:	0f 83 dd 03 00 00    	jae    dab505 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4445>
  dab128:	e9 53 08 00 00       	jmp    dab980 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x48c0>
  dab12d:	4c 89 f6             	mov    rsi,r14
  dab130:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  dab135:	4c 89 e1             	mov    rcx,r12
  dab138:	4c 8b 44 24 58       	mov    r8,QWORD PTR [rsp+0x58]
  dab13d:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  dab142:	e8 f9 5e ff ff       	call   da1040 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  dab147:	4d 89 f7             	mov    r15,r14
  dab14a:	48 83 bc 24 80 00 00 	cmp    QWORD PTR [rsp+0x80],0x2
  dab151:	00 02 
  dab153:	0f 83 01 06 00 00    	jae    dab75a <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x469a>
  dab159:	e9 22 08 00 00       	jmp    dab980 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x48c0>
  dab15e:	4c 89 f6             	mov    rsi,r14
  dab161:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  dab166:	4c 89 e1             	mov    rcx,r12
  dab169:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  dab16e:	e8 8d 03 ff ff       	call   d9b500 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  dab173:	4d 89 f7             	mov    r15,r14
  dab176:	48 83 bc 24 80 00 00 	cmp    QWORD PTR [rsp+0x80],0x2
  dab17d:	00 02 
  dab17f:	0f 83 80 03 00 00    	jae    dab505 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4445>
  dab185:	e9 f6 07 00 00       	jmp    dab980 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x48c0>
  dab18a:	4c 89 f6             	mov    rsi,r14
  dab18d:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  dab192:	4c 89 e1             	mov    rcx,r12
  dab195:	4c 8b 44 24 58       	mov    r8,QWORD PTR [rsp+0x58]
  dab19a:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  dab19f:	e8 9c f0 fe ff       	call   d9a240 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  dab1a4:	4d 89 f7             	mov    r15,r14
  dab1a7:	48 83 bc 24 80 00 00 	cmp    QWORD PTR [rsp+0x80],0x2
  dab1ae:	00 02 
  dab1b0:	0f 83 a4 05 00 00    	jae    dab75a <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x469a>
  dab1b6:	e9 c5 07 00 00       	jmp    dab980 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x48c0>
  dab1bb:	4c 89 f6             	mov    rsi,r14
  dab1be:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  dab1c3:	4c 89 e1             	mov    rcx,r12
  dab1c6:	e8 b5 03 fe ff       	call   d8b580 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  dab1cb:	4d 89 f7             	mov    r15,r14
  dab1ce:	48 83 bc 24 80 00 00 	cmp    QWORD PTR [rsp+0x80],0x2
  dab1d5:	00 02 
  dab1d7:	0f 83 28 03 00 00    	jae    dab505 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4445>
  dab1dd:	e9 9e 07 00 00       	jmp    dab980 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x48c0>
  dab1e2:	4c 89 f6             	mov    rsi,r14
  dab1e5:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  dab1ea:	4c 89 e1             	mov    rcx,r12
  dab1ed:	4c 8b 44 24 58       	mov    r8,QWORD PTR [rsp+0x58]
  dab1f2:	e8 09 ad fe ff       	call   d95f00 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  dab1f7:	4d 89 f7             	mov    r15,r14
  dab1fa:	48 83 bc 24 80 00 00 	cmp    QWORD PTR [rsp+0x80],0x2
  dab201:	00 02 
  dab203:	0f 83 51 05 00 00    	jae    dab75a <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x469a>
  dab209:	e9 72 07 00 00       	jmp    dab980 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x48c0>
  dab20e:	4c 89 f6             	mov    rsi,r14
  dab211:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  dab216:	4c 89 e1             	mov    rcx,r12
  dab219:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  dab21e:	e8 9d 5c ff ff       	call   da0ec0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  dab223:	4d 89 f7             	mov    r15,r14
  dab226:	48 83 bc 24 80 00 00 	cmp    QWORD PTR [rsp+0x80],0x2
  dab22d:	00 02 
  dab22f:	0f 83 d0 02 00 00    	jae    dab505 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4445>
  dab235:	e9 46 07 00 00       	jmp    dab980 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x48c0>
  dab23a:	4c 89 f6             	mov    rsi,r14
  dab23d:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  dab242:	4c 89 e1             	mov    rcx,r12
  dab245:	4c 8b 44 24 58       	mov    r8,QWORD PTR [rsp+0x58]
  dab24a:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  dab24f:	e8 ec 81 fd ff       	call   d83440 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  dab254:	4d 89 f7             	mov    r15,r14
  dab257:	48 83 bc 24 80 00 00 	cmp    QWORD PTR [rsp+0x80],0x2
  dab25e:	00 02 
  dab260:	0f 83 f4 04 00 00    	jae    dab75a <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x469a>
  dab266:	e9 15 07 00 00       	jmp    dab980 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x48c0>
  dab26b:	4c 89 f6             	mov    rsi,r14
  dab26e:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  dab273:	4c 89 e1             	mov    rcx,r12
  dab276:	e8 05 3b ff ff       	call   d9ed80 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  dab27b:	4d 89 f7             	mov    r15,r14
  dab27e:	48 83 bc 24 80 00 00 	cmp    QWORD PTR [rsp+0x80],0x2
  dab285:	00 02 
  dab287:	0f 83 78 02 00 00    	jae    dab505 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4445>
  dab28d:	e9 ee 06 00 00       	jmp    dab980 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x48c0>
  dab292:	4c 89 f6             	mov    rsi,r14
  dab295:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  dab29a:	4c 89 e1             	mov    rcx,r12
  dab29d:	4c 8b 44 24 58       	mov    r8,QWORD PTR [rsp+0x58]
  dab2a2:	e8 99 d1 fe ff       	call   d98440 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  dab2a7:	4d 89 f7             	mov    r15,r14
  dab2aa:	48 83 bc 24 80 00 00 	cmp    QWORD PTR [rsp+0x80],0x2
  dab2b1:	00 02 
  dab2b3:	0f 83 a1 04 00 00    	jae    dab75a <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x469a>
  dab2b9:	e9 c2 06 00 00       	jmp    dab980 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x48c0>
  dab2be:	4c 89 f6             	mov    rsi,r14
  dab2c1:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  dab2c6:	4c 89 e1             	mov    rcx,r12
  dab2c9:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  dab2ce:	e8 2d 91 fd ff       	call   d84400 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  dab2d3:	4d 89 f7             	mov    r15,r14
  dab2d6:	48 83 bc 24 80 00 00 	cmp    QWORD PTR [rsp+0x80],0x2
  dab2dd:	00 02 
  dab2df:	0f 83 20 02 00 00    	jae    dab505 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4445>
  dab2e5:	e9 96 06 00 00       	jmp    dab980 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x48c0>
  dab2ea:	4c 89 f6             	mov    rsi,r14
  dab2ed:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  dab2f2:	4c 89 e1             	mov    rcx,r12
  dab2f5:	4c 8b 44 24 58       	mov    r8,QWORD PTR [rsp+0x58]
  dab2fa:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  dab2ff:	e8 7c 70 fe ff       	call   d92380 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  dab304:	4d 89 f7             	mov    r15,r14
  dab307:	48 83 bc 24 80 00 00 	cmp    QWORD PTR [rsp+0x80],0x2
  dab30e:	00 02 
  dab310:	0f 83 44 04 00 00    	jae    dab75a <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x469a>
  dab316:	e9 65 06 00 00       	jmp    dab980 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x48c0>
  dab31b:	4c 89 f6             	mov    rsi,r14
  dab31e:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  dab323:	4c 89 e1             	mov    rcx,r12
  dab326:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  dab32b:	e8 d0 71 ff ff       	call   da2500 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  dab330:	4d 89 f7             	mov    r15,r14
  dab333:	48 83 bc 24 80 00 00 	cmp    QWORD PTR [rsp+0x80],0x2
  dab33a:	00 02 
  dab33c:	0f 83 c3 01 00 00    	jae    dab505 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4445>
  dab342:	e9 39 06 00 00       	jmp    dab980 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x48c0>
  dab347:	4c 89 f6             	mov    rsi,r14
  dab34a:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  dab34f:	4c 89 e1             	mov    rcx,r12
  dab352:	4c 8b 44 24 58       	mov    r8,QWORD PTR [rsp+0x58]
  dab357:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  dab35c:	e8 5f 62 ff ff       	call   da15c0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  dab361:	4d 89 f7             	mov    r15,r14
  dab364:	48 83 bc 24 80 00 00 	cmp    QWORD PTR [rsp+0x80],0x2
  dab36b:	00 02 
  dab36d:	0f 83 e7 03 00 00    	jae    dab75a <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x469a>
  dab373:	e9 08 06 00 00       	jmp    dab980 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x48c0>
  dab378:	4c 89 f6             	mov    rsi,r14
  dab37b:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  dab380:	4c 89 e1             	mov    rcx,r12
  dab383:	e8 78 3c ff ff       	call   d9f000 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  dab388:	4d 89 f7             	mov    r15,r14
  dab38b:	48 83 bc 24 80 00 00 	cmp    QWORD PTR [rsp+0x80],0x2
  dab392:	00 02 
  dab394:	0f 83 6b 01 00 00    	jae    dab505 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4445>
  dab39a:	e9 e1 05 00 00       	jmp    dab980 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x48c0>
  dab39f:	4c 89 f6             	mov    rsi,r14
  dab3a2:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  dab3a7:	4c 89 e1             	mov    rcx,r12
  dab3aa:	4c 8b 44 24 58       	mov    r8,QWORD PTR [rsp+0x58]
  dab3af:	e8 4c 30 fe ff       	call   d8e400 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  dab3b4:	4d 89 f7             	mov    r15,r14
  dab3b7:	48 83 bc 24 80 00 00 	cmp    QWORD PTR [rsp+0x80],0x2
  dab3be:	00 02 
  dab3c0:	0f 83 94 03 00 00    	jae    dab75a <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x469a>
  dab3c6:	e9 b5 05 00 00       	jmp    dab980 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x48c0>
  dab3cb:	4c 89 f6             	mov    rsi,r14
  dab3ce:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  dab3d3:	4c 89 e1             	mov    rcx,r12
  dab3d6:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  dab3db:	e8 60 ac fd ff       	call   d86040 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  dab3e0:	4d 89 f7             	mov    r15,r14
  dab3e3:	48 83 bc 24 80 00 00 	cmp    QWORD PTR [rsp+0x80],0x2
  dab3ea:	00 02 
  dab3ec:	0f 83 13 01 00 00    	jae    dab505 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4445>
  dab3f2:	e9 89 05 00 00       	jmp    dab980 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x48c0>
  dab3f7:	4c 89 f6             	mov    rsi,r14
  dab3fa:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  dab3ff:	4c 89 e1             	mov    rcx,r12
  dab402:	4c 8b 44 24 58       	mov    r8,QWORD PTR [rsp+0x58]
  dab407:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  dab40c:	e8 2f e5 fd ff       	call   d89940 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  dab411:	4d 89 f7             	mov    r15,r14
  dab414:	48 83 bc 24 80 00 00 	cmp    QWORD PTR [rsp+0x80],0x2
  dab41b:	00 02 
  dab41d:	0f 83 37 03 00 00    	jae    dab75a <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x469a>
  dab423:	e9 58 05 00 00       	jmp    dab980 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x48c0>
  dab428:	4c 89 f6             	mov    rsi,r14
  dab42b:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  dab430:	4c 89 e1             	mov    rcx,r12
  dab433:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  dab438:	e8 c3 6c ff ff       	call   da2100 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  dab43d:	4d 89 f7             	mov    r15,r14
  dab440:	48 83 bc 24 80 00 00 	cmp    QWORD PTR [rsp+0x80],0x2
  dab447:	00 02 
  dab449:	0f 83 b6 00 00 00    	jae    dab505 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4445>
  dab44f:	e9 2c 05 00 00       	jmp    dab980 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x48c0>
  dab454:	4c 89 f6             	mov    rsi,r14
  dab457:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  dab45c:	4c 89 e1             	mov    rcx,r12
  dab45f:	4c 8b 44 24 58       	mov    r8,QWORD PTR [rsp+0x58]
  dab464:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  dab469:	e8 52 97 ff ff       	call   da4bc0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  dab46e:	4d 89 f7             	mov    r15,r14
  dab471:	48 83 bc 24 80 00 00 	cmp    QWORD PTR [rsp+0x80],0x2
  dab478:	00 02 
  dab47a:	0f 83 da 02 00 00    	jae    dab75a <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x469a>
  dab480:	e9 fb 04 00 00       	jmp    dab980 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x48c0>
  dab485:	4c 89 f6             	mov    rsi,r14
  dab488:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  dab48d:	4c 89 e1             	mov    rcx,r12
  dab490:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  dab495:	e8 e6 f8 fd ff       	call   d8ad80 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  dab49a:	4d 89 f7             	mov    r15,r14
  dab49d:	48 83 bc 24 80 00 00 	cmp    QWORD PTR [rsp+0x80],0x2
  dab4a4:	00 02 
  dab4a6:	73 5d                	jae    dab505 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4445>
  dab4a8:	e9 d3 04 00 00       	jmp    dab980 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x48c0>
  dab4ad:	4c 89 f6             	mov    rsi,r14
  dab4b0:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  dab4b5:	4c 89 e1             	mov    rcx,r12
  dab4b8:	4c 8b 44 24 58       	mov    r8,QWORD PTR [rsp+0x58]
  dab4bd:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  dab4c2:	e8 79 37 fe ff       	call   d8ec40 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  dab4c7:	4d 89 f7             	mov    r15,r14
  dab4ca:	48 83 bc 24 80 00 00 	cmp    QWORD PTR [rsp+0x80],0x2
  dab4d1:	00 02 
  dab4d3:	0f 83 81 02 00 00    	jae    dab75a <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x469a>
  dab4d9:	e9 a2 04 00 00       	jmp    dab980 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x48c0>
  dab4de:	4c 89 f6             	mov    rsi,r14
  dab4e1:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  dab4e6:	4c 89 e1             	mov    rcx,r12
  dab4e9:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  dab4ee:	e8 cd 67 fe ff       	call   d91cc0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  dab4f3:	4d 89 f7             	mov    r15,r14
  dab4f6:	48 83 bc 24 80 00 00 	cmp    QWORD PTR [rsp+0x80],0x2
  dab4fd:	00 02 
  dab4ff:	0f 82 7b 04 00 00    	jb     dab980 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x48c0>
  dab505:	48 8b 84 24 b0 00 00 	mov    rax,QWORD PTR [rsp+0xb0]
  dab50c:	00 
  dab50d:	48 8b 18             	mov    rbx,QWORD PTR [rax]
  dab510:	4c 8b a4 24 30 01 00 	mov    r12,QWORD PTR [rsp+0x130]
  dab517:	00 
  dab518:	4c 8b ac 24 98 00 00 	mov    r13,QWORD PTR [rsp+0x98]
  dab51f:	00 
  dab520:	48 8b 84 24 90 00 00 	mov    rax,QWORD PTR [rsp+0x90]
  dab527:	00 
  dab528:	48 8b 8c 24 e0 00 00 	mov    rcx,QWORD PTR [rsp+0xe0]
  dab52f:	00 
  dab530:	eb 47                	jmp    dab579 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x44b9>
  dab532:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  dab537:	0f 29 84 24 40 01 00 	movaps XMMWORD PTR [rsp+0x140],xmm0
  dab53e:	00 
  dab53f:	48 89 d7             	mov    rdi,rdx
  dab542:	4c 89 fe             	mov    rsi,r15
  dab545:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  dab54a:	48 89 d9             	mov    rcx,rbx
  dab54d:	4c 8d 8c 24 40 01 00 	lea    r9,[rsp+0x140]
  dab554:	00 
  dab555:	e8 66 9e f1 ff       	call   cc53c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  dab55a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  dab560:	49 0f af de          	imul   rbx,r14
  dab564:	49 83 c5 18          	add    r13,0x18
  dab568:	4c 89 f8             	mov    rax,r15
  dab56b:	49 ff cc             	dec    r12
  dab56e:	48 8b 4c 24 68       	mov    rcx,QWORD PTR [rsp+0x68]
  dab573:	0f 84 07 04 00 00    	je     dab980 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x48c0>
  dab579:	48 89 c2             	mov    rdx,rax
  dab57c:	4d 8b 75 f8          	mov    r14,QWORD PTR [r13-0x8]
  dab580:	4d 8b 45 00          	mov    r8,QWORD PTR [r13+0x0]
  dab584:	4c 03 44 24 78       	add    r8,QWORD PTR [rsp+0x78]
  dab589:	4c 89 b4 24 88 00 00 	mov    QWORD PTR [rsp+0x88],r14
  dab590:	00 
  dab591:	49 8d 46 fe          	lea    rax,[r14-0x2]
  dab595:	48 83 f8 0e          	cmp    rax,0xe
  dab599:	0f 87 16 22 00 00    	ja     dad7b5 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x66f5>
  dab59f:	49 89 cf             	mov    r15,rcx
  dab5a2:	48 8d 0d cb 7d 2f ff 	lea    rcx,[rip+0xffffffffff2f7dcb]        # a3374 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x30824>
  dab5a9:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  dab5ad:	48 01 c8             	add    rax,rcx
  dab5b0:	48 89 54 24 68       	mov    QWORD PTR [rsp+0x68],rdx
  dab5b5:	ff e0                	jmp    rax
  dab5b7:	48 89 d7             	mov    rdi,rdx
  dab5ba:	4c 89 fe             	mov    rsi,r15
  dab5bd:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  dab5c2:	48 89 d9             	mov    rcx,rbx
  dab5c5:	e8 b6 19 f1 ff       	call   cbcf80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  dab5ca:	eb 94                	jmp    dab560 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x44a0>
  dab5cc:	48 89 d7             	mov    rdi,rdx
  dab5cf:	4c 89 fe             	mov    rsi,r15
  dab5d2:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  dab5d7:	48 89 d9             	mov    rcx,rbx
  dab5da:	e8 21 64 f1 ff       	call   cc1a00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  dab5df:	e9 7c ff ff ff       	jmp    dab560 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x44a0>
  dab5e4:	48 89 d7             	mov    rdi,rdx
  dab5e7:	4c 89 fe             	mov    rsi,r15
  dab5ea:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  dab5ef:	48 89 d9             	mov    rcx,rbx
  dab5f2:	e8 09 23 f1 ff       	call   cbd900 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  dab5f7:	e9 64 ff ff ff       	jmp    dab560 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x44a0>
  dab5fc:	48 89 d7             	mov    rdi,rdx
  dab5ff:	4c 89 fe             	mov    rsi,r15
  dab602:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  dab607:	48 89 d9             	mov    rcx,rbx
  dab60a:	e8 31 79 f1 ff       	call   cc2f40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  dab60f:	e9 4c ff ff ff       	jmp    dab560 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x44a0>
  dab614:	48 89 d7             	mov    rdi,rdx
  dab617:	4c 89 fe             	mov    rsi,r15
  dab61a:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  dab61f:	48 89 d9             	mov    rcx,rbx
  dab622:	e8 59 47 f1 ff       	call   cbfd80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  dab627:	e9 34 ff ff ff       	jmp    dab560 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x44a0>
  dab62c:	48 89 d7             	mov    rdi,rdx
  dab62f:	4c 89 fe             	mov    rsi,r15
  dab632:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  dab637:	48 89 d9             	mov    rcx,rbx
  dab63a:	e8 c1 1c f1 ff       	call   cbd300 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  dab63f:	e9 1c ff ff ff       	jmp    dab560 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x44a0>
  dab644:	48 89 d7             	mov    rdi,rdx
  dab647:	4c 89 fe             	mov    rsi,r15
  dab64a:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  dab64f:	48 89 d9             	mov    rcx,rbx
  dab652:	e8 29 1f f1 ff       	call   cbd580 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  dab657:	e9 04 ff ff ff       	jmp    dab560 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x44a0>
  dab65c:	48 89 d7             	mov    rdi,rdx
  dab65f:	4c 89 fe             	mov    rsi,r15
  dab662:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  dab667:	48 89 d9             	mov    rcx,rbx
  dab66a:	e8 91 33 f1 ff       	call   cbea00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  dab66f:	e9 ec fe ff ff       	jmp    dab560 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x44a0>
  dab674:	48 89 d7             	mov    rdi,rdx
  dab677:	4c 89 fe             	mov    rsi,r15
  dab67a:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  dab67f:	48 89 d9             	mov    rcx,rbx
  dab682:	e8 39 1a f1 ff       	call   cbd0c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  dab687:	e9 d4 fe ff ff       	jmp    dab560 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x44a0>
  dab68c:	48 89 d7             	mov    rdi,rdx
  dab68f:	4c 89 fe             	mov    rsi,r15
  dab692:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  dab697:	48 89 d9             	mov    rcx,rbx
  dab69a:	e8 a1 26 f1 ff       	call   cbdd40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  dab69f:	e9 bc fe ff ff       	jmp    dab560 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x44a0>
  dab6a4:	48 89 d7             	mov    rdi,rdx
  dab6a7:	4c 89 fe             	mov    rsi,r15
  dab6aa:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  dab6af:	48 89 d9             	mov    rcx,rbx
  dab6b2:	e8 89 8a f1 ff       	call   cc4140 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  dab6b7:	e9 a4 fe ff ff       	jmp    dab560 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x44a0>
  dab6bc:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  dab6c1:	0f 29 84 24 40 01 00 	movaps XMMWORD PTR [rsp+0x140],xmm0
  dab6c8:	00 
  dab6c9:	48 89 d7             	mov    rdi,rdx
  dab6cc:	4c 89 fe             	mov    rsi,r15
  dab6cf:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  dab6d4:	48 89 d9             	mov    rcx,rbx
  dab6d7:	4c 8d 8c 24 40 01 00 	lea    r9,[rsp+0x140]
  dab6de:	00 
  dab6df:	e8 1c 2d f1 ff       	call   cbe400 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  dab6e4:	e9 77 fe ff ff       	jmp    dab560 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x44a0>
  dab6e9:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  dab6ee:	0f 29 84 24 40 01 00 	movaps XMMWORD PTR [rsp+0x140],xmm0
  dab6f5:	00 
  dab6f6:	48 89 d7             	mov    rdi,rdx
  dab6f9:	4c 89 fe             	mov    rsi,r15
  dab6fc:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  dab701:	48 89 d9             	mov    rcx,rbx
  dab704:	4c 8d 8c 24 40 01 00 	lea    r9,[rsp+0x140]
  dab70b:	00 
  dab70c:	e8 af 56 f1 ff       	call   cc0dc0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  dab711:	e9 4a fe ff ff       	jmp    dab560 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x44a0>
  dab716:	48 89 d7             	mov    rdi,rdx
  dab719:	4c 89 fe             	mov    rsi,r15
  dab71c:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  dab721:	48 89 d9             	mov    rcx,rbx
  dab724:	e8 17 3c f1 ff       	call   cbf340 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  dab729:	e9 32 fe ff ff       	jmp    dab560 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x44a0>
  dab72e:	4c 89 f6             	mov    rsi,r14
  dab731:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  dab736:	4c 89 e1             	mov    rcx,r12
  dab739:	4c 8b 44 24 58       	mov    r8,QWORD PTR [rsp+0x58]
  dab73e:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  dab743:	e8 78 2a ff ff       	call   d9e1c0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  dab748:	4d 89 f7             	mov    r15,r14
  dab74b:	48 83 bc 24 80 00 00 	cmp    QWORD PTR [rsp+0x80],0x2
  dab752:	00 02 
  dab754:	0f 82 26 02 00 00    	jb     dab980 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x48c0>
  dab75a:	48 8b 84 24 b0 00 00 	mov    rax,QWORD PTR [rsp+0xb0]
  dab761:	00 
  dab762:	48 8b 18             	mov    rbx,QWORD PTR [rax]
  dab765:	4c 8b a4 24 30 01 00 	mov    r12,QWORD PTR [rsp+0x130]
  dab76c:	00 
  dab76d:	4c 8b ac 24 98 00 00 	mov    r13,QWORD PTR [rsp+0x98]
  dab774:	00 
  dab775:	48 8b 84 24 90 00 00 	mov    rax,QWORD PTR [rsp+0x90]
  dab77c:	00 
  dab77d:	48 8b 8c 24 e0 00 00 	mov    rcx,QWORD PTR [rsp+0xe0]
  dab784:	00 
  dab785:	eb 42                	jmp    dab7c9 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4709>
  dab787:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  dab78c:	0f 29 84 24 40 01 00 	movaps XMMWORD PTR [rsp+0x140],xmm0
  dab793:	00 
  dab794:	48 89 d7             	mov    rdi,rdx
  dab797:	4c 89 fe             	mov    rsi,r15
  dab79a:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  dab79f:	48 89 d9             	mov    rcx,rbx
  dab7a2:	4c 8d 8c 24 40 01 00 	lea    r9,[rsp+0x140]
  dab7a9:	00 
  dab7aa:	e8 11 9c f1 ff       	call   cc53c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  dab7af:	90                   	nop
  dab7b0:	49 0f af de          	imul   rbx,r14
  dab7b4:	49 83 c5 18          	add    r13,0x18
  dab7b8:	4c 89 f8             	mov    rax,r15
  dab7bb:	49 ff cc             	dec    r12
  dab7be:	48 8b 4c 24 68       	mov    rcx,QWORD PTR [rsp+0x68]
  dab7c3:	0f 84 b7 01 00 00    	je     dab980 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x48c0>
  dab7c9:	48 89 c2             	mov    rdx,rax
  dab7cc:	4d 8b 75 f8          	mov    r14,QWORD PTR [r13-0x8]
  dab7d0:	4d 8b 45 00          	mov    r8,QWORD PTR [r13+0x0]
  dab7d4:	4c 03 44 24 78       	add    r8,QWORD PTR [rsp+0x78]
  dab7d9:	4c 89 b4 24 88 00 00 	mov    QWORD PTR [rsp+0x88],r14
  dab7e0:	00 
  dab7e1:	49 8d 46 fe          	lea    rax,[r14-0x2]
  dab7e5:	48 83 f8 0e          	cmp    rax,0xe
  dab7e9:	0f 87 c6 1f 00 00    	ja     dad7b5 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x66f5>
  dab7ef:	49 89 cf             	mov    r15,rcx
  dab7f2:	48 8d 0d 07 7b 2f ff 	lea    rcx,[rip+0xffffffffff2f7b07]        # a3300 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x307b0>
  dab7f9:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  dab7fd:	48 01 c8             	add    rax,rcx
  dab800:	48 89 54 24 68       	mov    QWORD PTR [rsp+0x68],rdx
  dab805:	ff e0                	jmp    rax
  dab807:	48 89 d7             	mov    rdi,rdx
  dab80a:	4c 89 fe             	mov    rsi,r15
  dab80d:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  dab812:	48 89 d9             	mov    rcx,rbx
  dab815:	e8 66 17 f1 ff       	call   cbcf80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  dab81a:	eb 94                	jmp    dab7b0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x46f0>
  dab81c:	48 89 d7             	mov    rdi,rdx
  dab81f:	4c 89 fe             	mov    rsi,r15
  dab822:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  dab827:	48 89 d9             	mov    rcx,rbx
  dab82a:	e8 d1 61 f1 ff       	call   cc1a00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  dab82f:	e9 7c ff ff ff       	jmp    dab7b0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x46f0>
  dab834:	48 89 d7             	mov    rdi,rdx
  dab837:	4c 89 fe             	mov    rsi,r15
  dab83a:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  dab83f:	48 89 d9             	mov    rcx,rbx
  dab842:	e8 b9 20 f1 ff       	call   cbd900 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  dab847:	e9 64 ff ff ff       	jmp    dab7b0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x46f0>
  dab84c:	48 89 d7             	mov    rdi,rdx
  dab84f:	4c 89 fe             	mov    rsi,r15
  dab852:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  dab857:	48 89 d9             	mov    rcx,rbx
  dab85a:	e8 e1 76 f1 ff       	call   cc2f40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  dab85f:	e9 4c ff ff ff       	jmp    dab7b0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x46f0>
  dab864:	48 89 d7             	mov    rdi,rdx
  dab867:	4c 89 fe             	mov    rsi,r15
  dab86a:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  dab86f:	48 89 d9             	mov    rcx,rbx
  dab872:	e8 09 45 f1 ff       	call   cbfd80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  dab877:	e9 34 ff ff ff       	jmp    dab7b0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x46f0>
  dab87c:	48 89 d7             	mov    rdi,rdx
  dab87f:	4c 89 fe             	mov    rsi,r15
  dab882:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  dab887:	48 89 d9             	mov    rcx,rbx
  dab88a:	e8 71 1a f1 ff       	call   cbd300 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  dab88f:	e9 1c ff ff ff       	jmp    dab7b0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x46f0>
  dab894:	48 89 d7             	mov    rdi,rdx
  dab897:	4c 89 fe             	mov    rsi,r15
  dab89a:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  dab89f:	48 89 d9             	mov    rcx,rbx
  dab8a2:	e8 d9 1c f1 ff       	call   cbd580 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  dab8a7:	e9 04 ff ff ff       	jmp    dab7b0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x46f0>
  dab8ac:	48 89 d7             	mov    rdi,rdx
  dab8af:	4c 89 fe             	mov    rsi,r15
  dab8b2:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  dab8b7:	48 89 d9             	mov    rcx,rbx
  dab8ba:	e8 41 31 f1 ff       	call   cbea00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  dab8bf:	e9 ec fe ff ff       	jmp    dab7b0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x46f0>
  dab8c4:	48 89 d7             	mov    rdi,rdx
  dab8c7:	4c 89 fe             	mov    rsi,r15
  dab8ca:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  dab8cf:	48 89 d9             	mov    rcx,rbx
  dab8d2:	e8 e9 17 f1 ff       	call   cbd0c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  dab8d7:	e9 d4 fe ff ff       	jmp    dab7b0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x46f0>
  dab8dc:	48 89 d7             	mov    rdi,rdx
  dab8df:	4c 89 fe             	mov    rsi,r15
  dab8e2:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  dab8e7:	48 89 d9             	mov    rcx,rbx
  dab8ea:	e8 51 24 f1 ff       	call   cbdd40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  dab8ef:	e9 bc fe ff ff       	jmp    dab7b0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x46f0>
  dab8f4:	48 89 d7             	mov    rdi,rdx
  dab8f7:	4c 89 fe             	mov    rsi,r15
  dab8fa:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  dab8ff:	48 89 d9             	mov    rcx,rbx
  dab902:	e8 39 88 f1 ff       	call   cc4140 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  dab907:	e9 a4 fe ff ff       	jmp    dab7b0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x46f0>
  dab90c:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  dab911:	0f 29 84 24 40 01 00 	movaps XMMWORD PTR [rsp+0x140],xmm0
  dab918:	00 
  dab919:	48 89 d7             	mov    rdi,rdx
  dab91c:	4c 89 fe             	mov    rsi,r15
  dab91f:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  dab924:	48 89 d9             	mov    rcx,rbx
  dab927:	4c 8d 8c 24 40 01 00 	lea    r9,[rsp+0x140]
  dab92e:	00 
  dab92f:	e8 cc 2a f1 ff       	call   cbe400 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  dab934:	e9 77 fe ff ff       	jmp    dab7b0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x46f0>
  dab939:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [rsp+0x40]
  dab93e:	0f 29 84 24 40 01 00 	movaps XMMWORD PTR [rsp+0x140],xmm0
  dab945:	00 
  dab946:	48 89 d7             	mov    rdi,rdx
  dab949:	4c 89 fe             	mov    rsi,r15
  dab94c:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  dab951:	48 89 d9             	mov    rcx,rbx
  dab954:	4c 8d 8c 24 40 01 00 	lea    r9,[rsp+0x140]
  dab95b:	00 
  dab95c:	e8 5f 54 f1 ff       	call   cc0dc0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  dab961:	e9 4a fe ff ff       	jmp    dab7b0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x46f0>
  dab966:	48 89 d7             	mov    rdi,rdx
  dab969:	4c 89 fe             	mov    rsi,r15
  dab96c:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  dab971:	48 89 d9             	mov    rcx,rbx
  dab974:	e8 c7 39 f1 ff       	call   cbf340 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  dab979:	e9 32 fe ff ff       	jmp    dab7b0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x46f0>
  dab97e:	66 90                	xchg   ax,ax
  dab980:	48 83 7c 24 30 00    	cmp    QWORD PTR [rsp+0x30],0x0
  dab986:	4c 8b 64 24 38       	mov    r12,QWORD PTR [rsp+0x38]
  dab98b:	4c 8d ac 24 60 01 00 	lea    r13,[rsp+0x160]
  dab992:	00 
  dab993:	48 8b b4 24 a0 00 00 	mov    rsi,QWORD PTR [rsp+0xa0]
  dab99a:	00 
  dab99b:	48 8b 84 24 a8 00 00 	mov    rax,QWORD PTR [rsp+0xa8]
  dab9a2:	00 
  dab9a3:	0f 84 17 f1 ff ff    	je     daaac0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3a00>
  dab9a9:	80 7c 24 70 00       	cmp    BYTE PTR [rsp+0x70],0x0
  dab9ae:	74 50                	je     daba00 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4940>
  dab9b0:	49 83 c7 10          	add    r15,0x10
  dab9b4:	48 8b 44 24 30       	mov    rax,QWORD PTR [rsp+0x30]
  dab9b9:	48 8b 8c 24 f8 00 00 	mov    rcx,QWORD PTR [rsp+0xf8]
  dab9c0:	00 
  dab9c1:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  dab9c8:	0f 1f 84 00 00 00 00 
  dab9cf:	00 
  dab9d0:	41 0f 10 47 f0       	movups xmm0,XMMWORD PTR [r15-0x10]
  dab9d5:	41 0f 10 0f          	movups xmm1,XMMWORD PTR [r15]
  dab9d9:	0f 28 d1             	movaps xmm2,xmm1
  dab9dc:	0f 14 d0             	unpcklps xmm2,xmm0
  dab9df:	0f 15 c8             	unpckhps xmm1,xmm0
  dab9e2:	0f 2b 11             	movntps XMMWORD PTR [rcx],xmm2
  dab9e5:	48 8d 51 10          	lea    rdx,[rcx+0x10]
  dab9e9:	0f 2b 0a             	movntps XMMWORD PTR [rdx],xmm1
  dab9ec:	48 01 f1             	add    rcx,rsi
  dab9ef:	49 83 c7 20          	add    r15,0x20
  dab9f3:	48 ff c8             	dec    rax
  dab9f6:	75 d8                	jne    dab9d0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4910>
  dab9f8:	e9 c3 f0 ff ff       	jmp    daaac0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3a00>
  dab9fd:	0f 1f 00             	nop    DWORD PTR [rax]
  daba00:	48 c1 64 24 58 03    	shl    QWORD PTR [rsp+0x58],0x3
  daba06:	49 83 c7 10          	add    r15,0x10
  daba0a:	4c 8b 74 24 30       	mov    r14,QWORD PTR [rsp+0x30]
  daba0f:	48 8b 9c 24 f8 00 00 	mov    rbx,QWORD PTR [rsp+0xf8]
  daba16:	00 
  daba17:	eb 1e                	jmp    daba37 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4977>
  daba19:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  daba20:	0f 11 0b             	movups XMMWORD PTR [rbx],xmm1
  daba23:	0f 11 43 10          	movups XMMWORD PTR [rbx+0x10],xmm0
  daba27:	48 01 f3             	add    rbx,rsi
  daba2a:	49 83 c7 20          	add    r15,0x20
  daba2e:	49 ff ce             	dec    r14
  daba31:	0f 84 89 f0 ff ff    	je     daaac0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3a00>
  daba37:	41 0f 10 57 f0       	movups xmm2,XMMWORD PTR [r15-0x10]
  daba3c:	41 0f 10 07          	movups xmm0,XMMWORD PTR [r15]
  daba40:	0f 28 c8             	movaps xmm1,xmm0
  daba43:	0f 14 ca             	unpcklps xmm1,xmm2
  daba46:	0f 15 c2             	unpckhps xmm0,xmm2
  daba49:	48 83 f8 03          	cmp    rax,0x3
  daba4d:	77 d1                	ja     daba20 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4960>
  daba4f:	0f 57 d2             	xorps  xmm2,xmm2
  daba52:	41 0f 29 55 50       	movaps XMMWORD PTR [r13+0x50],xmm2
  daba57:	41 0f 29 55 40       	movaps XMMWORD PTR [r13+0x40],xmm2
  daba5c:	41 0f 29 55 30       	movaps XMMWORD PTR [r13+0x30],xmm2
  daba61:	41 0f 29 55 20       	movaps XMMWORD PTR [r13+0x20],xmm2
  daba66:	41 0f 29 55 10       	movaps XMMWORD PTR [r13+0x10],xmm2
  daba6b:	41 0f 29 55 00       	movaps XMMWORD PTR [r13+0x0],xmm2
  daba70:	0f 29 8c 24 40 01 00 	movaps XMMWORD PTR [rsp+0x140],xmm1
  daba77:	00 
  daba78:	0f 29 84 24 50 01 00 	movaps XMMWORD PTR [rsp+0x150],xmm0
  daba7f:	00 
  daba80:	48 89 df             	mov    rdi,rbx
  daba83:	48 8d b4 24 40 01 00 	lea    rsi,[rsp+0x140]
  daba8a:	00 
  daba8b:	48 8b 54 24 58       	mov    rdx,QWORD PTR [rsp+0x58]
  daba90:	ff 15 0a 62 4a 00    	call   QWORD PTR [rip+0x4a620a]        # 1251ca0 <memcpy@GLIBC_2.14>
  daba96:	48 8b 84 24 a8 00 00 	mov    rax,QWORD PTR [rsp+0xa8]
  daba9d:	00 
  daba9e:	48 8b b4 24 a0 00 00 	mov    rsi,QWORD PTR [rsp+0xa0]
  dabaa5:	00 
  dabaa6:	48 01 f3             	add    rbx,rsi
  dabaa9:	49 83 c7 20          	add    r15,0x20
  dabaad:	49 ff ce             	dec    r14
  dabab0:	75 85                	jne    daba37 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4977>
  dabab2:	e9 09 f0 ff ff       	jmp    daaac0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3a00>
  dabab7:	80 7c 24 70 00       	cmp    BYTE PTR [rsp+0x70],0x0
  dababc:	74 03                	je     dabac1 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4a01>
  dababe:	0f ae f8             	sfence
  dabac1:	48 8d 65 d8          	lea    rsp,[rbp-0x28]
  dabac5:	5b                   	pop    rbx
  dabac6:	41 5c                	pop    r12
  dabac8:	41 5d                	pop    r13
  dabaca:	41 5e                	pop    r14
  dabacc:	41 5f                	pop    r15
  dabace:	5d                   	pop    rbp
  dabacf:	c3                   	ret
  dabad0:	89 d8                	mov    eax,ebx
  dabad2:	31 d2                	xor    edx,edx
  dabad4:	41 f7 f1             	div    r9d
  dabad7:	48 8b b4 24 18 01 00 	mov    rsi,QWORD PTR [rsp+0x118]
  dabade:	00 
  dabadf:	48 8d 0c f1          	lea    rcx,[rcx+rsi*8]
  dabae3:	48 89 8c 24 c8 00 00 	mov    QWORD PTR [rsp+0xc8],rcx
  dabaea:	00 
  dabaeb:	0f 28 84 24 b0 00 00 	movaps xmm0,XMMWORD PTR [rsp+0xb0]
  dabaf2:	00 
  dabaf3:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  dabaf7:	0f 29 84 24 b0 00 00 	movaps XMMWORD PTR [rsp+0xb0],xmm0
  dabafe:	00 
  dabaff:	31 c9                	xor    ecx,ecx
  dabb01:	48 85 d2             	test   rdx,rdx
  dabb04:	0f 95 c1             	setne  cl
  dabb07:	48 01 c1             	add    rcx,rax
  dabb0a:	48 89 8c 24 28 01 00 	mov    QWORD PTR [rsp+0x128],rcx
  dabb11:	00 
  dabb12:	4c 89 44 24 40       	mov    QWORD PTR [rsp+0x40],r8
  dabb17:	48 8b 94 24 a0 00 00 	mov    rdx,QWORD PTR [rsp+0xa0]
  dabb1e:	00 
  dabb1f:	48 89 5c 24 60       	mov    QWORD PTR [rsp+0x60],rbx
  dabb24:	4c 89 b4 24 30 02 00 	mov    QWORD PTR [rsp+0x230],r14
  dabb2b:	00 
  dabb2c:	4c 89 8c 24 08 01 00 	mov    QWORD PTR [rsp+0x108],r9
  dabb33:	00 
  dabb34:	0f 84 64 07 00 00    	je     dac29e <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x51de>
  dabb3a:	48 89 d1             	mov    rcx,rdx
  dabb3d:	48 c1 e9 02          	shr    rcx,0x2
  dabb41:	89 d0                	mov    eax,edx
  dabb43:	83 e0 03             	and    eax,0x3
  dabb46:	48 83 f8 01          	cmp    rax,0x1
  dabb4a:	48 83 d9 ff          	sbb    rcx,0xffffffffffffffff
  dabb4e:	48 89 8c 24 e8 00 00 	mov    QWORD PTR [rsp+0xe8],rcx
  dabb55:	00 
  dabb56:	4d 85 ed             	test   r13,r13
  dabb59:	0f 84 18 1d 00 00    	je     dad877 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x67b7>
  dabb5f:	48 8b 84 24 d0 01 00 	mov    rax,QWORD PTR [rsp+0x1d0]
  dabb66:	00 
  dabb67:	48 8b 48 70          	mov    rcx,QWORD PTR [rax+0x70]
  dabb6b:	48 8b 80 90 00 00 00 	mov    rax,QWORD PTR [rax+0x90]
  dabb72:	48 89 84 24 00 01 00 	mov    QWORD PTR [rsp+0x100],rax
  dabb79:	00 
  dabb7a:	48 01 c0             	add    rax,rax
  dabb7d:	48 89 84 24 20 02 00 	mov    QWORD PTR [rsp+0x220],rax
  dabb84:	00 
  dabb85:	f3 48 0f bc c1       	tzcnt  rax,rcx
  dabb8a:	48 89 44 24 68       	mov    QWORD PTR [rsp+0x68],rax
  dabb8f:	48 b8 ff ff ff ff ff 	movabs rax,0x7ffffffffffffff
  dabb96:	ff ff 07 
  dabb99:	48 89 8c 24 30 01 00 	mov    QWORD PTR [rsp+0x130],rcx
  dabba0:	00 
  dabba1:	48 01 c8             	add    rax,rcx
  dabba4:	48 89 84 24 a8 00 00 	mov    QWORD PTR [rsp+0xa8],rax
  dabbab:	00 
  dabbac:	48 8b 44 24 30       	mov    rax,QWORD PTR [rsp+0x30]
  dabbb1:	48 83 c0 20          	add    rax,0x20
  dabbb5:	48 89 84 24 90 00 00 	mov    QWORD PTR [rsp+0x90],rax
  dabbbc:	00 
  dabbbd:	49 8d 45 ff          	lea    rax,[r13-0x1]
  dabbc1:	48 89 84 24 d8 00 00 	mov    QWORD PTR [rsp+0xd8],rax
  dabbc8:	00 
  dabbc9:	4c 89 c0             	mov    rax,r8
  dabbcc:	48 c1 e0 07          	shl    rax,0x7
  dabbd0:	48 89 84 24 e0 00 00 	mov    QWORD PTR [rsp+0xe0],rax
  dabbd7:	00 
  dabbd8:	48 89 d8             	mov    rax,rbx
  dabbdb:	48 c1 e0 05          	shl    rax,0x5
  dabbdf:	48 89 44 24 58       	mov    QWORD PTR [rsp+0x58],rax
  dabbe4:	31 c9                	xor    ecx,ecx
  dabbe6:	48 8b 84 24 d0 00 00 	mov    rax,QWORD PTR [rsp+0xd0]
  dabbed:	00 
  dabbee:	48 89 84 24 80 00 00 	mov    QWORD PTR [rsp+0x80],rax
  dabbf5:	00 
  dabbf6:	4c 89 ac 24 10 02 00 	mov    QWORD PTR [rsp+0x210],r13
  dabbfd:	00 
  dabbfe:	eb 4c                	jmp    dabc4c <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4b8c>
  dabc00:	48 8b 84 24 80 00 00 	mov    rax,QWORD PTR [rsp+0x80]
  dabc07:	00 
  dabc08:	48 03 84 24 e0 00 00 	add    rax,QWORD PTR [rsp+0xe0]
  dabc0f:	00 
  dabc10:	48 89 84 24 80 00 00 	mov    QWORD PTR [rsp+0x80],rax
  dabc17:	00 
  dabc18:	48 8b 8c 24 d8 01 00 	mov    rcx,QWORD PTR [rsp+0x1d8]
  dabc1f:	00 
  dabc20:	48 83 bc 24 28 01 00 	cmp    QWORD PTR [rsp+0x128],0x0
  dabc27:	00 00 
  dabc29:	48 8b 94 24 a0 00 00 	mov    rdx,QWORD PTR [rsp+0xa0]
  dabc30:	00 
  dabc31:	48 8b 5c 24 60       	mov    rbx,QWORD PTR [rsp+0x60]
  dabc36:	4c 8b b4 24 30 02 00 	mov    r14,QWORD PTR [rsp+0x230]
  dabc3d:	00 
  dabc3e:	4c 8b 8c 24 08 01 00 	mov    r9,QWORD PTR [rsp+0x108]
  dabc45:	00 
  dabc46:	0f 84 52 06 00 00    	je     dac29e <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x51de>
  dabc4c:	48 8b 44 24 30       	mov    rax,QWORD PTR [rsp+0x30]
  dabc51:	48 8b 00             	mov    rax,QWORD PTR [rax]
  dabc54:	48 83 f8 02          	cmp    rax,0x2
  dabc58:	0f 84 92 00 00 00    	je     dabcf0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4c30>
  dabc5e:	48 83 f8 04          	cmp    rax,0x4
  dabc62:	74 4c                	je     dabcb0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4bf0>
  dabc64:	48 83 f8 08          	cmp    rax,0x8
  dabc68:	0f 85 99 1b 00 00    	jne    dad807 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x6747>
  dabc6e:	4d 89 cf             	mov    r15,r9
  dabc71:	48 8b 84 24 10 01 00 	mov    rax,QWORD PTR [rsp+0x110]
  dabc78:	00 
  dabc79:	48 8d 3c c8          	lea    rdi,[rax+rcx*8]
  dabc7d:	48 8b b4 24 c8 00 00 	mov    rsi,QWORD PTR [rsp+0xc8]
  dabc84:	00 
  dabc85:	49 89 ce             	mov    r14,rcx
  dabc88:	48 89 d9             	mov    rcx,rbx
  dabc8b:	4c 8b 8c 24 00 01 00 	mov    r9,QWORD PTR [rsp+0x100]
  dabc92:	00 
  dabc93:	0f 28 84 24 b0 00 00 	movaps xmm0,XMMWORD PTR [rsp+0xb0]
  dabc9a:	00 
  dabc9b:	e8 a0 6a fd ff       	call   d82740 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first_group>
  dabca0:	e9 7d 00 00 00       	jmp    dabd22 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4c62>
  dabca5:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  dabcac:	00 00 00 00 
  dabcb0:	4d 89 cf             	mov    r15,r9
  dabcb3:	48 8b 84 24 10 01 00 	mov    rax,QWORD PTR [rsp+0x110]
  dabcba:	00 
  dabcbb:	48 8d 3c c8          	lea    rdi,[rax+rcx*8]
  dabcbf:	48 8b b4 24 c8 00 00 	mov    rsi,QWORD PTR [rsp+0xc8]
  dabcc6:	00 
  dabcc7:	49 89 ce             	mov    r14,rcx
  dabcca:	48 89 d9             	mov    rcx,rbx
  dabccd:	4c 8b 8c 24 00 01 00 	mov    r9,QWORD PTR [rsp+0x100]
  dabcd4:	00 
  dabcd5:	0f 28 84 24 b0 00 00 	movaps xmm0,XMMWORD PTR [rsp+0xb0]
  dabcdc:	00 
  dabcdd:	e8 9e 6e fd ff       	call   d82b80 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first_group>
  dabce2:	eb 3e                	jmp    dabd22 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4c62>
  dabce4:	66 66 66 2e 0f 1f 84 	data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  dabceb:	00 00 00 00 00 
  dabcf0:	4d 89 cf             	mov    r15,r9
  dabcf3:	48 8b 84 24 10 01 00 	mov    rax,QWORD PTR [rsp+0x110]
  dabcfa:	00 
  dabcfb:	48 8d 3c c8          	lea    rdi,[rax+rcx*8]
  dabcff:	48 8b b4 24 c8 00 00 	mov    rsi,QWORD PTR [rsp+0xc8]
  dabd06:	00 
  dabd07:	49 89 ce             	mov    r14,rcx
  dabd0a:	48 89 d9             	mov    rcx,rbx
  dabd0d:	4c 8b 8c 24 00 01 00 	mov    r9,QWORD PTR [rsp+0x100]
  dabd14:	00 
  dabd15:	0f 28 84 24 b0 00 00 	movaps xmm0,XMMWORD PTR [rsp+0xb0]
  dabd1c:	00 
  dabd1d:	e8 1e 70 fd ff       	call   d82d40 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first_group>
  dabd22:	4b 8d 04 3e          	lea    rax,[r14+r15*1]
  dabd26:	48 89 84 24 d8 01 00 	mov    QWORD PTR [rsp+0x1d8],rax
  dabd2d:	00 
  dabd2e:	48 ff 8c 24 28 01 00 	dec    QWORD PTR [rsp+0x128]
  dabd35:	00 
  dabd36:	4d 01 f6             	add    r14,r14
  dabd39:	4c 89 b4 24 00 02 00 	mov    QWORD PTR [rsp+0x200],r14
  dabd40:	00 
  dabd41:	48 8b 84 24 80 00 00 	mov    rax,QWORD PTR [rsp+0x80]
  dabd48:	00 
  dabd49:	48 89 84 24 98 00 00 	mov    QWORD PTR [rsp+0x98],rax
  dabd50:	00 
  dabd51:	31 c0                	xor    eax,eax
  dabd53:	eb 2a                	jmp    dabd7f <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4cbf>
  dabd55:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  dabd5c:	00 00 00 00 
  dabd60:	48 8b 44 24 70       	mov    rax,QWORD PTR [rsp+0x70]
  dabd65:	48 ff c0             	inc    rax
  dabd68:	48 83 ac 24 98 00 00 	sub    QWORD PTR [rsp+0x98],0xffffffffffffff80
  dabd6f:	00 80 
  dabd71:	4c 8b 44 24 40       	mov    r8,QWORD PTR [rsp+0x40]
  dabd76:	4c 39 c0             	cmp    rax,r8
  dabd79:	0f 84 81 fe ff ff    	je     dabc00 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4b40>
  dabd7f:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
  dabd84:	48 0f af 84 24 20 02 	imul   rax,QWORD PTR [rsp+0x220]
  dabd8b:	00 00 
  dabd8d:	48 8b 8c 24 c8 00 00 	mov    rcx,QWORD PTR [rsp+0xc8]
  dabd94:	00 
  dabd95:	48 8d 0c 81          	lea    rcx,[rcx+rax*4]
  dabd99:	49 83 fd 02          	cmp    r13,0x2
  dabd9d:	0f 82 0d 02 00 00    	jb     dabfb0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4ef0>
  dabda3:	48 8b 44 24 30       	mov    rax,QWORD PTR [rsp+0x30]
  dabda8:	4c 8b 30             	mov    r14,QWORD PTR [rax]
  dabdab:	4c 8b a4 24 d8 00 00 	mov    r12,QWORD PTR [rsp+0xd8]
  dabdb2:	00 
  dabdb3:	48 8b 9c 24 90 00 00 	mov    rbx,QWORD PTR [rsp+0x90]
  dabdba:	00 
  dabdbb:	49 89 cf             	mov    r15,rcx
  dabdbe:	48 8b 84 24 50 02 00 	mov    rax,QWORD PTR [rsp+0x250]
  dabdc5:	00 
  dabdc6:	48 8b 94 24 a0 00 00 	mov    rdx,QWORD PTR [rsp+0xa0]
  dabdcd:	00 
  dabdce:	48 89 8c 24 f0 00 00 	mov    QWORD PTR [rsp+0xf0],rcx
  dabdd5:	00 
  dabdd6:	eb 4e                	jmp    dabe26 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4d66>
  dabdd8:	0f 28 84 24 b0 00 00 	movaps xmm0,XMMWORD PTR [rsp+0xb0]
  dabddf:	00 
  dabde0:	0f 29 84 24 40 01 00 	movaps XMMWORD PTR [rsp+0x140],xmm0
  dabde7:	00 
  dabde8:	48 89 f7             	mov    rdi,rsi
  dabdeb:	4c 89 fe             	mov    rsi,r15
  dabdee:	4c 89 f1             	mov    rcx,r14
  dabdf1:	4c 8d 8c 24 40 01 00 	lea    r9,[rsp+0x140]
  dabdf8:	00 
  dabdf9:	e8 c2 95 f1 ff       	call   cc53c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  dabdfe:	66 90                	xchg   ax,ax
  dabe00:	4d 0f af f5          	imul   r14,r13
  dabe04:	48 83 c3 18          	add    rbx,0x18
  dabe08:	49 ff cc             	dec    r12
  dabe0b:	48 8b 94 24 a0 00 00 	mov    rdx,QWORD PTR [rsp+0xa0]
  dabe12:	00 
  dabe13:	48 8b 8c 24 f0 00 00 	mov    rcx,QWORD PTR [rsp+0xf0]
  dabe1a:	00 
  dabe1b:	48 8b 44 24 78       	mov    rax,QWORD PTR [rsp+0x78]
  dabe20:	0f 84 95 01 00 00    	je     dabfbb <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4efb>
  dabe26:	4c 89 fe             	mov    rsi,r15
  dabe29:	4c 8b 6b f8          	mov    r13,QWORD PTR [rbx-0x8]
  dabe2d:	49 83 fc 01          	cmp    r12,0x1
  dabe31:	49 89 c7             	mov    r15,rax
  dabe34:	4c 0f 44 f9          	cmove  r15,rcx
  dabe38:	4c 8b 03             	mov    r8,QWORD PTR [rbx]
  dabe3b:	4c 03 44 24 30       	add    r8,QWORD PTR [rsp+0x30]
  dabe40:	4c 89 ac 24 88 00 00 	mov    QWORD PTR [rsp+0x88],r13
  dabe47:	00 
  dabe48:	49 8d 45 fe          	lea    rax,[r13-0x2]
  dabe4c:	48 83 f8 0e          	cmp    rax,0xe
  dabe50:	0f 87 5f 19 00 00    	ja     dad7b5 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x66f5>
  dabe56:	48 8d 0d c7 75 2f ff 	lea    rcx,[rip+0xffffffffff2f75c7]        # a3424 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x308d4>
  dabe5d:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  dabe61:	48 01 c8             	add    rax,rcx
  dabe64:	48 89 74 24 78       	mov    QWORD PTR [rsp+0x78],rsi
  dabe69:	ff e0                	jmp    rax
  dabe6b:	48 89 f7             	mov    rdi,rsi
  dabe6e:	4c 89 fe             	mov    rsi,r15
  dabe71:	4c 89 f1             	mov    rcx,r14
  dabe74:	e8 07 11 f1 ff       	call   cbcf80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  dabe79:	eb 85                	jmp    dabe00 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4d40>
  dabe7b:	48 89 f7             	mov    rdi,rsi
  dabe7e:	4c 89 fe             	mov    rsi,r15
  dabe81:	4c 89 f1             	mov    rcx,r14
  dabe84:	e8 77 5b f1 ff       	call   cc1a00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  dabe89:	e9 72 ff ff ff       	jmp    dabe00 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4d40>
  dabe8e:	48 89 f7             	mov    rdi,rsi
  dabe91:	4c 89 fe             	mov    rsi,r15
  dabe94:	4c 89 f1             	mov    rcx,r14
  dabe97:	e8 64 1a f1 ff       	call   cbd900 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  dabe9c:	e9 5f ff ff ff       	jmp    dabe00 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4d40>
  dabea1:	48 89 f7             	mov    rdi,rsi
  dabea4:	4c 89 fe             	mov    rsi,r15
  dabea7:	4c 89 f1             	mov    rcx,r14
  dabeaa:	e8 91 70 f1 ff       	call   cc2f40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  dabeaf:	e9 4c ff ff ff       	jmp    dabe00 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4d40>
  dabeb4:	48 89 f7             	mov    rdi,rsi
  dabeb7:	4c 89 fe             	mov    rsi,r15
  dabeba:	4c 89 f1             	mov    rcx,r14
  dabebd:	e8 be 3e f1 ff       	call   cbfd80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  dabec2:	e9 39 ff ff ff       	jmp    dabe00 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4d40>
  dabec7:	48 89 f7             	mov    rdi,rsi
  dabeca:	4c 89 fe             	mov    rsi,r15
  dabecd:	4c 89 f1             	mov    rcx,r14
  dabed0:	e8 2b 14 f1 ff       	call   cbd300 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  dabed5:	e9 26 ff ff ff       	jmp    dabe00 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4d40>
  dabeda:	48 89 f7             	mov    rdi,rsi
  dabedd:	4c 89 fe             	mov    rsi,r15
  dabee0:	4c 89 f1             	mov    rcx,r14
  dabee3:	e8 98 16 f1 ff       	call   cbd580 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  dabee8:	e9 13 ff ff ff       	jmp    dabe00 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4d40>
  dabeed:	48 89 f7             	mov    rdi,rsi
  dabef0:	4c 89 fe             	mov    rsi,r15
  dabef3:	4c 89 f1             	mov    rcx,r14
  dabef6:	e8 05 2b f1 ff       	call   cbea00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  dabefb:	e9 00 ff ff ff       	jmp    dabe00 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4d40>
  dabf00:	48 89 f7             	mov    rdi,rsi
  dabf03:	4c 89 fe             	mov    rsi,r15
  dabf06:	4c 89 f1             	mov    rcx,r14
  dabf09:	e8 b2 11 f1 ff       	call   cbd0c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  dabf0e:	e9 ed fe ff ff       	jmp    dabe00 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4d40>
  dabf13:	48 89 f7             	mov    rdi,rsi
  dabf16:	4c 89 fe             	mov    rsi,r15
  dabf19:	4c 89 f1             	mov    rcx,r14
  dabf1c:	e8 1f 1e f1 ff       	call   cbdd40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  dabf21:	e9 da fe ff ff       	jmp    dabe00 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4d40>
  dabf26:	48 89 f7             	mov    rdi,rsi
  dabf29:	4c 89 fe             	mov    rsi,r15
  dabf2c:	4c 89 f1             	mov    rcx,r14
  dabf2f:	e8 0c 82 f1 ff       	call   cc4140 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  dabf34:	e9 c7 fe ff ff       	jmp    dabe00 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4d40>
  dabf39:	0f 28 84 24 b0 00 00 	movaps xmm0,XMMWORD PTR [rsp+0xb0]
  dabf40:	00 
  dabf41:	0f 29 84 24 40 01 00 	movaps XMMWORD PTR [rsp+0x140],xmm0
  dabf48:	00 
  dabf49:	48 89 f7             	mov    rdi,rsi
  dabf4c:	4c 89 fe             	mov    rsi,r15
  dabf4f:	4c 89 f1             	mov    rcx,r14
  dabf52:	4c 8d 8c 24 40 01 00 	lea    r9,[rsp+0x140]
  dabf59:	00 
  dabf5a:	e8 a1 24 f1 ff       	call   cbe400 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  dabf5f:	e9 9c fe ff ff       	jmp    dabe00 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4d40>
  dabf64:	0f 28 84 24 b0 00 00 	movaps xmm0,XMMWORD PTR [rsp+0xb0]
  dabf6b:	00 
  dabf6c:	0f 29 84 24 40 01 00 	movaps XMMWORD PTR [rsp+0x140],xmm0
  dabf73:	00 
  dabf74:	48 89 f7             	mov    rdi,rsi
  dabf77:	4c 89 fe             	mov    rsi,r15
  dabf7a:	4c 89 f1             	mov    rcx,r14
  dabf7d:	4c 8d 8c 24 40 01 00 	lea    r9,[rsp+0x140]
  dabf84:	00 
  dabf85:	e8 36 4e f1 ff       	call   cc0dc0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  dabf8a:	e9 71 fe ff ff       	jmp    dabe00 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4d40>
  dabf8f:	48 89 f7             	mov    rdi,rsi
  dabf92:	4c 89 fe             	mov    rsi,r15
  dabf95:	4c 89 f1             	mov    rcx,r14
  dabf98:	e8 a3 33 f1 ff       	call   cbf340 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  dabf9d:	e9 5e fe ff ff       	jmp    dabe00 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4d40>
  dabfa2:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  dabfa9:	1f 84 00 00 00 00 00 
  dabfb0:	49 89 cf             	mov    r15,rcx
  dabfb3:	48 8b 94 24 a0 00 00 	mov    rdx,QWORD PTR [rsp+0xa0]
  dabfba:	00 
  dabfbb:	48 8b b4 24 30 01 00 	mov    rsi,QWORD PTR [rsp+0x130]
  dabfc2:	00 
  dabfc3:	48 85 f6             	test   rsi,rsi
  dabfc6:	0f 84 83 18 00 00    	je     dad84f <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x678f>
  dabfcc:	48 89 d0             	mov    rax,rdx
  dabfcf:	48 09 f0             	or     rax,rsi
  dabfd2:	48 89 d1             	mov    rcx,rdx
  dabfd5:	48 c1 e8 20          	shr    rax,0x20
  dabfd9:	74 25                	je     dac000 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4f40>
  dabfdb:	48 89 d0             	mov    rax,rdx
  dabfde:	31 d2                	xor    edx,edx
  dabfe0:	48 f7 f6             	div    rsi
  dabfe3:	4c 8b ac 24 10 02 00 	mov    r13,QWORD PTR [rsp+0x210]
  dabfea:	00 
  dabfeb:	48 85 c9             	test   rcx,rcx
  dabfee:	75 27                	jne    dac017 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4f57>
  dabff0:	e9 6b fd ff ff       	jmp    dabd60 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4ca0>
  dabff5:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  dabffc:	00 00 00 00 
  dac000:	89 d0                	mov    eax,edx
  dac002:	31 d2                	xor    edx,edx
  dac004:	f7 f6                	div    esi
  dac006:	4c 8b ac 24 10 02 00 	mov    r13,QWORD PTR [rsp+0x210]
  dac00d:	00 
  dac00e:	48 85 c9             	test   rcx,rcx
  dac011:	0f 84 49 fd ff ff    	je     dabd60 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4ca0>
  dac017:	48 8b 8c 24 00 02 00 	mov    rcx,QWORD PTR [rsp+0x200]
  dac01e:	00 
  dac01f:	48 8b 54 24 70       	mov    rdx,QWORD PTR [rsp+0x70]
  dac024:	48 8d 0c d1          	lea    rcx,[rcx+rdx*8]
  dac028:	48 0f af c1          	imul   rax,rcx
  dac02c:	48 0f af 8c 24 30 01 	imul   rcx,QWORD PTR [rsp+0x130]
  dac033:	00 00 
  dac035:	48 8b 94 24 f0 01 00 	mov    rdx,QWORD PTR [rsp+0x1f0]
  dac03c:	00 
  dac03d:	48 8d 04 82          	lea    rax,[rdx+rax*4]
  dac041:	48 8b 94 24 e0 01 00 	mov    rdx,QWORD PTR [rsp+0x1e0]
  dac048:	00 
  dac049:	48 8d 14 8a          	lea    rdx,[rdx+rcx*4]
  dac04d:	49 83 c7 70          	add    r15,0x70
  dac051:	48 8b b4 24 98 00 00 	mov    rsi,QWORD PTR [rsp+0x98]
  dac058:	00 
  dac059:	48 8b bc 24 e8 00 00 	mov    rdi,QWORD PTR [rsp+0xe8]
  dac060:	00 
  dac061:	45 31 c0             	xor    r8d,r8d
  dac064:	eb 44                	jmp    dac0aa <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4fea>
  dac066:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  dac06d:	00 00 00 
  dac070:	44 0f 11 06          	movups XMMWORD PTR [rsi],xmm8
  dac074:	44 0f 11 4e 10       	movups XMMWORD PTR [rsi+0x10],xmm9
  dac079:	0f 11 76 20          	movups XMMWORD PTR [rsi+0x20],xmm6
  dac07d:	0f 11 66 30          	movups XMMWORD PTR [rsi+0x30],xmm4
  dac081:	0f 11 7e 40          	movups XMMWORD PTR [rsi+0x40],xmm7
  dac085:	0f 11 46 50          	movups XMMWORD PTR [rsi+0x50],xmm0
  dac089:	0f 11 6e 60          	movups XMMWORD PTR [rsi+0x60],xmm5
  dac08d:	0f 11 5e 70          	movups XMMWORD PTR [rsi+0x70],xmm3
  dac091:	48 ff cf             	dec    rdi
  dac094:	48 03 74 24 58       	add    rsi,QWORD PTR [rsp+0x58]
  dac099:	49 83 ef 80          	sub    r15,0xffffffffffffff80
  dac09d:	49 83 c0 04          	add    r8,0x4
  dac0a1:	48 85 ff             	test   rdi,rdi
  dac0a4:	0f 84 b6 fc ff ff    	je     dabd60 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4ca0>
  dac0aa:	4d 89 c1             	mov    r9,r8
  dac0ad:	48 8b 4c 24 68       	mov    rcx,QWORD PTR [rsp+0x68]
  dac0b2:	49 d3 e9             	shr    r9,cl
  dac0b5:	49 c1 e1 05          	shl    r9,0x5
  dac0b9:	42 0f 10 04 08       	movups xmm0,XMMWORD PTR [rax+r9*1]
  dac0be:	42 0f 10 74 08 10    	movups xmm6,XMMWORD PTR [rax+r9*1+0x10]
  dac0c4:	4c 89 c1             	mov    rcx,r8
  dac0c7:	48 23 8c 24 a8 00 00 	and    rcx,QWORD PTR [rsp+0xa8]
  dac0ce:	00 
  dac0cf:	48 c1 e1 05          	shl    rcx,0x5
  dac0d3:	0f 10 24 0a          	movups xmm4,XMMWORD PTR [rdx+rcx*1]
  dac0d7:	0f 10 4c 0a 10       	movups xmm1,XMMWORD PTR [rdx+rcx*1+0x10]
  dac0dc:	0f 10 5c 0a 20       	movups xmm3,XMMWORD PTR [rdx+rcx*1+0x20]
  dac0e1:	0f 10 54 0a 30       	movups xmm2,XMMWORD PTR [rdx+rcx*1+0x30]
  dac0e6:	0f 28 ee             	movaps xmm5,xmm6
  dac0e9:	0f 59 e9             	mulps  xmm5,xmm1
  dac0ec:	0f 28 f8             	movaps xmm7,xmm0
  dac0ef:	0f 59 fc             	mulps  xmm7,xmm4
  dac0f2:	0f 5c fd             	subps  xmm7,xmm5
  dac0f5:	0f 59 e6             	mulps  xmm4,xmm6
  dac0f8:	0f 59 c8             	mulps  xmm1,xmm0
  dac0fb:	0f 58 cc             	addps  xmm1,xmm4
  dac0fe:	45 0f 10 4f 90       	movups xmm9,XMMWORD PTR [r15-0x70]
  dac103:	45 0f 10 57 a0       	movups xmm10,XMMWORD PTR [r15-0x60]
  dac108:	41 0f 10 6f b0       	movups xmm5,XMMWORD PTR [r15-0x50]
  dac10d:	45 0f 10 47 c0       	movups xmm8,XMMWORD PTR [r15-0x40]
  dac112:	41 0f 28 e1          	movaps xmm4,xmm9
  dac116:	0f 59 e7             	mulps  xmm4,xmm7
  dac119:	41 0f 59 fa          	mulps  xmm7,xmm10
  dac11d:	44 0f 59 d1          	mulps  xmm10,xmm1
  dac121:	41 0f 5c e2          	subps  xmm4,xmm10
  dac125:	41 0f 59 c9          	mulps  xmm1,xmm9
  dac129:	0f 58 cf             	addps  xmm1,xmm7
  dac12c:	0f 28 fe             	movaps xmm7,xmm6
  dac12f:	0f 59 fa             	mulps  xmm7,xmm2
  dac132:	44 0f 28 c8          	movaps xmm9,xmm0
  dac136:	44 0f 59 cb          	mulps  xmm9,xmm3
  dac13a:	44 0f 5c cf          	subps  xmm9,xmm7
  dac13e:	0f 59 de             	mulps  xmm3,xmm6
  dac141:	0f 59 d0             	mulps  xmm2,xmm0
  dac144:	0f 58 d3             	addps  xmm2,xmm3
  dac147:	0f 28 fd             	movaps xmm7,xmm5
  dac14a:	41 0f 59 f9          	mulps  xmm7,xmm9
  dac14e:	45 0f 59 c8          	mulps  xmm9,xmm8
  dac152:	44 0f 59 c2          	mulps  xmm8,xmm2
  dac156:	41 0f 5c f8          	subps  xmm7,xmm8
  dac15a:	0f 59 d5             	mulps  xmm2,xmm5
  dac15d:	41 0f 58 d1          	addps  xmm2,xmm9
  dac161:	45 0f 10 47 d0       	movups xmm8,XMMWORD PTR [r15-0x30]
  dac166:	45 0f 10 4f e0       	movups xmm9,XMMWORD PTR [r15-0x20]
  dac16b:	0f 10 6c 0a 40       	movups xmm5,XMMWORD PTR [rdx+rcx*1+0x40]
  dac170:	0f 10 5c 0a 50       	movups xmm3,XMMWORD PTR [rdx+rcx*1+0x50]
  dac175:	44 0f 28 d6          	movaps xmm10,xmm6
  dac179:	44 0f 59 d3          	mulps  xmm10,xmm3
  dac17d:	44 0f 28 d8          	movaps xmm11,xmm0
  dac181:	44 0f 59 dd          	mulps  xmm11,xmm5
  dac185:	45 0f 5c da          	subps  xmm11,xmm10
  dac189:	0f 59 ee             	mulps  xmm5,xmm6
  dac18c:	0f 59 d8             	mulps  xmm3,xmm0
  dac18f:	0f 58 dd             	addps  xmm3,xmm5
  dac192:	41 0f 28 e8          	movaps xmm5,xmm8
  dac196:	41 0f 59 eb          	mulps  xmm5,xmm11
  dac19a:	45 0f 59 d9          	mulps  xmm11,xmm9
  dac19e:	44 0f 59 cb          	mulps  xmm9,xmm3
  dac1a2:	41 0f 5c e9          	subps  xmm5,xmm9
  dac1a6:	41 0f 59 d8          	mulps  xmm3,xmm8
  dac1aa:	41 0f 58 db          	addps  xmm3,xmm11
  dac1ae:	45 0f 10 47 f0       	movups xmm8,XMMWORD PTR [r15-0x10]
  dac1b3:	45 0f 10 0f          	movups xmm9,XMMWORD PTR [r15]
  dac1b7:	44 0f 10 54 0a 60    	movups xmm10,XMMWORD PTR [rdx+rcx*1+0x60]
  dac1bd:	44 0f 10 5c 0a 70    	movups xmm11,XMMWORD PTR [rdx+rcx*1+0x70]
  dac1c3:	44 0f 28 e6          	movaps xmm12,xmm6
  dac1c7:	45 0f 59 e3          	mulps  xmm12,xmm11
  dac1cb:	44 0f 28 e8          	movaps xmm13,xmm0
  dac1cf:	45 0f 59 ea          	mulps  xmm13,xmm10
  dac1d3:	45 0f 5c ec          	subps  xmm13,xmm12
  dac1d7:	41 0f 59 f2          	mulps  xmm6,xmm10
  dac1db:	41 0f 59 c3          	mulps  xmm0,xmm11
  dac1df:	0f 58 c6             	addps  xmm0,xmm6
  dac1e2:	45 0f 28 d0          	movaps xmm10,xmm8
  dac1e6:	45 0f 59 d5          	mulps  xmm10,xmm13
  dac1ea:	45 0f 59 e9          	mulps  xmm13,xmm9
  dac1ee:	44 0f 59 c8          	mulps  xmm9,xmm0
  dac1f2:	45 0f 5c d1          	subps  xmm10,xmm9
  dac1f6:	41 0f 59 c0          	mulps  xmm0,xmm8
  dac1fa:	41 0f 58 c5          	addps  xmm0,xmm13
  dac1fe:	44 0f 28 cc          	movaps xmm9,xmm4
  dac202:	44 0f 14 cf          	unpcklps xmm9,xmm7
  dac206:	0f 28 f5             	movaps xmm6,xmm5
  dac209:	41 0f 14 f2          	unpcklps xmm6,xmm10
  dac20d:	45 0f 28 c1          	movaps xmm8,xmm9
  dac211:	44 0f 16 c6          	movlhps xmm8,xmm6
  dac215:	41 0f 12 f1          	movhlps xmm6,xmm9
  dac219:	0f 15 e7             	unpckhps xmm4,xmm7
  dac21c:	41 0f 15 ea          	unpckhps xmm5,xmm10
  dac220:	0f 28 fc             	movaps xmm7,xmm4
  dac223:	0f 16 fd             	movlhps xmm7,xmm5
  dac226:	0f 12 ec             	movhlps xmm5,xmm4
  dac229:	44 0f 28 d1          	movaps xmm10,xmm1
  dac22d:	44 0f 14 d2          	unpcklps xmm10,xmm2
  dac231:	0f 28 e3             	movaps xmm4,xmm3
  dac234:	0f 14 e0             	unpcklps xmm4,xmm0
  dac237:	45 0f 28 ca          	movaps xmm9,xmm10
  dac23b:	44 0f 16 cc          	movlhps xmm9,xmm4
  dac23f:	41 0f 12 e2          	movhlps xmm4,xmm10
  dac243:	0f 15 ca             	unpckhps xmm1,xmm2
  dac246:	0f 15 d8             	unpckhps xmm3,xmm0
  dac249:	0f 28 c1             	movaps xmm0,xmm1
  dac24c:	0f 16 c3             	movlhps xmm0,xmm3
  dac24f:	0f 12 d9             	movhlps xmm3,xmm1
  dac252:	80 7c 24 38 00       	cmp    BYTE PTR [rsp+0x38],0x0
  dac257:	0f 84 13 fe ff ff    	je     dac070 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4fb0>
  dac25d:	48 8d 4e 10          	lea    rcx,[rsi+0x10]
  dac261:	4c 8d 4e 20          	lea    r9,[rsi+0x20]
  dac265:	4c 8d 56 30          	lea    r10,[rsi+0x30]
  dac269:	4c 8d 5e 40          	lea    r11,[rsi+0x40]
  dac26d:	48 8d 5e 50          	lea    rbx,[rsi+0x50]
  dac271:	4c 8d 76 60          	lea    r14,[rsi+0x60]
  dac275:	4c 8d 66 70          	lea    r12,[rsi+0x70]
  dac279:	44 0f 2b 06          	movntps XMMWORD PTR [rsi],xmm8
  dac27d:	44 0f 2b 09          	movntps XMMWORD PTR [rcx],xmm9
  dac281:	41 0f 2b 31          	movntps XMMWORD PTR [r9],xmm6
  dac285:	41 0f 2b 22          	movntps XMMWORD PTR [r10],xmm4
  dac289:	41 0f 2b 3b          	movntps XMMWORD PTR [r11],xmm7
  dac28d:	0f 2b 03             	movntps XMMWORD PTR [rbx],xmm0
  dac290:	41 0f 2b 2e          	movntps XMMWORD PTR [r14],xmm5
  dac294:	41 0f 2b 1c 24       	movntps XMMWORD PTR [r12],xmm3
  dac299:	e9 f3 fd ff ff       	jmp    dac091 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4fd1>
  dac29e:	80 7c 24 38 00       	cmp    BYTE PTR [rsp+0x38],0x0
  dac2a3:	74 03                	je     dac2a8 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x51e8>
  dac2a5:	0f ae f8             	sfence
  dac2a8:	48 89 d0             	mov    rax,rdx
  dac2ab:	4c 09 c8             	or     rax,r9
  dac2ae:	48 c1 e8 20          	shr    rax,0x20
  dac2b2:	0f 84 7a 0e 00 00    	je     dad132 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x6072>
  dac2b8:	48 89 d0             	mov    rax,rdx
  dac2bb:	31 d2                	xor    edx,edx
  dac2bd:	49 f7 f1             	div    r9
  dac2c0:	e9 74 0e 00 00       	jmp    dad139 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x6079>
  dac2c5:	89 d8                	mov    eax,ebx
  dac2c7:	31 d2                	xor    edx,edx
  dac2c9:	41 f7 f1             	div    r9d
  dac2cc:	48 8b b4 24 18 01 00 	mov    rsi,QWORD PTR [rsp+0x118]
  dac2d3:	00 
  dac2d4:	48 8d 0c f1          	lea    rcx,[rcx+rsi*8]
  dac2d8:	48 89 8c 24 c8 00 00 	mov    QWORD PTR [rsp+0xc8],rcx
  dac2df:	00 
  dac2e0:	0f 28 84 24 b0 00 00 	movaps xmm0,XMMWORD PTR [rsp+0xb0]
  dac2e7:	00 
  dac2e8:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  dac2ec:	0f 29 84 24 b0 00 00 	movaps XMMWORD PTR [rsp+0xb0],xmm0
  dac2f3:	00 
  dac2f4:	31 c9                	xor    ecx,ecx
  dac2f6:	48 85 d2             	test   rdx,rdx
  dac2f9:	0f 95 c1             	setne  cl
  dac2fc:	48 01 c1             	add    rcx,rax
  dac2ff:	48 89 8c 24 28 01 00 	mov    QWORD PTR [rsp+0x128],rcx
  dac306:	00 
  dac307:	4c 89 44 24 40       	mov    QWORD PTR [rsp+0x40],r8
  dac30c:	48 8b 94 24 a0 00 00 	mov    rdx,QWORD PTR [rsp+0xa0]
  dac313:	00 
  dac314:	48 89 5c 24 60       	mov    QWORD PTR [rsp+0x60],rbx
  dac319:	4c 89 b4 24 30 02 00 	mov    QWORD PTR [rsp+0x230],r14
  dac320:	00 
  dac321:	4c 89 8c 24 08 01 00 	mov    QWORD PTR [rsp+0x108],r9
  dac328:	00 
  dac329:	0f 84 6f 07 00 00    	je     daca9e <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x59de>
  dac32f:	48 89 d1             	mov    rcx,rdx
  dac332:	48 c1 e9 02          	shr    rcx,0x2
  dac336:	89 d0                	mov    eax,edx
  dac338:	83 e0 03             	and    eax,0x3
  dac33b:	48 83 f8 01          	cmp    rax,0x1
  dac33f:	48 83 d9 ff          	sbb    rcx,0xffffffffffffffff
  dac343:	48 89 8c 24 e8 00 00 	mov    QWORD PTR [rsp+0xe8],rcx
  dac34a:	00 
  dac34b:	4d 85 ed             	test   r13,r13
  dac34e:	0f 84 23 15 00 00    	je     dad877 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x67b7>
  dac354:	48 8b 84 24 d0 01 00 	mov    rax,QWORD PTR [rsp+0x1d0]
  dac35b:	00 
  dac35c:	48 8b 48 70          	mov    rcx,QWORD PTR [rax+0x70]
  dac360:	48 8b 80 90 00 00 00 	mov    rax,QWORD PTR [rax+0x90]
  dac367:	48 89 84 24 00 01 00 	mov    QWORD PTR [rsp+0x100],rax
  dac36e:	00 
  dac36f:	48 01 c0             	add    rax,rax
  dac372:	48 89 84 24 20 02 00 	mov    QWORD PTR [rsp+0x220],rax
  dac379:	00 
  dac37a:	f3 48 0f bc c1       	tzcnt  rax,rcx
  dac37f:	48 89 44 24 68       	mov    QWORD PTR [rsp+0x68],rax
  dac384:	48 b8 ff ff ff ff ff 	movabs rax,0x7ffffffffffffff
  dac38b:	ff ff 07 
  dac38e:	48 89 8c 24 30 01 00 	mov    QWORD PTR [rsp+0x130],rcx
  dac395:	00 
  dac396:	48 01 c8             	add    rax,rcx
  dac399:	48 89 84 24 a8 00 00 	mov    QWORD PTR [rsp+0xa8],rax
  dac3a0:	00 
  dac3a1:	48 8b 44 24 30       	mov    rax,QWORD PTR [rsp+0x30]
  dac3a6:	48 83 c0 20          	add    rax,0x20
  dac3aa:	48 89 84 24 90 00 00 	mov    QWORD PTR [rsp+0x90],rax
  dac3b1:	00 
  dac3b2:	49 8d 45 ff          	lea    rax,[r13-0x1]
  dac3b6:	48 89 84 24 d8 00 00 	mov    QWORD PTR [rsp+0xd8],rax
  dac3bd:	00 
  dac3be:	4c 89 c0             	mov    rax,r8
  dac3c1:	48 c1 e0 07          	shl    rax,0x7
  dac3c5:	48 89 84 24 e0 00 00 	mov    QWORD PTR [rsp+0xe0],rax
  dac3cc:	00 
  dac3cd:	48 89 d8             	mov    rax,rbx
  dac3d0:	48 c1 e0 05          	shl    rax,0x5
  dac3d4:	48 89 44 24 58       	mov    QWORD PTR [rsp+0x58],rax
  dac3d9:	31 c9                	xor    ecx,ecx
  dac3db:	48 8b 84 24 d0 00 00 	mov    rax,QWORD PTR [rsp+0xd0]
  dac3e2:	00 
  dac3e3:	48 89 84 24 80 00 00 	mov    QWORD PTR [rsp+0x80],rax
  dac3ea:	00 
  dac3eb:	4c 89 ac 24 10 02 00 	mov    QWORD PTR [rsp+0x210],r13
  dac3f2:	00 
  dac3f3:	eb 57                	jmp    dac44c <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x538c>
  dac3f5:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  dac3fc:	00 00 00 00 
  dac400:	48 8b 84 24 80 00 00 	mov    rax,QWORD PTR [rsp+0x80]
  dac407:	00 
  dac408:	48 03 84 24 e0 00 00 	add    rax,QWORD PTR [rsp+0xe0]
  dac40f:	00 
  dac410:	48 89 84 24 80 00 00 	mov    QWORD PTR [rsp+0x80],rax
  dac417:	00 
  dac418:	48 8b 8c 24 d8 01 00 	mov    rcx,QWORD PTR [rsp+0x1d8]
  dac41f:	00 
  dac420:	48 83 bc 24 28 01 00 	cmp    QWORD PTR [rsp+0x128],0x0
  dac427:	00 00 
  dac429:	48 8b 94 24 a0 00 00 	mov    rdx,QWORD PTR [rsp+0xa0]
  dac430:	00 
  dac431:	48 8b 5c 24 60       	mov    rbx,QWORD PTR [rsp+0x60]
  dac436:	4c 8b b4 24 30 02 00 	mov    r14,QWORD PTR [rsp+0x230]
  dac43d:	00 
  dac43e:	4c 8b 8c 24 08 01 00 	mov    r9,QWORD PTR [rsp+0x108]
  dac445:	00 
  dac446:	0f 84 52 06 00 00    	je     daca9e <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x59de>
  dac44c:	48 8b 44 24 30       	mov    rax,QWORD PTR [rsp+0x30]
  dac451:	48 8b 00             	mov    rax,QWORD PTR [rax]
  dac454:	48 83 f8 02          	cmp    rax,0x2
  dac458:	0f 84 92 00 00 00    	je     dac4f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5430>
  dac45e:	48 83 f8 04          	cmp    rax,0x4
  dac462:	74 4c                	je     dac4b0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x53f0>
  dac464:	48 83 f8 08          	cmp    rax,0x8
  dac468:	0f 85 99 13 00 00    	jne    dad807 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x6747>
  dac46e:	4d 89 cf             	mov    r15,r9
  dac471:	48 8b 84 24 10 01 00 	mov    rax,QWORD PTR [rsp+0x110]
  dac478:	00 
  dac479:	48 8d 3c c8          	lea    rdi,[rax+rcx*8]
  dac47d:	48 8b b4 24 c8 00 00 	mov    rsi,QWORD PTR [rsp+0xc8]
  dac484:	00 
  dac485:	49 89 ce             	mov    r14,rcx
  dac488:	48 89 d9             	mov    rcx,rbx
  dac48b:	4c 8b 8c 24 00 01 00 	mov    r9,QWORD PTR [rsp+0x100]
  dac492:	00 
  dac493:	0f 28 84 24 b0 00 00 	movaps xmm0,XMMWORD PTR [rsp+0xb0]
  dac49a:	00 
  dac49b:	e8 a0 69 fd ff       	call   d82e40 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first_group>
  dac4a0:	e9 7d 00 00 00       	jmp    dac522 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5462>
  dac4a5:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  dac4ac:	00 00 00 00 
  dac4b0:	4d 89 cf             	mov    r15,r9
  dac4b3:	48 8b 84 24 10 01 00 	mov    rax,QWORD PTR [rsp+0x110]
  dac4ba:	00 
  dac4bb:	48 8d 3c c8          	lea    rdi,[rax+rcx*8]
  dac4bf:	48 8b b4 24 c8 00 00 	mov    rsi,QWORD PTR [rsp+0xc8]
  dac4c6:	00 
  dac4c7:	49 89 ce             	mov    r14,rcx
  dac4ca:	48 89 d9             	mov    rcx,rbx
  dac4cd:	4c 8b 8c 24 00 01 00 	mov    r9,QWORD PTR [rsp+0x100]
  dac4d4:	00 
  dac4d5:	0f 28 84 24 b0 00 00 	movaps xmm0,XMMWORD PTR [rsp+0xb0]
  dac4dc:	00 
  dac4dd:	e8 9e 6d fd ff       	call   d83280 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first_group>
  dac4e2:	eb 3e                	jmp    dac522 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5462>
  dac4e4:	66 66 66 2e 0f 1f 84 	data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  dac4eb:	00 00 00 00 00 
  dac4f0:	4d 89 cf             	mov    r15,r9
  dac4f3:	48 8b 84 24 10 01 00 	mov    rax,QWORD PTR [rsp+0x110]
  dac4fa:	00 
  dac4fb:	48 8d 3c c8          	lea    rdi,[rax+rcx*8]
  dac4ff:	48 8b b4 24 c8 00 00 	mov    rsi,QWORD PTR [rsp+0xc8]
  dac506:	00 
  dac507:	49 89 ce             	mov    r14,rcx
  dac50a:	48 89 d9             	mov    rcx,rbx
  dac50d:	4c 8b 8c 24 00 01 00 	mov    r9,QWORD PTR [rsp+0x100]
  dac514:	00 
  dac515:	0f 28 84 24 b0 00 00 	movaps xmm0,XMMWORD PTR [rsp+0xb0]
  dac51c:	00 
  dac51d:	e8 1e 61 fd ff       	call   d82640 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first_group>
  dac522:	4b 8d 04 3e          	lea    rax,[r14+r15*1]
  dac526:	48 89 84 24 d8 01 00 	mov    QWORD PTR [rsp+0x1d8],rax
  dac52d:	00 
  dac52e:	48 ff 8c 24 28 01 00 	dec    QWORD PTR [rsp+0x128]
  dac535:	00 
  dac536:	4d 01 f6             	add    r14,r14
  dac539:	4c 89 b4 24 00 02 00 	mov    QWORD PTR [rsp+0x200],r14
  dac540:	00 
  dac541:	48 8b 84 24 80 00 00 	mov    rax,QWORD PTR [rsp+0x80]
  dac548:	00 
  dac549:	48 89 84 24 98 00 00 	mov    QWORD PTR [rsp+0x98],rax
  dac550:	00 
  dac551:	31 c0                	xor    eax,eax
  dac553:	eb 2a                	jmp    dac57f <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x54bf>
  dac555:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  dac55c:	00 00 00 00 
  dac560:	48 8b 44 24 70       	mov    rax,QWORD PTR [rsp+0x70]
  dac565:	48 ff c0             	inc    rax
  dac568:	48 83 ac 24 98 00 00 	sub    QWORD PTR [rsp+0x98],0xffffffffffffff80
  dac56f:	00 80 
  dac571:	4c 8b 44 24 40       	mov    r8,QWORD PTR [rsp+0x40]
  dac576:	4c 39 c0             	cmp    rax,r8
  dac579:	0f 84 81 fe ff ff    	je     dac400 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5340>
  dac57f:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
  dac584:	48 0f af 84 24 20 02 	imul   rax,QWORD PTR [rsp+0x220]
  dac58b:	00 00 
  dac58d:	48 8b 8c 24 c8 00 00 	mov    rcx,QWORD PTR [rsp+0xc8]
  dac594:	00 
  dac595:	48 8d 0c 81          	lea    rcx,[rcx+rax*4]
  dac599:	49 83 fd 02          	cmp    r13,0x2
  dac59d:	0f 82 0d 02 00 00    	jb     dac7b0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x56f0>
  dac5a3:	48 8b 44 24 30       	mov    rax,QWORD PTR [rsp+0x30]
  dac5a8:	4c 8b 30             	mov    r14,QWORD PTR [rax]
  dac5ab:	4c 8b a4 24 d8 00 00 	mov    r12,QWORD PTR [rsp+0xd8]
  dac5b2:	00 
  dac5b3:	48 8b 9c 24 90 00 00 	mov    rbx,QWORD PTR [rsp+0x90]
  dac5ba:	00 
  dac5bb:	49 89 cf             	mov    r15,rcx
  dac5be:	48 8b 84 24 50 02 00 	mov    rax,QWORD PTR [rsp+0x250]
  dac5c5:	00 
  dac5c6:	48 8b 94 24 a0 00 00 	mov    rdx,QWORD PTR [rsp+0xa0]
  dac5cd:	00 
  dac5ce:	48 89 8c 24 f0 00 00 	mov    QWORD PTR [rsp+0xf0],rcx
  dac5d5:	00 
  dac5d6:	eb 4e                	jmp    dac626 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5566>
  dac5d8:	0f 28 84 24 b0 00 00 	movaps xmm0,XMMWORD PTR [rsp+0xb0]
  dac5df:	00 
  dac5e0:	0f 29 84 24 40 01 00 	movaps XMMWORD PTR [rsp+0x140],xmm0
  dac5e7:	00 
  dac5e8:	48 89 f7             	mov    rdi,rsi
  dac5eb:	4c 89 fe             	mov    rsi,r15
  dac5ee:	4c 89 f1             	mov    rcx,r14
  dac5f1:	4c 8d 8c 24 40 01 00 	lea    r9,[rsp+0x140]
  dac5f8:	00 
  dac5f9:	e8 c2 8d f1 ff       	call   cc53c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  dac5fe:	66 90                	xchg   ax,ax
  dac600:	4d 0f af f5          	imul   r14,r13
  dac604:	48 83 c3 18          	add    rbx,0x18
  dac608:	49 ff cc             	dec    r12
  dac60b:	48 8b 94 24 a0 00 00 	mov    rdx,QWORD PTR [rsp+0xa0]
  dac612:	00 
  dac613:	48 8b 8c 24 f0 00 00 	mov    rcx,QWORD PTR [rsp+0xf0]
  dac61a:	00 
  dac61b:	48 8b 44 24 78       	mov    rax,QWORD PTR [rsp+0x78]
  dac620:	0f 84 95 01 00 00    	je     dac7bb <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x56fb>
  dac626:	4c 89 fe             	mov    rsi,r15
  dac629:	4c 8b 6b f8          	mov    r13,QWORD PTR [rbx-0x8]
  dac62d:	49 83 fc 01          	cmp    r12,0x1
  dac631:	49 89 c7             	mov    r15,rax
  dac634:	4c 0f 44 f9          	cmove  r15,rcx
  dac638:	4c 8b 03             	mov    r8,QWORD PTR [rbx]
  dac63b:	4c 03 44 24 30       	add    r8,QWORD PTR [rsp+0x30]
  dac640:	4c 89 ac 24 88 00 00 	mov    QWORD PTR [rsp+0x88],r13
  dac647:	00 
  dac648:	49 8d 45 fe          	lea    rax,[r13-0x2]
  dac64c:	48 83 f8 0e          	cmp    rax,0xe
  dac650:	0f 87 5f 11 00 00    	ja     dad7b5 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x66f5>
  dac656:	48 8d 0d 0b 6b 2f ff 	lea    rcx,[rip+0xffffffffff2f6b0b]        # a3168 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x30618>
  dac65d:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  dac661:	48 01 c8             	add    rax,rcx
  dac664:	48 89 74 24 78       	mov    QWORD PTR [rsp+0x78],rsi
  dac669:	ff e0                	jmp    rax
  dac66b:	48 89 f7             	mov    rdi,rsi
  dac66e:	4c 89 fe             	mov    rsi,r15
  dac671:	4c 89 f1             	mov    rcx,r14
  dac674:	e8 07 09 f1 ff       	call   cbcf80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  dac679:	eb 85                	jmp    dac600 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5540>
  dac67b:	48 89 f7             	mov    rdi,rsi
  dac67e:	4c 89 fe             	mov    rsi,r15
  dac681:	4c 89 f1             	mov    rcx,r14
  dac684:	e8 77 53 f1 ff       	call   cc1a00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  dac689:	e9 72 ff ff ff       	jmp    dac600 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5540>
  dac68e:	48 89 f7             	mov    rdi,rsi
  dac691:	4c 89 fe             	mov    rsi,r15
  dac694:	4c 89 f1             	mov    rcx,r14
  dac697:	e8 64 12 f1 ff       	call   cbd900 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  dac69c:	e9 5f ff ff ff       	jmp    dac600 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5540>
  dac6a1:	48 89 f7             	mov    rdi,rsi
  dac6a4:	4c 89 fe             	mov    rsi,r15
  dac6a7:	4c 89 f1             	mov    rcx,r14
  dac6aa:	e8 91 68 f1 ff       	call   cc2f40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  dac6af:	e9 4c ff ff ff       	jmp    dac600 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5540>
  dac6b4:	48 89 f7             	mov    rdi,rsi
  dac6b7:	4c 89 fe             	mov    rsi,r15
  dac6ba:	4c 89 f1             	mov    rcx,r14
  dac6bd:	e8 be 36 f1 ff       	call   cbfd80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  dac6c2:	e9 39 ff ff ff       	jmp    dac600 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5540>
  dac6c7:	48 89 f7             	mov    rdi,rsi
  dac6ca:	4c 89 fe             	mov    rsi,r15
  dac6cd:	4c 89 f1             	mov    rcx,r14
  dac6d0:	e8 2b 0c f1 ff       	call   cbd300 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  dac6d5:	e9 26 ff ff ff       	jmp    dac600 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5540>
  dac6da:	48 89 f7             	mov    rdi,rsi
  dac6dd:	4c 89 fe             	mov    rsi,r15
  dac6e0:	4c 89 f1             	mov    rcx,r14
  dac6e3:	e8 98 0e f1 ff       	call   cbd580 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  dac6e8:	e9 13 ff ff ff       	jmp    dac600 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5540>
  dac6ed:	48 89 f7             	mov    rdi,rsi
  dac6f0:	4c 89 fe             	mov    rsi,r15
  dac6f3:	4c 89 f1             	mov    rcx,r14
  dac6f6:	e8 05 23 f1 ff       	call   cbea00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  dac6fb:	e9 00 ff ff ff       	jmp    dac600 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5540>
  dac700:	48 89 f7             	mov    rdi,rsi
  dac703:	4c 89 fe             	mov    rsi,r15
  dac706:	4c 89 f1             	mov    rcx,r14
  dac709:	e8 b2 09 f1 ff       	call   cbd0c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  dac70e:	e9 ed fe ff ff       	jmp    dac600 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5540>
  dac713:	48 89 f7             	mov    rdi,rsi
  dac716:	4c 89 fe             	mov    rsi,r15
  dac719:	4c 89 f1             	mov    rcx,r14
  dac71c:	e8 1f 16 f1 ff       	call   cbdd40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  dac721:	e9 da fe ff ff       	jmp    dac600 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5540>
  dac726:	48 89 f7             	mov    rdi,rsi
  dac729:	4c 89 fe             	mov    rsi,r15
  dac72c:	4c 89 f1             	mov    rcx,r14
  dac72f:	e8 0c 7a f1 ff       	call   cc4140 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  dac734:	e9 c7 fe ff ff       	jmp    dac600 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5540>
  dac739:	0f 28 84 24 b0 00 00 	movaps xmm0,XMMWORD PTR [rsp+0xb0]
  dac740:	00 
  dac741:	0f 29 84 24 40 01 00 	movaps XMMWORD PTR [rsp+0x140],xmm0
  dac748:	00 
  dac749:	48 89 f7             	mov    rdi,rsi
  dac74c:	4c 89 fe             	mov    rsi,r15
  dac74f:	4c 89 f1             	mov    rcx,r14
  dac752:	4c 8d 8c 24 40 01 00 	lea    r9,[rsp+0x140]
  dac759:	00 
  dac75a:	e8 a1 1c f1 ff       	call   cbe400 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  dac75f:	e9 9c fe ff ff       	jmp    dac600 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5540>
  dac764:	0f 28 84 24 b0 00 00 	movaps xmm0,XMMWORD PTR [rsp+0xb0]
  dac76b:	00 
  dac76c:	0f 29 84 24 40 01 00 	movaps XMMWORD PTR [rsp+0x140],xmm0
  dac773:	00 
  dac774:	48 89 f7             	mov    rdi,rsi
  dac777:	4c 89 fe             	mov    rsi,r15
  dac77a:	4c 89 f1             	mov    rcx,r14
  dac77d:	4c 8d 8c 24 40 01 00 	lea    r9,[rsp+0x140]
  dac784:	00 
  dac785:	e8 36 46 f1 ff       	call   cc0dc0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  dac78a:	e9 71 fe ff ff       	jmp    dac600 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5540>
  dac78f:	48 89 f7             	mov    rdi,rsi
  dac792:	4c 89 fe             	mov    rsi,r15
  dac795:	4c 89 f1             	mov    rcx,r14
  dac798:	e8 a3 2b f1 ff       	call   cbf340 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  dac79d:	e9 5e fe ff ff       	jmp    dac600 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5540>
  dac7a2:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  dac7a9:	1f 84 00 00 00 00 00 
  dac7b0:	49 89 cf             	mov    r15,rcx
  dac7b3:	48 8b 94 24 a0 00 00 	mov    rdx,QWORD PTR [rsp+0xa0]
  dac7ba:	00 
  dac7bb:	48 8b b4 24 30 01 00 	mov    rsi,QWORD PTR [rsp+0x130]
  dac7c2:	00 
  dac7c3:	48 85 f6             	test   rsi,rsi
  dac7c6:	0f 84 83 10 00 00    	je     dad84f <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x678f>
  dac7cc:	48 89 d0             	mov    rax,rdx
  dac7cf:	48 09 f0             	or     rax,rsi
  dac7d2:	48 89 d1             	mov    rcx,rdx
  dac7d5:	48 c1 e8 20          	shr    rax,0x20
  dac7d9:	74 25                	je     dac800 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5740>
  dac7db:	48 89 d0             	mov    rax,rdx
  dac7de:	31 d2                	xor    edx,edx
  dac7e0:	48 f7 f6             	div    rsi
  dac7e3:	4c 8b ac 24 10 02 00 	mov    r13,QWORD PTR [rsp+0x210]
  dac7ea:	00 
  dac7eb:	48 85 c9             	test   rcx,rcx
  dac7ee:	75 27                	jne    dac817 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5757>
  dac7f0:	e9 6b fd ff ff       	jmp    dac560 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x54a0>
  dac7f5:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  dac7fc:	00 00 00 00 
  dac800:	89 d0                	mov    eax,edx
  dac802:	31 d2                	xor    edx,edx
  dac804:	f7 f6                	div    esi
  dac806:	4c 8b ac 24 10 02 00 	mov    r13,QWORD PTR [rsp+0x210]
  dac80d:	00 
  dac80e:	48 85 c9             	test   rcx,rcx
  dac811:	0f 84 49 fd ff ff    	je     dac560 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x54a0>
  dac817:	48 8b 8c 24 00 02 00 	mov    rcx,QWORD PTR [rsp+0x200]
  dac81e:	00 
  dac81f:	48 8b 54 24 70       	mov    rdx,QWORD PTR [rsp+0x70]
  dac824:	48 8d 0c d1          	lea    rcx,[rcx+rdx*8]
  dac828:	48 0f af c1          	imul   rax,rcx
  dac82c:	48 0f af 8c 24 30 01 	imul   rcx,QWORD PTR [rsp+0x130]
  dac833:	00 00 
  dac835:	48 8b 94 24 f0 01 00 	mov    rdx,QWORD PTR [rsp+0x1f0]
  dac83c:	00 
  dac83d:	48 8d 04 82          	lea    rax,[rdx+rax*4]
  dac841:	48 8b 94 24 e0 01 00 	mov    rdx,QWORD PTR [rsp+0x1e0]
  dac848:	00 
  dac849:	48 8d 14 8a          	lea    rdx,[rdx+rcx*4]
  dac84d:	49 83 c7 70          	add    r15,0x70
  dac851:	48 8b b4 24 98 00 00 	mov    rsi,QWORD PTR [rsp+0x98]
  dac858:	00 
  dac859:	48 8b bc 24 e8 00 00 	mov    rdi,QWORD PTR [rsp+0xe8]
  dac860:	00 
  dac861:	45 31 c0             	xor    r8d,r8d
  dac864:	eb 44                	jmp    dac8aa <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x57ea>
  dac866:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  dac86d:	00 00 00 
  dac870:	44 0f 11 06          	movups XMMWORD PTR [rsi],xmm8
  dac874:	44 0f 11 4e 10       	movups XMMWORD PTR [rsi+0x10],xmm9
  dac879:	0f 11 76 20          	movups XMMWORD PTR [rsi+0x20],xmm6
  dac87d:	0f 11 66 30          	movups XMMWORD PTR [rsi+0x30],xmm4
  dac881:	0f 11 7e 40          	movups XMMWORD PTR [rsi+0x40],xmm7
  dac885:	0f 11 46 50          	movups XMMWORD PTR [rsi+0x50],xmm0
  dac889:	0f 11 6e 60          	movups XMMWORD PTR [rsi+0x60],xmm5
  dac88d:	0f 11 5e 70          	movups XMMWORD PTR [rsi+0x70],xmm3
  dac891:	48 ff cf             	dec    rdi
  dac894:	48 03 74 24 58       	add    rsi,QWORD PTR [rsp+0x58]
  dac899:	49 83 ef 80          	sub    r15,0xffffffffffffff80
  dac89d:	49 83 c0 04          	add    r8,0x4
  dac8a1:	48 85 ff             	test   rdi,rdi
  dac8a4:	0f 84 b6 fc ff ff    	je     dac560 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x54a0>
  dac8aa:	4d 89 c1             	mov    r9,r8
  dac8ad:	48 8b 4c 24 68       	mov    rcx,QWORD PTR [rsp+0x68]
  dac8b2:	49 d3 e9             	shr    r9,cl
  dac8b5:	49 c1 e1 05          	shl    r9,0x5
  dac8b9:	42 0f 10 04 08       	movups xmm0,XMMWORD PTR [rax+r9*1]
  dac8be:	42 0f 10 74 08 10    	movups xmm6,XMMWORD PTR [rax+r9*1+0x10]
  dac8c4:	4c 89 c1             	mov    rcx,r8
  dac8c7:	48 23 8c 24 a8 00 00 	and    rcx,QWORD PTR [rsp+0xa8]
  dac8ce:	00 
  dac8cf:	48 c1 e1 05          	shl    rcx,0x5
  dac8d3:	0f 10 24 0a          	movups xmm4,XMMWORD PTR [rdx+rcx*1]
  dac8d7:	0f 10 4c 0a 10       	movups xmm1,XMMWORD PTR [rdx+rcx*1+0x10]
  dac8dc:	0f 10 5c 0a 20       	movups xmm3,XMMWORD PTR [rdx+rcx*1+0x20]
  dac8e1:	0f 10 54 0a 30       	movups xmm2,XMMWORD PTR [rdx+rcx*1+0x30]
  dac8e6:	0f 28 ee             	movaps xmm5,xmm6
  dac8e9:	0f 59 e9             	mulps  xmm5,xmm1
  dac8ec:	0f 28 f8             	movaps xmm7,xmm0
  dac8ef:	0f 59 fc             	mulps  xmm7,xmm4
  dac8f2:	0f 5c fd             	subps  xmm7,xmm5
  dac8f5:	0f 59 e6             	mulps  xmm4,xmm6
  dac8f8:	0f 59 c8             	mulps  xmm1,xmm0
  dac8fb:	0f 58 cc             	addps  xmm1,xmm4
  dac8fe:	45 0f 10 4f 90       	movups xmm9,XMMWORD PTR [r15-0x70]
  dac903:	45 0f 10 57 a0       	movups xmm10,XMMWORD PTR [r15-0x60]
  dac908:	41 0f 10 6f b0       	movups xmm5,XMMWORD PTR [r15-0x50]
  dac90d:	45 0f 10 47 c0       	movups xmm8,XMMWORD PTR [r15-0x40]
  dac912:	41 0f 28 e1          	movaps xmm4,xmm9
  dac916:	0f 59 e7             	mulps  xmm4,xmm7
  dac919:	41 0f 59 fa          	mulps  xmm7,xmm10
  dac91d:	44 0f 59 d1          	mulps  xmm10,xmm1
  dac921:	41 0f 5c e2          	subps  xmm4,xmm10
  dac925:	41 0f 59 c9          	mulps  xmm1,xmm9
  dac929:	0f 58 cf             	addps  xmm1,xmm7
  dac92c:	0f 28 fe             	movaps xmm7,xmm6
  dac92f:	0f 59 fa             	mulps  xmm7,xmm2
  dac932:	44 0f 28 c8          	movaps xmm9,xmm0
  dac936:	44 0f 59 cb          	mulps  xmm9,xmm3
  dac93a:	44 0f 5c cf          	subps  xmm9,xmm7
  dac93e:	0f 59 de             	mulps  xmm3,xmm6
  dac941:	0f 59 d0             	mulps  xmm2,xmm0
  dac944:	0f 58 d3             	addps  xmm2,xmm3
  dac947:	0f 28 fd             	movaps xmm7,xmm5
  dac94a:	41 0f 59 f9          	mulps  xmm7,xmm9
  dac94e:	45 0f 59 c8          	mulps  xmm9,xmm8
  dac952:	44 0f 59 c2          	mulps  xmm8,xmm2
  dac956:	41 0f 5c f8          	subps  xmm7,xmm8
  dac95a:	0f 59 d5             	mulps  xmm2,xmm5
  dac95d:	41 0f 58 d1          	addps  xmm2,xmm9
  dac961:	45 0f 10 47 d0       	movups xmm8,XMMWORD PTR [r15-0x30]
  dac966:	45 0f 10 4f e0       	movups xmm9,XMMWORD PTR [r15-0x20]
  dac96b:	0f 10 6c 0a 40       	movups xmm5,XMMWORD PTR [rdx+rcx*1+0x40]
  dac970:	0f 10 5c 0a 50       	movups xmm3,XMMWORD PTR [rdx+rcx*1+0x50]
  dac975:	44 0f 28 d6          	movaps xmm10,xmm6
  dac979:	44 0f 59 d3          	mulps  xmm10,xmm3
  dac97d:	44 0f 28 d8          	movaps xmm11,xmm0
  dac981:	44 0f 59 dd          	mulps  xmm11,xmm5
  dac985:	45 0f 5c da          	subps  xmm11,xmm10
  dac989:	0f 59 ee             	mulps  xmm5,xmm6
  dac98c:	0f 59 d8             	mulps  xmm3,xmm0
  dac98f:	0f 58 dd             	addps  xmm3,xmm5
  dac992:	41 0f 28 e8          	movaps xmm5,xmm8
  dac996:	41 0f 59 eb          	mulps  xmm5,xmm11
  dac99a:	45 0f 59 d9          	mulps  xmm11,xmm9
  dac99e:	44 0f 59 cb          	mulps  xmm9,xmm3
  dac9a2:	41 0f 5c e9          	subps  xmm5,xmm9
  dac9a6:	41 0f 59 d8          	mulps  xmm3,xmm8
  dac9aa:	41 0f 58 db          	addps  xmm3,xmm11
  dac9ae:	45 0f 10 47 f0       	movups xmm8,XMMWORD PTR [r15-0x10]
  dac9b3:	45 0f 10 0f          	movups xmm9,XMMWORD PTR [r15]
  dac9b7:	44 0f 10 54 0a 60    	movups xmm10,XMMWORD PTR [rdx+rcx*1+0x60]
  dac9bd:	44 0f 10 5c 0a 70    	movups xmm11,XMMWORD PTR [rdx+rcx*1+0x70]
  dac9c3:	44 0f 28 e6          	movaps xmm12,xmm6
  dac9c7:	45 0f 59 e3          	mulps  xmm12,xmm11
  dac9cb:	44 0f 28 e8          	movaps xmm13,xmm0
  dac9cf:	45 0f 59 ea          	mulps  xmm13,xmm10
  dac9d3:	45 0f 5c ec          	subps  xmm13,xmm12
  dac9d7:	41 0f 59 f2          	mulps  xmm6,xmm10
  dac9db:	41 0f 59 c3          	mulps  xmm0,xmm11
  dac9df:	0f 58 c6             	addps  xmm0,xmm6
  dac9e2:	45 0f 28 d0          	movaps xmm10,xmm8
  dac9e6:	45 0f 59 d5          	mulps  xmm10,xmm13
  dac9ea:	45 0f 59 e9          	mulps  xmm13,xmm9
  dac9ee:	44 0f 59 c8          	mulps  xmm9,xmm0
  dac9f2:	45 0f 5c d1          	subps  xmm10,xmm9
  dac9f6:	41 0f 59 c0          	mulps  xmm0,xmm8
  dac9fa:	41 0f 58 c5          	addps  xmm0,xmm13
  dac9fe:	44 0f 28 cc          	movaps xmm9,xmm4
  daca02:	44 0f 14 cf          	unpcklps xmm9,xmm7
  daca06:	0f 28 f5             	movaps xmm6,xmm5
  daca09:	41 0f 14 f2          	unpcklps xmm6,xmm10
  daca0d:	45 0f 28 c1          	movaps xmm8,xmm9
  daca11:	44 0f 16 c6          	movlhps xmm8,xmm6
  daca15:	41 0f 12 f1          	movhlps xmm6,xmm9
  daca19:	0f 15 e7             	unpckhps xmm4,xmm7
  daca1c:	41 0f 15 ea          	unpckhps xmm5,xmm10
  daca20:	0f 28 fc             	movaps xmm7,xmm4
  daca23:	0f 16 fd             	movlhps xmm7,xmm5
  daca26:	0f 12 ec             	movhlps xmm5,xmm4
  daca29:	44 0f 28 d1          	movaps xmm10,xmm1
  daca2d:	44 0f 14 d2          	unpcklps xmm10,xmm2
  daca31:	0f 28 e3             	movaps xmm4,xmm3
  daca34:	0f 14 e0             	unpcklps xmm4,xmm0
  daca37:	45 0f 28 ca          	movaps xmm9,xmm10
  daca3b:	44 0f 16 cc          	movlhps xmm9,xmm4
  daca3f:	41 0f 12 e2          	movhlps xmm4,xmm10
  daca43:	0f 15 ca             	unpckhps xmm1,xmm2
  daca46:	0f 15 d8             	unpckhps xmm3,xmm0
  daca49:	0f 28 c1             	movaps xmm0,xmm1
  daca4c:	0f 16 c3             	movlhps xmm0,xmm3
  daca4f:	0f 12 d9             	movhlps xmm3,xmm1
  daca52:	80 7c 24 38 00       	cmp    BYTE PTR [rsp+0x38],0x0
  daca57:	0f 84 13 fe ff ff    	je     dac870 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x57b0>
  daca5d:	48 8d 4e 10          	lea    rcx,[rsi+0x10]
  daca61:	4c 8d 4e 20          	lea    r9,[rsi+0x20]
  daca65:	4c 8d 56 30          	lea    r10,[rsi+0x30]
  daca69:	4c 8d 5e 40          	lea    r11,[rsi+0x40]
  daca6d:	48 8d 5e 50          	lea    rbx,[rsi+0x50]
  daca71:	4c 8d 76 60          	lea    r14,[rsi+0x60]
  daca75:	4c 8d 66 70          	lea    r12,[rsi+0x70]
  daca79:	44 0f 2b 06          	movntps XMMWORD PTR [rsi],xmm8
  daca7d:	44 0f 2b 09          	movntps XMMWORD PTR [rcx],xmm9
  daca81:	41 0f 2b 31          	movntps XMMWORD PTR [r9],xmm6
  daca85:	41 0f 2b 22          	movntps XMMWORD PTR [r10],xmm4
  daca89:	41 0f 2b 3b          	movntps XMMWORD PTR [r11],xmm7
  daca8d:	0f 2b 03             	movntps XMMWORD PTR [rbx],xmm0
  daca90:	41 0f 2b 2e          	movntps XMMWORD PTR [r14],xmm5
  daca94:	41 0f 2b 1c 24       	movntps XMMWORD PTR [r12],xmm3
  daca99:	e9 f3 fd ff ff       	jmp    dac891 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x57d1>
  daca9e:	80 7c 24 38 00       	cmp    BYTE PTR [rsp+0x38],0x0
  dacaa3:	74 03                	je     dacaa8 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x59e8>
  dacaa5:	0f ae f8             	sfence
  dacaa8:	48 89 d0             	mov    rax,rdx
  dacaab:	4c 09 c8             	or     rax,r9
  dacaae:	48 c1 e8 20          	shr    rax,0x20
  dacab2:	74 0a                	je     dacabe <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x59fe>
  dacab4:	48 89 d0             	mov    rax,rdx
  dacab7:	31 d2                	xor    edx,edx
  dacab9:	49 f7 f1             	div    r9
  dacabc:	eb 07                	jmp    dacac5 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5a05>
  dacabe:	89 d0                	mov    eax,edx
  dacac0:	31 d2                	xor    edx,edx
  dacac2:	41 f7 f1             	div    r9d
  dacac5:	0f b6 4c 24 38       	movzx  ecx,BYTE PTR [rsp+0x38]
  dacaca:	20 8c 24 20 01 00 00 	and    BYTE PTR [rsp+0x120],cl
  dacad1:	31 ff                	xor    edi,edi
  dacad3:	48 85 d2             	test   rdx,rdx
  dacad6:	40 0f 95 c7          	setne  dil
  dacada:	48 01 c7             	add    rdi,rax
  dacadd:	0f 84 bf 0c 00 00    	je     dad7a2 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x66e2>
  dacae3:	4d 85 f6             	test   r14,r14
  dacae6:	0f 84 9b 0d 00 00    	je     dad887 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x67c7>
  dacaec:	4d 89 ca             	mov    r10,r9
  dacaef:	4a 8d 04 6d 00 00 00 	lea    rax,[r13*2+0x0]
  dacaf6:	00 
  dacaf7:	4c 01 e8             	add    rax,r13
  dacafa:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  dacaff:	48 8d 0c c2          	lea    rcx,[rdx+rax*8]
  dacb03:	48 89 4c 24 58       	mov    QWORD PTR [rsp+0x58],rcx
  dacb08:	48 8b b4 24 c8 01 00 	mov    rsi,QWORD PTR [rsp+0x1c8]
  dacb0f:	00 
  dacb10:	48 c1 e6 03          	shl    rsi,0x3
  dacb14:	48 8b 8c 24 d0 01 00 	mov    rcx,QWORD PTR [rsp+0x1d0]
  dacb1b:	00 
  dacb1c:	4c 8b 89 90 00 00 00 	mov    r9,QWORD PTR [rcx+0x90]
  dacb23:	4b 8d 0c 09          	lea    rcx,[r9+r9*1]
  dacb27:	48 89 4c 24 70       	mov    QWORD PTR [rsp+0x70],rcx
  dacb2c:	4a 8d 0c cd 00 00 00 	lea    rcx,[r9*8+0x0]
  dacb33:	00 
  dacb34:	48 89 8c 24 30 01 00 	mov    QWORD PTR [rsp+0x130],rcx
  dacb3b:	00 
  dacb3c:	4c 89 c1             	mov    rcx,r8
  dacb3f:	48 83 e1 fe          	and    rcx,0xfffffffffffffffe
  dacb43:	48 89 4c 24 68       	mov    QWORD PTR [rsp+0x68],rcx
  dacb48:	48 8d 04 c2          	lea    rax,[rdx+rax*8]
  dacb4c:	48 83 c0 20          	add    rax,0x20
  dacb50:	48 89 84 24 10 02 00 	mov    QWORD PTR [rsp+0x210],rax
  dacb57:	00 
  dacb58:	49 8d 46 ff          	lea    rax,[r14-0x1]
  dacb5c:	48 89 84 24 00 02 00 	mov    QWORD PTR [rsp+0x200],rax
  dacb63:	00 
  dacb64:	48 8b 8c 24 18 01 00 	mov    rcx,QWORD PTR [rsp+0x118]
  dacb6b:	00 
  dacb6c:	48 c1 e1 04          	shl    rcx,0x4
  dacb70:	48 01 f1             	add    rcx,rsi
  dacb73:	48 8b 84 24 d0 00 00 	mov    rax,QWORD PTR [rsp+0xd0]
  dacb7a:	00 
  dacb7b:	48 01 c8             	add    rax,rcx
  dacb7e:	48 83 c0 10          	add    rax,0x10
  dacb82:	48 89 84 24 80 00 00 	mov    QWORD PTR [rsp+0x80],rax
  dacb89:	00 
  dacb8a:	49 c1 e1 04          	shl    r9,0x4
  dacb8e:	4c 89 8c 24 98 00 00 	mov    QWORD PTR [rsp+0x98],r9
  dacb95:	00 
  dacb96:	48 8b 84 24 f8 00 00 	mov    rax,QWORD PTR [rsp+0xf8]
  dacb9d:	00 
  dacb9e:	48 8d 48 30          	lea    rcx,[rax+0x30]
  dacba2:	48 89 8c 24 90 00 00 	mov    QWORD PTR [rsp+0x90],rcx
  dacba9:	00 
  dacbaa:	49 c1 e0 05          	shl    r8,0x5
  dacbae:	4c 89 84 24 10 01 00 	mov    QWORD PTR [rsp+0x110],r8
  dacbb5:	00 
  dacbb6:	48 8b 8c 24 a0 00 00 	mov    rcx,QWORD PTR [rsp+0xa0]
  dacbbd:	00 
  dacbbe:	48 8d 0c cd 00 00 00 	lea    rcx,[rcx*8+0x0]
  dacbc5:	00 
  dacbc6:	48 89 8c 24 20 02 00 	mov    QWORD PTR [rsp+0x220],rcx
  dacbcd:	00 
  dacbce:	31 c9                	xor    ecx,ecx
  dacbd0:	48 89 84 24 d8 00 00 	mov    QWORD PTR [rsp+0xd8],rax
  dacbd7:	00 
  dacbd8:	eb 3f                	jmp    dacc19 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5b59>
  dacbda:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  dacbe0:	48 8b 84 24 10 01 00 	mov    rax,QWORD PTR [rsp+0x110]
  dacbe7:	00 
  dacbe8:	48 01 84 24 90 00 00 	add    QWORD PTR [rsp+0x90],rax
  dacbef:	00 
  dacbf0:	48 01 84 24 d8 00 00 	add    QWORD PTR [rsp+0xd8],rax
  dacbf7:	00 
  dacbf8:	48 8b bc 24 e0 01 00 	mov    rdi,QWORD PTR [rsp+0x1e0]
  dacbff:	00 
  dacc00:	48 85 ff             	test   rdi,rdi
  dacc03:	48 8b 8c 24 e8 00 00 	mov    rcx,QWORD PTR [rsp+0xe8]
  dacc0a:	00 
  dacc0b:	4c 8b 94 24 08 01 00 	mov    r10,QWORD PTR [rsp+0x108]
  dacc12:	00 
  dacc13:	0f 84 89 0b 00 00    	je     dad7a2 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x66e2>
  dacc19:	4a 8d 04 11          	lea    rax,[rcx+r10*1]
  dacc1d:	48 89 84 24 e8 00 00 	mov    QWORD PTR [rsp+0xe8],rax
  dacc24:	00 
  dacc25:	48 ff cf             	dec    rdi
  dacc28:	48 89 bc 24 e0 01 00 	mov    QWORD PTR [rsp+0x1e0],rdi
  dacc2f:	00 
  dacc30:	48 89 8c 24 f0 01 00 	mov    QWORD PTR [rsp+0x1f0],rcx
  dacc37:	00 
  dacc38:	48 8d 04 09          	lea    rax,[rcx+rcx*1]
  dacc3c:	48 89 84 24 f0 00 00 	mov    QWORD PTR [rsp+0xf0],rax
  dacc43:	00 
  dacc44:	31 d2                	xor    edx,edx
  dacc46:	eb 3e                	jmp    dacc86 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5bc6>
  dacc48:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  dacc4f:	00 
  dacc50:	48 8b 94 24 a8 00 00 	mov    rdx,QWORD PTR [rsp+0xa8]
  dacc57:	00 
  dacc58:	48 ff c2             	inc    rdx
  dacc5b:	4c 8b 5c 24 40       	mov    r11,QWORD PTR [rsp+0x40]
  dacc60:	4c 39 da             	cmp    rdx,r11
  dacc63:	48 8b 5c 24 60       	mov    rbx,QWORD PTR [rsp+0x60]
  dacc68:	4c 8b b4 24 30 02 00 	mov    r14,QWORD PTR [rsp+0x230]
  dacc6f:	00 
  dacc70:	4c 8b a4 24 98 00 00 	mov    r12,QWORD PTR [rsp+0x98]
  dacc77:	00 
  dacc78:	4c 8b ac 24 30 01 00 	mov    r13,QWORD PTR [rsp+0x130]
  dacc7f:	00 
  dacc80:	0f 84 1a 03 00 00    	je     dacfa0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5ee0>
  dacc86:	48 89 d0             	mov    rax,rdx
  dacc89:	48 0f af 44 24 70    	imul   rax,QWORD PTR [rsp+0x70]
  dacc8f:	48 8b 8c 24 c8 00 00 	mov    rcx,QWORD PTR [rsp+0xc8]
  dacc96:	00 
  dacc97:	48 8d 04 81          	lea    rax,[rcx+rax*4]
  dacc9b:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
  dacca0:	48 8b 84 24 f0 00 00 	mov    rax,QWORD PTR [rsp+0xf0]
  dacca7:	00 
  dacca8:	48 8d 04 d0          	lea    rax,[rax+rdx*8]
  daccac:	48 0f af c3          	imul   rax,rbx
  daccb0:	48 8b 8c 24 d0 00 00 	mov    rcx,QWORD PTR [rsp+0xd0]
  daccb7:	00 
  daccb8:	48 8d 3c 81          	lea    rdi,[rcx+rax*4]
  daccbc:	48 8b 44 24 58       	mov    rax,QWORD PTR [rsp+0x58]
  daccc1:	48 8b 00             	mov    rax,QWORD PTR [rax]
  daccc4:	48 83 f8 02          	cmp    rax,0x2
  daccc8:	48 89 94 24 a8 00 00 	mov    QWORD PTR [rsp+0xa8],rdx
  dacccf:	00 
  daccd0:	74 6e                	je     dacd40 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5c80>
  daccd2:	48 83 f8 04          	cmp    rax,0x4
  daccd6:	74 38                	je     dacd10 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5c50>
  daccd8:	48 83 f8 08          	cmp    rax,0x8
  daccdc:	0f 85 0d 0b 00 00    	jne    dad7ef <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x672f>
  dacce2:	48 8b 74 24 38       	mov    rsi,QWORD PTR [rsp+0x38]
  dacce7:	48 89 da             	mov    rdx,rbx
  daccea:	0f 28 84 24 b0 00 00 	movaps xmm0,XMMWORD PTR [rsp+0xb0]
  daccf1:	00 
  daccf2:	e8 09 84 fd ff       	call   d85100 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  daccf7:	49 83 fe 02          	cmp    r14,0x2
  daccfb:	4c 8b 54 24 68       	mov    r10,QWORD PTR [rsp+0x68]
  dacd00:	0f 82 4a ff ff ff    	jb     dacc50 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5b90>
  dacd06:	eb 5c                	jmp    dacd64 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5ca4>
  dacd08:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  dacd0f:	00 
  dacd10:	48 8b 74 24 38       	mov    rsi,QWORD PTR [rsp+0x38]
  dacd15:	48 89 da             	mov    rdx,rbx
  dacd18:	0f 28 84 24 b0 00 00 	movaps xmm0,XMMWORD PTR [rsp+0xb0]
  dacd1f:	00 
  dacd20:	e8 9b c7 fd ff       	call   d894c0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  dacd25:	49 83 fe 02          	cmp    r14,0x2
  dacd29:	4c 8b 54 24 68       	mov    r10,QWORD PTR [rsp+0x68]
  dacd2e:	0f 82 1c ff ff ff    	jb     dacc50 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5b90>
  dacd34:	eb 2e                	jmp    dacd64 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5ca4>
  dacd36:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  dacd3d:	00 00 00 
  dacd40:	48 8b 74 24 38       	mov    rsi,QWORD PTR [rsp+0x38]
  dacd45:	48 89 da             	mov    rdx,rbx
  dacd48:	0f 28 84 24 b0 00 00 	movaps xmm0,XMMWORD PTR [rsp+0xb0]
  dacd4f:	00 
  dacd50:	e8 eb 91 ff ff       	call   da5f40 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  dacd55:	49 83 fe 02          	cmp    r14,0x2
  dacd59:	4c 8b 54 24 68       	mov    r10,QWORD PTR [rsp+0x68]
  dacd5e:	0f 82 ec fe ff ff    	jb     dacc50 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5b90>
  dacd64:	48 8b 44 24 58       	mov    rax,QWORD PTR [rsp+0x58]
  dacd69:	4c 8b 38             	mov    r15,QWORD PTR [rax]
  dacd6c:	4c 8b a4 24 00 02 00 	mov    r12,QWORD PTR [rsp+0x200]
  dacd73:	00 
  dacd74:	4c 8b b4 24 10 02 00 	mov    r14,QWORD PTR [rsp+0x210]
  dacd7b:	00 
  dacd7c:	4c 8b 6c 24 38       	mov    r13,QWORD PTR [rsp+0x38]
  dacd81:	48 8b 84 24 50 02 00 	mov    rax,QWORD PTR [rsp+0x250]
  dacd88:	00 
  dacd89:	eb 50                	jmp    dacddb <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5d1b>
  dacd8b:	0f 28 84 24 b0 00 00 	movaps xmm0,XMMWORD PTR [rsp+0xb0]
  dacd92:	00 
  dacd93:	0f 29 84 24 40 01 00 	movaps XMMWORD PTR [rsp+0x140],xmm0
  dacd9a:	00 
  dacd9b:	48 89 d7             	mov    rdi,rdx
  dacd9e:	4c 89 ee             	mov    rsi,r13
  dacda1:	48 8b 54 24 60       	mov    rdx,QWORD PTR [rsp+0x60]
  dacda6:	4c 89 f9             	mov    rcx,r15
  dacda9:	4c 8d 8c 24 40 01 00 	lea    r9,[rsp+0x140]
  dacdb0:	00 
  dacdb1:	e8 0a 86 f1 ff       	call   cc53c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  dacdb6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  dacdbd:	00 00 00 
  dacdc0:	4c 0f af fb          	imul   r15,rbx
  dacdc4:	49 83 c6 18          	add    r14,0x18
  dacdc8:	49 ff cc             	dec    r12
  dacdcb:	4c 8b 54 24 68       	mov    r10,QWORD PTR [rsp+0x68]
  dacdd0:	48 8b 44 24 78       	mov    rax,QWORD PTR [rsp+0x78]
  dacdd5:	0f 84 75 fe ff ff    	je     dacc50 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5b90>
  dacddb:	4c 89 ea             	mov    rdx,r13
  dacdde:	49 8b 5e f8          	mov    rbx,QWORD PTR [r14-0x8]
  dacde2:	49 83 fc 01          	cmp    r12,0x1
  dacde6:	49 89 c5             	mov    r13,rax
  dacde9:	4c 0f 44 6c 24 38    	cmove  r13,QWORD PTR [rsp+0x38]
  dacdef:	4d 8b 06             	mov    r8,QWORD PTR [r14]
  dacdf2:	4c 03 44 24 30       	add    r8,QWORD PTR [rsp+0x30]
  dacdf7:	48 89 9c 24 88 00 00 	mov    QWORD PTR [rsp+0x88],rbx
  dacdfe:	00 
  dacdff:	48 8d 43 fe          	lea    rax,[rbx-0x2]
  dace03:	48 83 f8 0e          	cmp    rax,0xe
  dace07:	0f 87 a8 09 00 00    	ja     dad7b5 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x66f5>
  dace0d:	48 8d 0d 90 63 2f ff 	lea    rcx,[rip+0xffffffffff2f6390]        # a31a4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x30654>
  dace14:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  dace18:	48 01 c8             	add    rax,rcx
  dace1b:	48 89 54 24 78       	mov    QWORD PTR [rsp+0x78],rdx
  dace20:	ff e0                	jmp    rax
  dace22:	48 89 d7             	mov    rdi,rdx
  dace25:	4c 89 ee             	mov    rsi,r13
  dace28:	48 8b 54 24 60       	mov    rdx,QWORD PTR [rsp+0x60]
  dace2d:	4c 89 f9             	mov    rcx,r15
  dace30:	e8 4b 01 f1 ff       	call   cbcf80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  dace35:	eb 89                	jmp    dacdc0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5d00>
  dace37:	48 89 d7             	mov    rdi,rdx
  dace3a:	4c 89 ee             	mov    rsi,r13
  dace3d:	48 8b 54 24 60       	mov    rdx,QWORD PTR [rsp+0x60]
  dace42:	4c 89 f9             	mov    rcx,r15
  dace45:	e8 b6 4b f1 ff       	call   cc1a00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  dace4a:	e9 71 ff ff ff       	jmp    dacdc0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5d00>
  dace4f:	48 89 d7             	mov    rdi,rdx
  dace52:	4c 89 ee             	mov    rsi,r13
  dace55:	48 8b 54 24 60       	mov    rdx,QWORD PTR [rsp+0x60]
  dace5a:	4c 89 f9             	mov    rcx,r15
  dace5d:	e8 9e 0a f1 ff       	call   cbd900 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  dace62:	e9 59 ff ff ff       	jmp    dacdc0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5d00>
  dace67:	48 89 d7             	mov    rdi,rdx
  dace6a:	4c 89 ee             	mov    rsi,r13
  dace6d:	48 8b 54 24 60       	mov    rdx,QWORD PTR [rsp+0x60]
  dace72:	4c 89 f9             	mov    rcx,r15
  dace75:	e8 c6 60 f1 ff       	call   cc2f40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  dace7a:	e9 41 ff ff ff       	jmp    dacdc0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5d00>
  dace7f:	48 89 d7             	mov    rdi,rdx
  dace82:	4c 89 ee             	mov    rsi,r13
  dace85:	48 8b 54 24 60       	mov    rdx,QWORD PTR [rsp+0x60]
  dace8a:	4c 89 f9             	mov    rcx,r15
  dace8d:	e8 ee 2e f1 ff       	call   cbfd80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  dace92:	e9 29 ff ff ff       	jmp    dacdc0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5d00>
  dace97:	48 89 d7             	mov    rdi,rdx
  dace9a:	4c 89 ee             	mov    rsi,r13
  dace9d:	48 8b 54 24 60       	mov    rdx,QWORD PTR [rsp+0x60]
  dacea2:	4c 89 f9             	mov    rcx,r15
  dacea5:	e8 56 04 f1 ff       	call   cbd300 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  daceaa:	e9 11 ff ff ff       	jmp    dacdc0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5d00>
  daceaf:	48 89 d7             	mov    rdi,rdx
  daceb2:	4c 89 ee             	mov    rsi,r13
  daceb5:	48 8b 54 24 60       	mov    rdx,QWORD PTR [rsp+0x60]
  daceba:	4c 89 f9             	mov    rcx,r15
  dacebd:	e8 be 06 f1 ff       	call   cbd580 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  dacec2:	e9 f9 fe ff ff       	jmp    dacdc0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5d00>
  dacec7:	48 89 d7             	mov    rdi,rdx
  daceca:	4c 89 ee             	mov    rsi,r13
  dacecd:	48 8b 54 24 60       	mov    rdx,QWORD PTR [rsp+0x60]
  daced2:	4c 89 f9             	mov    rcx,r15
  daced5:	e8 26 1b f1 ff       	call   cbea00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  daceda:	e9 e1 fe ff ff       	jmp    dacdc0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5d00>
  dacedf:	48 89 d7             	mov    rdi,rdx
  dacee2:	4c 89 ee             	mov    rsi,r13
  dacee5:	48 8b 54 24 60       	mov    rdx,QWORD PTR [rsp+0x60]
  daceea:	4c 89 f9             	mov    rcx,r15
  daceed:	e8 ce 01 f1 ff       	call   cbd0c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  dacef2:	e9 c9 fe ff ff       	jmp    dacdc0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5d00>
  dacef7:	48 89 d7             	mov    rdi,rdx
  dacefa:	4c 89 ee             	mov    rsi,r13
  dacefd:	48 8b 54 24 60       	mov    rdx,QWORD PTR [rsp+0x60]
  dacf02:	4c 89 f9             	mov    rcx,r15
  dacf05:	e8 36 0e f1 ff       	call   cbdd40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  dacf0a:	e9 b1 fe ff ff       	jmp    dacdc0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5d00>
  dacf0f:	48 89 d7             	mov    rdi,rdx
  dacf12:	4c 89 ee             	mov    rsi,r13
  dacf15:	48 8b 54 24 60       	mov    rdx,QWORD PTR [rsp+0x60]
  dacf1a:	4c 89 f9             	mov    rcx,r15
  dacf1d:	e8 1e 72 f1 ff       	call   cc4140 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  dacf22:	e9 99 fe ff ff       	jmp    dacdc0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5d00>
  dacf27:	0f 28 84 24 b0 00 00 	movaps xmm0,XMMWORD PTR [rsp+0xb0]
  dacf2e:	00 
  dacf2f:	0f 29 84 24 40 01 00 	movaps XMMWORD PTR [rsp+0x140],xmm0
  dacf36:	00 
  dacf37:	48 89 d7             	mov    rdi,rdx
  dacf3a:	4c 89 ee             	mov    rsi,r13
  dacf3d:	48 8b 54 24 60       	mov    rdx,QWORD PTR [rsp+0x60]
  dacf42:	4c 89 f9             	mov    rcx,r15
  dacf45:	4c 8d 8c 24 40 01 00 	lea    r9,[rsp+0x140]
  dacf4c:	00 
  dacf4d:	e8 ae 14 f1 ff       	call   cbe400 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  dacf52:	e9 69 fe ff ff       	jmp    dacdc0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5d00>
  dacf57:	0f 28 84 24 b0 00 00 	movaps xmm0,XMMWORD PTR [rsp+0xb0]
  dacf5e:	00 
  dacf5f:	0f 29 84 24 40 01 00 	movaps XMMWORD PTR [rsp+0x140],xmm0
  dacf66:	00 
  dacf67:	48 89 d7             	mov    rdi,rdx
  dacf6a:	4c 89 ee             	mov    rsi,r13
  dacf6d:	48 8b 54 24 60       	mov    rdx,QWORD PTR [rsp+0x60]
  dacf72:	4c 89 f9             	mov    rcx,r15
  dacf75:	4c 8d 8c 24 40 01 00 	lea    r9,[rsp+0x140]
  dacf7c:	00 
  dacf7d:	e8 3e 3e f1 ff       	call   cc0dc0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  dacf82:	e9 39 fe ff ff       	jmp    dacdc0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5d00>
  dacf87:	48 89 d7             	mov    rdi,rdx
  dacf8a:	4c 89 ee             	mov    rsi,r13
  dacf8d:	48 8b 54 24 60       	mov    rdx,QWORD PTR [rsp+0x60]
  dacf92:	4c 89 f9             	mov    rcx,r15
  dacf95:	e8 a6 23 f1 ff       	call   cbf340 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  dacf9a:	e9 21 fe ff ff       	jmp    dacdc0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5d00>
  dacf9f:	90                   	nop
  dacfa0:	48 85 db             	test   rbx,rbx
  dacfa3:	0f 84 37 fc ff ff    	je     dacbe0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5b20>
  dacfa9:	80 bc 24 20 01 00 00 	cmp    BYTE PTR [rsp+0x120],0x0
  dacfb0:	00 
  dacfb1:	74 7d                	je     dad030 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5f70>
  dacfb3:	48 8b 84 24 80 00 00 	mov    rax,QWORD PTR [rsp+0x80]
  dacfba:	00 
  dacfbb:	48 8b 8c 24 d8 00 00 	mov    rcx,QWORD PTR [rsp+0xd8]
  dacfc2:	00 
  dacfc3:	31 d2                	xor    edx,edx
  dacfc5:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  dacfcc:	00 00 00 00 
  dacfd0:	4c 89 de             	mov    rsi,r11
  dacfd3:	48 89 c7             	mov    rdi,rax
  dacfd6:	49 89 c8             	mov    r8,rcx
  dacfd9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  dacfe0:	0f 10 47 f0          	movups xmm0,XMMWORD PTR [rdi-0x10]
  dacfe4:	0f 10 0f             	movups xmm1,XMMWORD PTR [rdi]
  dacfe7:	0f 28 d0             	movaps xmm2,xmm0
  dacfea:	0f 14 d1             	unpcklps xmm2,xmm1
  dacfed:	0f 15 c1             	unpckhps xmm0,xmm1
  dacff0:	41 0f 2b 10          	movntps XMMWORD PTR [r8],xmm2
  dacff4:	4d 8d 48 10          	lea    r9,[r8+0x10]
  dacff8:	41 0f 2b 01          	movntps XMMWORD PTR [r9],xmm0
  dacffc:	49 83 c0 20          	add    r8,0x20
  dad000:	4c 01 ef             	add    rdi,r13
  dad003:	48 ff ce             	dec    rsi
  dad006:	75 d8                	jne    dacfe0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5f20>
  dad008:	48 ff c2             	inc    rdx
  dad00b:	48 03 8c 24 20 02 00 	add    rcx,QWORD PTR [rsp+0x220]
  dad012:	00 
  dad013:	48 83 c0 20          	add    rax,0x20
  dad017:	48 39 da             	cmp    rdx,rbx
  dad01a:	75 b4                	jne    dacfd0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5f10>
  dad01c:	e9 bf fb ff ff       	jmp    dacbe0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5b20>
  dad021:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  dad028:	0f 1f 84 00 00 00 00 
  dad02f:	00 
  dad030:	48 8b 84 24 90 00 00 	mov    rax,QWORD PTR [rsp+0x90]
  dad037:	00 
  dad038:	48 8b 8c 24 80 00 00 	mov    rcx,QWORD PTR [rsp+0x80]
  dad03f:	00 
  dad040:	31 d2                	xor    edx,edx
  dad042:	eb 29                	jmp    dad06d <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5fad>
  dad044:	66 66 66 2e 0f 1f 84 	data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  dad04b:	00 00 00 00 00 
  dad050:	48 ff c2             	inc    rdx
  dad053:	48 83 c1 20          	add    rcx,0x20
  dad057:	48 03 84 24 20 02 00 	add    rax,QWORD PTR [rsp+0x220]
  dad05e:	00 
  dad05f:	48 39 da             	cmp    rdx,rbx
  dad062:	4c 8b 54 24 68       	mov    r10,QWORD PTR [rsp+0x68]
  dad067:	0f 84 73 fb ff ff    	je     dacbe0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5b20>
  dad06d:	48 89 d6             	mov    rsi,rdx
  dad070:	48 c1 e6 05          	shl    rsi,0x5
  dad074:	48 03 b4 24 c8 00 00 	add    rsi,QWORD PTR [rsp+0xc8]
  dad07b:	00 
  dad07c:	48 89 d7             	mov    rdi,rdx
  dad07f:	48 0f af bc 24 a0 00 	imul   rdi,QWORD PTR [rsp+0xa0]
  dad086:	00 00 
  dad088:	48 03 bc 24 f0 01 00 	add    rdi,QWORD PTR [rsp+0x1f0]
  dad08f:	00 
  dad090:	4c 8b 84 24 f8 00 00 	mov    r8,QWORD PTR [rsp+0xf8]
  dad097:	00 
  dad098:	49 8d 3c f8          	lea    rdi,[r8+rdi*8]
  dad09c:	49 89 c1             	mov    r9,rax
  dad09f:	4d 89 d7             	mov    r15,r10
  dad0a2:	49 89 ca             	mov    r10,rcx
  dad0a5:	45 31 c0             	xor    r8d,r8d
  dad0a8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  dad0af:	00 
  dad0b0:	41 0f 10 42 f0       	movups xmm0,XMMWORD PTR [r10-0x10]
  dad0b5:	41 0f 10 0a          	movups xmm1,XMMWORD PTR [r10]
  dad0b9:	0f 28 d0             	movaps xmm2,xmm0
  dad0bc:	0f 14 d1             	unpcklps xmm2,xmm1
  dad0bf:	0f 15 c1             	unpckhps xmm0,xmm1
  dad0c2:	41 0f 11 51 d0       	movups XMMWORD PTR [r9-0x30],xmm2
  dad0c7:	41 0f 11 41 e0       	movups XMMWORD PTR [r9-0x20],xmm0
  dad0cc:	49 83 c0 02          	add    r8,0x2
  dad0d0:	43 0f 10 44 2a f0    	movups xmm0,XMMWORD PTR [r10+r13*1-0x10]
  dad0d6:	43 0f 10 0c 2a       	movups xmm1,XMMWORD PTR [r10+r13*1]
  dad0db:	0f 28 d0             	movaps xmm2,xmm0
  dad0de:	0f 14 d1             	unpcklps xmm2,xmm1
  dad0e1:	0f 15 c1             	unpckhps xmm0,xmm1
  dad0e4:	41 0f 11 51 f0       	movups XMMWORD PTR [r9-0x10],xmm2
  dad0e9:	41 0f 11 01          	movups XMMWORD PTR [r9],xmm0
  dad0ed:	4d 01 e2             	add    r10,r12
  dad0f0:	49 83 c1 40          	add    r9,0x40
  dad0f4:	4d 39 c7             	cmp    r15,r8
  dad0f7:	75 b7                	jne    dad0b0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5ff0>
  dad0f9:	41 f6 c3 01          	test   r11b,0x1
  dad0fd:	0f 84 4d ff ff ff    	je     dad050 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5f90>
  dad103:	4d 89 c1             	mov    r9,r8
  dad106:	4d 0f af cd          	imul   r9,r13
  dad10a:	42 0f 10 04 0e       	movups xmm0,XMMWORD PTR [rsi+r9*1]
  dad10f:	42 0f 10 4c 0e 10    	movups xmm1,XMMWORD PTR [rsi+r9*1+0x10]
  dad115:	0f 28 d0             	movaps xmm2,xmm0
  dad118:	0f 14 d1             	unpcklps xmm2,xmm1
  dad11b:	0f 15 c1             	unpckhps xmm0,xmm1
  dad11e:	49 c1 e0 05          	shl    r8,0x5
  dad122:	42 0f 11 14 07       	movups XMMWORD PTR [rdi+r8*1],xmm2
  dad127:	42 0f 11 44 07 10    	movups XMMWORD PTR [rdi+r8*1+0x10],xmm0
  dad12d:	e9 1e ff ff ff       	jmp    dad050 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5f90>
  dad132:	89 d0                	mov    eax,edx
  dad134:	31 d2                	xor    edx,edx
  dad136:	41 f7 f1             	div    r9d
  dad139:	0f b6 4c 24 38       	movzx  ecx,BYTE PTR [rsp+0x38]
  dad13e:	20 8c 24 20 01 00 00 	and    BYTE PTR [rsp+0x120],cl
  dad145:	31 ff                	xor    edi,edi
  dad147:	48 85 d2             	test   rdx,rdx
  dad14a:	40 0f 95 c7          	setne  dil
  dad14e:	48 01 c7             	add    rdi,rax
  dad151:	0f 84 4b 06 00 00    	je     dad7a2 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x66e2>
  dad157:	4d 85 f6             	test   r14,r14
  dad15a:	0f 84 27 07 00 00    	je     dad887 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x67c7>
  dad160:	4d 89 ca             	mov    r10,r9
  dad163:	4a 8d 04 6d 00 00 00 	lea    rax,[r13*2+0x0]
  dad16a:	00 
  dad16b:	4c 01 e8             	add    rax,r13
  dad16e:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  dad173:	48 8d 0c c2          	lea    rcx,[rdx+rax*8]
  dad177:	48 89 4c 24 58       	mov    QWORD PTR [rsp+0x58],rcx
  dad17c:	48 8b b4 24 c8 01 00 	mov    rsi,QWORD PTR [rsp+0x1c8]
  dad183:	00 
  dad184:	48 c1 e6 03          	shl    rsi,0x3
  dad188:	48 8b 8c 24 d0 01 00 	mov    rcx,QWORD PTR [rsp+0x1d0]
  dad18f:	00 
  dad190:	4c 8b 89 90 00 00 00 	mov    r9,QWORD PTR [rcx+0x90]
  dad197:	4b 8d 0c 09          	lea    rcx,[r9+r9*1]
  dad19b:	48 89 4c 24 70       	mov    QWORD PTR [rsp+0x70],rcx
  dad1a0:	4a 8d 0c cd 00 00 00 	lea    rcx,[r9*8+0x0]
  dad1a7:	00 
  dad1a8:	48 89 8c 24 30 01 00 	mov    QWORD PTR [rsp+0x130],rcx
  dad1af:	00 
  dad1b0:	4c 89 c1             	mov    rcx,r8
  dad1b3:	48 83 e1 fe          	and    rcx,0xfffffffffffffffe
  dad1b7:	48 89 4c 24 68       	mov    QWORD PTR [rsp+0x68],rcx
  dad1bc:	48 8d 04 c2          	lea    rax,[rdx+rax*8]
  dad1c0:	48 83 c0 20          	add    rax,0x20
  dad1c4:	48 89 84 24 10 02 00 	mov    QWORD PTR [rsp+0x210],rax
  dad1cb:	00 
  dad1cc:	49 8d 46 ff          	lea    rax,[r14-0x1]
  dad1d0:	48 89 84 24 00 02 00 	mov    QWORD PTR [rsp+0x200],rax
  dad1d7:	00 
  dad1d8:	48 8b 8c 24 18 01 00 	mov    rcx,QWORD PTR [rsp+0x118]
  dad1df:	00 
  dad1e0:	48 c1 e1 04          	shl    rcx,0x4
  dad1e4:	48 01 f1             	add    rcx,rsi
  dad1e7:	48 8b 84 24 d0 00 00 	mov    rax,QWORD PTR [rsp+0xd0]
  dad1ee:	00 
  dad1ef:	48 01 c8             	add    rax,rcx
  dad1f2:	48 83 c0 10          	add    rax,0x10
  dad1f6:	48 89 84 24 80 00 00 	mov    QWORD PTR [rsp+0x80],rax
  dad1fd:	00 
  dad1fe:	49 c1 e1 04          	shl    r9,0x4
  dad202:	4c 89 8c 24 98 00 00 	mov    QWORD PTR [rsp+0x98],r9
  dad209:	00 
  dad20a:	48 8b 84 24 f8 00 00 	mov    rax,QWORD PTR [rsp+0xf8]
  dad211:	00 
  dad212:	48 8d 48 30          	lea    rcx,[rax+0x30]
  dad216:	48 89 8c 24 90 00 00 	mov    QWORD PTR [rsp+0x90],rcx
  dad21d:	00 
  dad21e:	49 c1 e0 05          	shl    r8,0x5
  dad222:	4c 89 84 24 10 01 00 	mov    QWORD PTR [rsp+0x110],r8
  dad229:	00 
  dad22a:	48 8b 8c 24 a0 00 00 	mov    rcx,QWORD PTR [rsp+0xa0]
  dad231:	00 
  dad232:	48 8d 0c cd 00 00 00 	lea    rcx,[rcx*8+0x0]
  dad239:	00 
  dad23a:	48 89 8c 24 20 02 00 	mov    QWORD PTR [rsp+0x220],rcx
  dad241:	00 
  dad242:	31 c9                	xor    ecx,ecx
  dad244:	48 89 84 24 d8 00 00 	mov    QWORD PTR [rsp+0xd8],rax
  dad24b:	00 
  dad24c:	eb 3b                	jmp    dad289 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x61c9>
  dad24e:	66 90                	xchg   ax,ax
  dad250:	48 8b 84 24 10 01 00 	mov    rax,QWORD PTR [rsp+0x110]
  dad257:	00 
  dad258:	48 01 84 24 90 00 00 	add    QWORD PTR [rsp+0x90],rax
  dad25f:	00 
  dad260:	48 01 84 24 d8 00 00 	add    QWORD PTR [rsp+0xd8],rax
  dad267:	00 
  dad268:	48 8b bc 24 e0 01 00 	mov    rdi,QWORD PTR [rsp+0x1e0]
  dad26f:	00 
  dad270:	48 85 ff             	test   rdi,rdi
  dad273:	48 8b 8c 24 e8 00 00 	mov    rcx,QWORD PTR [rsp+0xe8]
  dad27a:	00 
  dad27b:	4c 8b 94 24 08 01 00 	mov    r10,QWORD PTR [rsp+0x108]
  dad282:	00 
  dad283:	0f 84 19 05 00 00    	je     dad7a2 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x66e2>
  dad289:	4a 8d 04 11          	lea    rax,[rcx+r10*1]
  dad28d:	48 89 84 24 e8 00 00 	mov    QWORD PTR [rsp+0xe8],rax
  dad294:	00 
  dad295:	48 ff cf             	dec    rdi
  dad298:	48 89 bc 24 e0 01 00 	mov    QWORD PTR [rsp+0x1e0],rdi
  dad29f:	00 
  dad2a0:	48 89 8c 24 f0 01 00 	mov    QWORD PTR [rsp+0x1f0],rcx
  dad2a7:	00 
  dad2a8:	48 8d 04 09          	lea    rax,[rcx+rcx*1]
  dad2ac:	48 89 84 24 f0 00 00 	mov    QWORD PTR [rsp+0xf0],rax
  dad2b3:	00 
  dad2b4:	31 d2                	xor    edx,edx
  dad2b6:	eb 3e                	jmp    dad2f6 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x6236>
  dad2b8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  dad2bf:	00 
  dad2c0:	48 8b 94 24 a8 00 00 	mov    rdx,QWORD PTR [rsp+0xa8]
  dad2c7:	00 
  dad2c8:	48 ff c2             	inc    rdx
  dad2cb:	4c 8b 5c 24 40       	mov    r11,QWORD PTR [rsp+0x40]
  dad2d0:	4c 39 da             	cmp    rdx,r11
  dad2d3:	48 8b 5c 24 60       	mov    rbx,QWORD PTR [rsp+0x60]
  dad2d8:	4c 8b b4 24 30 02 00 	mov    r14,QWORD PTR [rsp+0x230]
  dad2df:	00 
  dad2e0:	4c 8b a4 24 98 00 00 	mov    r12,QWORD PTR [rsp+0x98]
  dad2e7:	00 
  dad2e8:	4c 8b ac 24 30 01 00 	mov    r13,QWORD PTR [rsp+0x130]
  dad2ef:	00 
  dad2f0:	0f 84 1a 03 00 00    	je     dad610 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x6550>
  dad2f6:	48 89 d0             	mov    rax,rdx
  dad2f9:	48 0f af 44 24 70    	imul   rax,QWORD PTR [rsp+0x70]
  dad2ff:	48 8b 8c 24 c8 00 00 	mov    rcx,QWORD PTR [rsp+0xc8]
  dad306:	00 
  dad307:	48 8d 04 81          	lea    rax,[rcx+rax*4]
  dad30b:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
  dad310:	48 8b 84 24 f0 00 00 	mov    rax,QWORD PTR [rsp+0xf0]
  dad317:	00 
  dad318:	48 8d 04 d0          	lea    rax,[rax+rdx*8]
  dad31c:	48 0f af c3          	imul   rax,rbx
  dad320:	48 8b 8c 24 d0 00 00 	mov    rcx,QWORD PTR [rsp+0xd0]
  dad327:	00 
  dad328:	48 8d 3c 81          	lea    rdi,[rcx+rax*4]
  dad32c:	48 8b 44 24 58       	mov    rax,QWORD PTR [rsp+0x58]
  dad331:	48 8b 00             	mov    rax,QWORD PTR [rax]
  dad334:	48 83 f8 02          	cmp    rax,0x2
  dad338:	48 89 94 24 a8 00 00 	mov    QWORD PTR [rsp+0xa8],rdx
  dad33f:	00 
  dad340:	74 6e                	je     dad3b0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x62f0>
  dad342:	48 83 f8 04          	cmp    rax,0x4
  dad346:	74 38                	je     dad380 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x62c0>
  dad348:	48 83 f8 08          	cmp    rax,0x8
  dad34c:	0f 85 9d 04 00 00    	jne    dad7ef <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x672f>
  dad352:	48 8b 74 24 38       	mov    rsi,QWORD PTR [rsp+0x38]
  dad357:	48 89 da             	mov    rdx,rbx
  dad35a:	0f 28 84 24 b0 00 00 	movaps xmm0,XMMWORD PTR [rsp+0xb0]
  dad361:	00 
  dad362:	e8 99 7d fd ff       	call   d85100 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  dad367:	49 83 fe 02          	cmp    r14,0x2
  dad36b:	4c 8b 54 24 68       	mov    r10,QWORD PTR [rsp+0x68]
  dad370:	0f 82 4a ff ff ff    	jb     dad2c0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x6200>
  dad376:	eb 5c                	jmp    dad3d4 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x6314>
  dad378:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  dad37f:	00 
  dad380:	48 8b 74 24 38       	mov    rsi,QWORD PTR [rsp+0x38]
  dad385:	48 89 da             	mov    rdx,rbx
  dad388:	0f 28 84 24 b0 00 00 	movaps xmm0,XMMWORD PTR [rsp+0xb0]
  dad38f:	00 
  dad390:	e8 2b c1 fd ff       	call   d894c0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  dad395:	49 83 fe 02          	cmp    r14,0x2
  dad399:	4c 8b 54 24 68       	mov    r10,QWORD PTR [rsp+0x68]
  dad39e:	0f 82 1c ff ff ff    	jb     dad2c0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x6200>
  dad3a4:	eb 2e                	jmp    dad3d4 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x6314>
  dad3a6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  dad3ad:	00 00 00 
  dad3b0:	48 8b 74 24 38       	mov    rsi,QWORD PTR [rsp+0x38]
  dad3b5:	48 89 da             	mov    rdx,rbx
  dad3b8:	0f 28 84 24 b0 00 00 	movaps xmm0,XMMWORD PTR [rsp+0xb0]
  dad3bf:	00 
  dad3c0:	e8 7b 8b ff ff       	call   da5f40 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  dad3c5:	49 83 fe 02          	cmp    r14,0x2
  dad3c9:	4c 8b 54 24 68       	mov    r10,QWORD PTR [rsp+0x68]
  dad3ce:	0f 82 ec fe ff ff    	jb     dad2c0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x6200>
  dad3d4:	48 8b 44 24 58       	mov    rax,QWORD PTR [rsp+0x58]
  dad3d9:	4c 8b 38             	mov    r15,QWORD PTR [rax]
  dad3dc:	4c 8b a4 24 00 02 00 	mov    r12,QWORD PTR [rsp+0x200]
  dad3e3:	00 
  dad3e4:	4c 8b b4 24 10 02 00 	mov    r14,QWORD PTR [rsp+0x210]
  dad3eb:	00 
  dad3ec:	4c 8b 6c 24 38       	mov    r13,QWORD PTR [rsp+0x38]
  dad3f1:	48 8b 84 24 50 02 00 	mov    rax,QWORD PTR [rsp+0x250]
  dad3f8:	00 
  dad3f9:	eb 50                	jmp    dad44b <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x638b>
  dad3fb:	0f 28 84 24 b0 00 00 	movaps xmm0,XMMWORD PTR [rsp+0xb0]
  dad402:	00 
  dad403:	0f 29 84 24 40 01 00 	movaps XMMWORD PTR [rsp+0x140],xmm0
  dad40a:	00 
  dad40b:	48 89 d7             	mov    rdi,rdx
  dad40e:	4c 89 ee             	mov    rsi,r13
  dad411:	48 8b 54 24 60       	mov    rdx,QWORD PTR [rsp+0x60]
  dad416:	4c 89 f9             	mov    rcx,r15
  dad419:	4c 8d 8c 24 40 01 00 	lea    r9,[rsp+0x140]
  dad420:	00 
  dad421:	e8 9a 7f f1 ff       	call   cc53c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  dad426:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  dad42d:	00 00 00 
  dad430:	4c 0f af fb          	imul   r15,rbx
  dad434:	49 83 c6 18          	add    r14,0x18
  dad438:	49 ff cc             	dec    r12
  dad43b:	4c 8b 54 24 68       	mov    r10,QWORD PTR [rsp+0x68]
  dad440:	48 8b 44 24 78       	mov    rax,QWORD PTR [rsp+0x78]
  dad445:	0f 84 75 fe ff ff    	je     dad2c0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x6200>
  dad44b:	4c 89 ea             	mov    rdx,r13
  dad44e:	49 8b 5e f8          	mov    rbx,QWORD PTR [r14-0x8]
  dad452:	49 83 fc 01          	cmp    r12,0x1
  dad456:	49 89 c5             	mov    r13,rax
  dad459:	4c 0f 44 6c 24 38    	cmove  r13,QWORD PTR [rsp+0x38]
  dad45f:	4d 8b 06             	mov    r8,QWORD PTR [r14]
  dad462:	4c 03 44 24 30       	add    r8,QWORD PTR [rsp+0x30]
  dad467:	48 89 9c 24 88 00 00 	mov    QWORD PTR [rsp+0x88],rbx
  dad46e:	00 
  dad46f:	48 8d 43 fe          	lea    rax,[rbx-0x2]
  dad473:	48 83 f8 0e          	cmp    rax,0xe
  dad477:	0f 87 38 03 00 00    	ja     dad7b5 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x66f5>
  dad47d:	48 8d 0d dc 5f 2f ff 	lea    rcx,[rip+0xffffffffff2f5fdc]        # a3460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x30910>
  dad484:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  dad488:	48 01 c8             	add    rax,rcx
  dad48b:	48 89 54 24 78       	mov    QWORD PTR [rsp+0x78],rdx
  dad490:	ff e0                	jmp    rax
  dad492:	48 89 d7             	mov    rdi,rdx
  dad495:	4c 89 ee             	mov    rsi,r13
  dad498:	48 8b 54 24 60       	mov    rdx,QWORD PTR [rsp+0x60]
  dad49d:	4c 89 f9             	mov    rcx,r15
  dad4a0:	e8 db fa f0 ff       	call   cbcf80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  dad4a5:	eb 89                	jmp    dad430 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x6370>
  dad4a7:	48 89 d7             	mov    rdi,rdx
  dad4aa:	4c 89 ee             	mov    rsi,r13
  dad4ad:	48 8b 54 24 60       	mov    rdx,QWORD PTR [rsp+0x60]
  dad4b2:	4c 89 f9             	mov    rcx,r15
  dad4b5:	e8 46 45 f1 ff       	call   cc1a00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  dad4ba:	e9 71 ff ff ff       	jmp    dad430 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x6370>
  dad4bf:	48 89 d7             	mov    rdi,rdx
  dad4c2:	4c 89 ee             	mov    rsi,r13
  dad4c5:	48 8b 54 24 60       	mov    rdx,QWORD PTR [rsp+0x60]
  dad4ca:	4c 89 f9             	mov    rcx,r15
  dad4cd:	e8 2e 04 f1 ff       	call   cbd900 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  dad4d2:	e9 59 ff ff ff       	jmp    dad430 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x6370>
  dad4d7:	48 89 d7             	mov    rdi,rdx
  dad4da:	4c 89 ee             	mov    rsi,r13
  dad4dd:	48 8b 54 24 60       	mov    rdx,QWORD PTR [rsp+0x60]
  dad4e2:	4c 89 f9             	mov    rcx,r15
  dad4e5:	e8 56 5a f1 ff       	call   cc2f40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  dad4ea:	e9 41 ff ff ff       	jmp    dad430 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x6370>
  dad4ef:	48 89 d7             	mov    rdi,rdx
  dad4f2:	4c 89 ee             	mov    rsi,r13
  dad4f5:	48 8b 54 24 60       	mov    rdx,QWORD PTR [rsp+0x60]
  dad4fa:	4c 89 f9             	mov    rcx,r15
  dad4fd:	e8 7e 28 f1 ff       	call   cbfd80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  dad502:	e9 29 ff ff ff       	jmp    dad430 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x6370>
  dad507:	48 89 d7             	mov    rdi,rdx
  dad50a:	4c 89 ee             	mov    rsi,r13
  dad50d:	48 8b 54 24 60       	mov    rdx,QWORD PTR [rsp+0x60]
  dad512:	4c 89 f9             	mov    rcx,r15
  dad515:	e8 e6 fd f0 ff       	call   cbd300 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  dad51a:	e9 11 ff ff ff       	jmp    dad430 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x6370>
  dad51f:	48 89 d7             	mov    rdi,rdx
  dad522:	4c 89 ee             	mov    rsi,r13
  dad525:	48 8b 54 24 60       	mov    rdx,QWORD PTR [rsp+0x60]
  dad52a:	4c 89 f9             	mov    rcx,r15
  dad52d:	e8 4e 00 f1 ff       	call   cbd580 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  dad532:	e9 f9 fe ff ff       	jmp    dad430 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x6370>
  dad537:	48 89 d7             	mov    rdi,rdx
  dad53a:	4c 89 ee             	mov    rsi,r13
  dad53d:	48 8b 54 24 60       	mov    rdx,QWORD PTR [rsp+0x60]
  dad542:	4c 89 f9             	mov    rcx,r15
  dad545:	e8 b6 14 f1 ff       	call   cbea00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  dad54a:	e9 e1 fe ff ff       	jmp    dad430 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x6370>
  dad54f:	48 89 d7             	mov    rdi,rdx
  dad552:	4c 89 ee             	mov    rsi,r13
  dad555:	48 8b 54 24 60       	mov    rdx,QWORD PTR [rsp+0x60]
  dad55a:	4c 89 f9             	mov    rcx,r15
  dad55d:	e8 5e fb f0 ff       	call   cbd0c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  dad562:	e9 c9 fe ff ff       	jmp    dad430 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x6370>
  dad567:	48 89 d7             	mov    rdi,rdx
  dad56a:	4c 89 ee             	mov    rsi,r13
  dad56d:	48 8b 54 24 60       	mov    rdx,QWORD PTR [rsp+0x60]
  dad572:	4c 89 f9             	mov    rcx,r15
  dad575:	e8 c6 07 f1 ff       	call   cbdd40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  dad57a:	e9 b1 fe ff ff       	jmp    dad430 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x6370>
  dad57f:	48 89 d7             	mov    rdi,rdx
  dad582:	4c 89 ee             	mov    rsi,r13
  dad585:	48 8b 54 24 60       	mov    rdx,QWORD PTR [rsp+0x60]
  dad58a:	4c 89 f9             	mov    rcx,r15
  dad58d:	e8 ae 6b f1 ff       	call   cc4140 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  dad592:	e9 99 fe ff ff       	jmp    dad430 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x6370>
  dad597:	0f 28 84 24 b0 00 00 	movaps xmm0,XMMWORD PTR [rsp+0xb0]
  dad59e:	00 
  dad59f:	0f 29 84 24 40 01 00 	movaps XMMWORD PTR [rsp+0x140],xmm0
  dad5a6:	00 
  dad5a7:	48 89 d7             	mov    rdi,rdx
  dad5aa:	4c 89 ee             	mov    rsi,r13
  dad5ad:	48 8b 54 24 60       	mov    rdx,QWORD PTR [rsp+0x60]
  dad5b2:	4c 89 f9             	mov    rcx,r15
  dad5b5:	4c 8d 8c 24 40 01 00 	lea    r9,[rsp+0x140]
  dad5bc:	00 
  dad5bd:	e8 3e 0e f1 ff       	call   cbe400 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  dad5c2:	e9 69 fe ff ff       	jmp    dad430 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x6370>
  dad5c7:	0f 28 84 24 b0 00 00 	movaps xmm0,XMMWORD PTR [rsp+0xb0]
  dad5ce:	00 
  dad5cf:	0f 29 84 24 40 01 00 	movaps XMMWORD PTR [rsp+0x140],xmm0
  dad5d6:	00 
  dad5d7:	48 89 d7             	mov    rdi,rdx
  dad5da:	4c 89 ee             	mov    rsi,r13
  dad5dd:	48 8b 54 24 60       	mov    rdx,QWORD PTR [rsp+0x60]
  dad5e2:	4c 89 f9             	mov    rcx,r15
  dad5e5:	4c 8d 8c 24 40 01 00 	lea    r9,[rsp+0x140]
  dad5ec:	00 
  dad5ed:	e8 ce 37 f1 ff       	call   cc0dc0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  dad5f2:	e9 39 fe ff ff       	jmp    dad430 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x6370>
  dad5f7:	48 89 d7             	mov    rdi,rdx
  dad5fa:	4c 89 ee             	mov    rsi,r13
  dad5fd:	48 8b 54 24 60       	mov    rdx,QWORD PTR [rsp+0x60]
  dad602:	4c 89 f9             	mov    rcx,r15
  dad605:	e8 36 1d f1 ff       	call   cbf340 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  dad60a:	e9 21 fe ff ff       	jmp    dad430 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x6370>
  dad60f:	90                   	nop
  dad610:	48 85 db             	test   rbx,rbx
  dad613:	0f 84 37 fc ff ff    	je     dad250 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x6190>
  dad619:	80 bc 24 20 01 00 00 	cmp    BYTE PTR [rsp+0x120],0x0
  dad620:	00 
  dad621:	74 7d                	je     dad6a0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x65e0>
  dad623:	48 8b 84 24 80 00 00 	mov    rax,QWORD PTR [rsp+0x80]
  dad62a:	00 
  dad62b:	48 8b 8c 24 d8 00 00 	mov    rcx,QWORD PTR [rsp+0xd8]
  dad632:	00 
  dad633:	31 d2                	xor    edx,edx
  dad635:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  dad63c:	00 00 00 00 
  dad640:	4c 89 de             	mov    rsi,r11
  dad643:	48 89 c7             	mov    rdi,rax
  dad646:	49 89 c8             	mov    r8,rcx
  dad649:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  dad650:	0f 10 47 f0          	movups xmm0,XMMWORD PTR [rdi-0x10]
  dad654:	0f 10 0f             	movups xmm1,XMMWORD PTR [rdi]
  dad657:	0f 28 d1             	movaps xmm2,xmm1
  dad65a:	0f 14 d0             	unpcklps xmm2,xmm0
  dad65d:	0f 15 c8             	unpckhps xmm1,xmm0
  dad660:	41 0f 2b 10          	movntps XMMWORD PTR [r8],xmm2
  dad664:	4d 8d 48 10          	lea    r9,[r8+0x10]
  dad668:	41 0f 2b 09          	movntps XMMWORD PTR [r9],xmm1
  dad66c:	49 83 c0 20          	add    r8,0x20
  dad670:	4c 01 ef             	add    rdi,r13
  dad673:	48 ff ce             	dec    rsi
  dad676:	75 d8                	jne    dad650 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x6590>
  dad678:	48 ff c2             	inc    rdx
  dad67b:	48 03 8c 24 20 02 00 	add    rcx,QWORD PTR [rsp+0x220]
  dad682:	00 
  dad683:	48 83 c0 20          	add    rax,0x20
  dad687:	48 39 da             	cmp    rdx,rbx
  dad68a:	75 b4                	jne    dad640 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x6580>
  dad68c:	e9 bf fb ff ff       	jmp    dad250 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x6190>
  dad691:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  dad698:	0f 1f 84 00 00 00 00 
  dad69f:	00 
  dad6a0:	48 8b 84 24 90 00 00 	mov    rax,QWORD PTR [rsp+0x90]
  dad6a7:	00 
  dad6a8:	48 8b 8c 24 80 00 00 	mov    rcx,QWORD PTR [rsp+0x80]
  dad6af:	00 
  dad6b0:	31 d2                	xor    edx,edx
  dad6b2:	eb 29                	jmp    dad6dd <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x661d>
  dad6b4:	66 66 66 2e 0f 1f 84 	data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  dad6bb:	00 00 00 00 00 
  dad6c0:	48 ff c2             	inc    rdx
  dad6c3:	48 83 c1 20          	add    rcx,0x20
  dad6c7:	48 03 84 24 20 02 00 	add    rax,QWORD PTR [rsp+0x220]
  dad6ce:	00 
  dad6cf:	48 39 da             	cmp    rdx,rbx
  dad6d2:	4c 8b 54 24 68       	mov    r10,QWORD PTR [rsp+0x68]
  dad6d7:	0f 84 73 fb ff ff    	je     dad250 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x6190>
  dad6dd:	48 89 d6             	mov    rsi,rdx
  dad6e0:	48 c1 e6 05          	shl    rsi,0x5
  dad6e4:	48 03 b4 24 c8 00 00 	add    rsi,QWORD PTR [rsp+0xc8]
  dad6eb:	00 
  dad6ec:	48 89 d7             	mov    rdi,rdx
  dad6ef:	48 0f af bc 24 a0 00 	imul   rdi,QWORD PTR [rsp+0xa0]
  dad6f6:	00 00 
  dad6f8:	48 03 bc 24 f0 01 00 	add    rdi,QWORD PTR [rsp+0x1f0]
  dad6ff:	00 
  dad700:	4c 8b 84 24 f8 00 00 	mov    r8,QWORD PTR [rsp+0xf8]
  dad707:	00 
  dad708:	49 8d 3c f8          	lea    rdi,[r8+rdi*8]
  dad70c:	49 89 c1             	mov    r9,rax
  dad70f:	4d 89 d7             	mov    r15,r10
  dad712:	49 89 ca             	mov    r10,rcx
  dad715:	45 31 c0             	xor    r8d,r8d
  dad718:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  dad71f:	00 
  dad720:	41 0f 10 42 f0       	movups xmm0,XMMWORD PTR [r10-0x10]
  dad725:	41 0f 10 0a          	movups xmm1,XMMWORD PTR [r10]
  dad729:	0f 28 d1             	movaps xmm2,xmm1
  dad72c:	0f 14 d0             	unpcklps xmm2,xmm0
  dad72f:	0f 15 c8             	unpckhps xmm1,xmm0
  dad732:	41 0f 11 51 d0       	movups XMMWORD PTR [r9-0x30],xmm2
  dad737:	41 0f 11 49 e0       	movups XMMWORD PTR [r9-0x20],xmm1
  dad73c:	49 83 c0 02          	add    r8,0x2
  dad740:	43 0f 10 44 2a f0    	movups xmm0,XMMWORD PTR [r10+r13*1-0x10]
  dad746:	43 0f 10 0c 2a       	movups xmm1,XMMWORD PTR [r10+r13*1]
  dad74b:	0f 28 d1             	movaps xmm2,xmm1
  dad74e:	0f 14 d0             	unpcklps xmm2,xmm0
  dad751:	0f 15 c8             	unpckhps xmm1,xmm0
  dad754:	41 0f 11 51 f0       	movups XMMWORD PTR [r9-0x10],xmm2
  dad759:	41 0f 11 09          	movups XMMWORD PTR [r9],xmm1
  dad75d:	4d 01 e2             	add    r10,r12
  dad760:	49 83 c1 40          	add    r9,0x40
  dad764:	4d 39 c7             	cmp    r15,r8
  dad767:	75 b7                	jne    dad720 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x6660>
  dad769:	41 f6 c3 01          	test   r11b,0x1
  dad76d:	0f 84 4d ff ff ff    	je     dad6c0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x6600>
  dad773:	4d 89 c1             	mov    r9,r8
  dad776:	4d 0f af cd          	imul   r9,r13
  dad77a:	42 0f 10 04 0e       	movups xmm0,XMMWORD PTR [rsi+r9*1]
  dad77f:	42 0f 10 4c 0e 10    	movups xmm1,XMMWORD PTR [rsi+r9*1+0x10]
  dad785:	0f 28 d1             	movaps xmm2,xmm1
  dad788:	0f 14 d0             	unpcklps xmm2,xmm0
  dad78b:	0f 15 c8             	unpckhps xmm1,xmm0
  dad78e:	49 c1 e0 05          	shl    r8,0x5
  dad792:	42 0f 11 14 07       	movups XMMWORD PTR [rdi+r8*1],xmm2
  dad797:	42 0f 11 4c 07 10    	movups XMMWORD PTR [rdi+r8*1+0x10],xmm1
  dad79d:	e9 1e ff ff ff       	jmp    dad6c0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x6600>
  dad7a2:	80 bc 24 20 01 00 00 	cmp    BYTE PTR [rsp+0x120],0x0
  dad7a9:	00 
  dad7aa:	0f 85 0e e3 ff ff    	jne    dababe <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x49fe>
  dad7b0:	e9 0c e3 ff ff       	jmp    dabac1 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4a01>
  dad7b5:	48 8d 84 24 88 00 00 	lea    rax,[rsp+0x88]
  dad7bc:	00 
  dad7bd:	48 89 84 24 40 01 00 	mov    QWORD PTR [rsp+0x140],rax
  dad7c4:	00 
  dad7c5:	48 8d 05 f4 2d e7 ff 	lea    rax,[rip+0xffffffffffe72df4]        # c205c0 <<u64 as core::fmt::Display>::fmt>
  dad7cc:	48 89 84 24 48 01 00 	mov    QWORD PTR [rsp+0x148],rax
  dad7d3:	00 
  dad7d4:	48 8d 3d e0 08 30 ff 	lea    rdi,[rip+0xffffffffff3008e0]        # ae0bb <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x3b56b>
  dad7db:	48 8d 15 4e 00 4a 00 	lea    rdx,[rip+0x4a004e]        # 124d830 <__frame_dummy_init_array_entry+0x31018>
  dad7e2:	48 8d b4 24 40 01 00 	lea    rsi,[rsp+0x140]
  dad7e9:	00 
  dad7ea:	e8 51 85 e6 ff       	call   c15d40 <core::panicking::panic_fmt>
  dad7ef:	48 8d 3d b2 8d 31 ff 	lea    rdi,[rip+0xffffffffff318db2]        # c65a8 <crc32fast::table::CRC32_TABLE+0x8924>
  dad7f6:	48 8d 15 e3 fe 49 00 	lea    rdx,[rip+0x49fee3]        # 124d6e0 <__frame_dummy_init_array_entry+0x30ec8>
  dad7fd:	be 81 00 00 00       	mov    esi,0x81
  dad802:	e8 39 85 e6 ff       	call   c15d40 <core::panicking::panic_fmt>
  dad807:	48 8d 3d da 8d 31 ff 	lea    rdi,[rip+0xffffffffff318dda]        # c65e8 <crc32fast::table::CRC32_TABLE+0x8964>
  dad80e:	48 8d 15 13 ff 49 00 	lea    rdx,[rip+0x49ff13]        # 124d728 <__frame_dummy_init_array_entry+0x30f10>
  dad815:	be 87 00 00 00       	mov    esi,0x87
  dad81a:	e8 21 85 e6 ff       	call   c15d40 <core::panicking::panic_fmt>
  dad81f:	48 8d 3d 54 8e 31 ff 	lea    rdi,[rip+0xffffffffff318e54]        # c667a <crc32fast::table::CRC32_TABLE+0x89f6>
  dad826:	48 8d 15 73 ff 49 00 	lea    rdx,[rip+0x49ff73]        # 124d7a0 <__frame_dummy_init_array_entry+0x30f88>
  dad82d:	be 83 00 00 00       	mov    esi,0x83
  dad832:	e8 09 85 e6 ff       	call   c15d40 <core::panicking::panic_fmt>
  dad837:	48 8d 3d bb ab 31 ff 	lea    rdi,[rip+0xffffffffff31abbb]        # c83f9 <oxifft::dft::codelets::simd::large_sizes::bit_reverse_permute_4096::BIT_REV_TABLE+0x100>
  dad83e:	48 8d 15 93 10 4a 00 	lea    rdx,[rip+0x4a1093]        # 124e8d8 <__frame_dummy_init_array_entry+0x320c0>
  dad845:	be 1b 00 00 00       	mov    esi,0x1b
  dad84a:	e8 b1 a3 e6 ff       	call   c17c00 <core::panicking::panic>
  dad84f:	48 8d 3d ba fe 49 00 	lea    rdi,[rip+0x49feba]        # 124d710 <__frame_dummy_init_array_entry+0x30ef8>
  dad856:	e8 25 c8 e6 ff       	call   c1a080 <core::panicking::panic_const::panic_const_div_by_zero>
  dad85b:	48 8d 15 26 ff 49 00 	lea    rdx,[rip+0x49ff26]        # 124d788 <__frame_dummy_init_array_entry+0x30f70>
  dad862:	31 ff                	xor    edi,edi
  dad864:	31 f6                	xor    esi,esi
  dad866:	e8 d5 a5 e6 ff       	call   c17e40 <core::panicking::panic_bounds_check>
  dad86b:	48 8d 3d 3e fe 49 00 	lea    rdi,[rip+0x49fe3e]        # 124d6b0 <__frame_dummy_init_array_entry+0x30e98>
  dad872:	e8 09 c8 e6 ff       	call   c1a080 <core::panicking::panic_const::panic_const_div_by_zero>
  dad877:	48 8d 15 7a fe 49 00 	lea    rdx,[rip+0x49fe7a]        # 124d6f8 <__frame_dummy_init_array_entry+0x30ee0>
  dad87e:	31 ff                	xor    edi,edi
  dad880:	31 f6                	xor    esi,esi
  dad882:	e8 b9 a5 e6 ff       	call   c17e40 <core::panicking::panic_bounds_check>
  dad887:	48 8d 15 3a fe 49 00 	lea    rdx,[rip+0x49fe3a]        # 124d6c8 <__frame_dummy_init_array_entry+0x30eb0>
  dad88e:	31 ff                	xor    edi,edi
  dad890:	31 f6                	xor    esi,esi
  dad892:	e8 a9 a5 e6 ff       	call   c17e40 <core::panicking::panic_bounds_check>
