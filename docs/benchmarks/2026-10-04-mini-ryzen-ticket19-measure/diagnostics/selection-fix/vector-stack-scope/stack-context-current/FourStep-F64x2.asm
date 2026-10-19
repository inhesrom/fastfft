
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000e10080 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute>:
  e10080:	55                   	push   rbp
  e10081:	41 57                	push   r15
  e10083:	41 56                	push   r14
  e10085:	41 55                	push   r13
  e10087:	41 54                	push   r12
  e10089:	53                   	push   rbx
  e1008a:	48 81 ec 88 02 00 00 	sub    rsp,0x288
  e10091:	48 89 8c 24 98 00 00 	mov    QWORD PTR [rsp+0x98],rcx
  e10098:	00 
  e10099:	48 89 94 24 c0 00 00 	mov    QWORD PTR [rsp+0xc0],rdx
  e100a0:	00 
  e100a1:	48 89 b4 24 48 01 00 	mov    QWORD PTR [rsp+0x148],rsi
  e100a8:	00 
  e100a9:	45 85 c0             	test   r8d,r8d
  e100ac:	0f 84 e7 00 00 00    	je     e10199 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x119>
  e100b2:	4c 8b 87 88 00 00 00 	mov    r8,QWORD PTR [rdi+0x88]
  e100b9:	49 83 f8 01          	cmp    r8,0x1
  e100bd:	0f 86 bd 01 00 00    	jbe    e10280 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x200>
  e100c3:	48 8b 4f 58          	mov    rcx,QWORD PTR [rdi+0x58]
  e100c7:	48 8b 47 10          	mov    rax,QWORD PTR [rdi+0x10]
  e100cb:	4c 8b 7f 20          	mov    r15,QWORD PTR [rdi+0x20]
  e100cf:	48 8b 5f 60          	mov    rbx,QWORD PTR [rdi+0x60]
  e100d3:	4c 8b 77 28          	mov    r14,QWORD PTR [rdi+0x28]
  e100d7:	48 8b 57 30          	mov    rdx,QWORD PTR [rdi+0x30]
  e100db:	48 01 c2             	add    rdx,rax
  e100de:	48 89 94 24 b0 00 00 	mov    QWORD PTR [rsp+0xb0],rdx
  e100e5:	00 
  e100e6:	48 8b 57 40          	mov    rdx,QWORD PTR [rdi+0x40]
  e100ea:	48 89 44 24 20       	mov    QWORD PTR [rsp+0x20],rax
  e100ef:	48 01 c2             	add    rdx,rax
  e100f2:	48 89 94 24 a8 00 00 	mov    QWORD PTR [rsp+0xa8],rdx
  e100f9:	00 
  e100fa:	48 8b 57 78          	mov    rdx,QWORD PTR [rdi+0x78]
  e100fe:	4c 8b 8f 80 00 00 00 	mov    r9,QWORD PTR [rdi+0x80]
  e10105:	f2 0f 10 05 c3 47 26 	movsd  xmm0,QWORD PTR [rip+0xffffffffff2647c3]        # 748d0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1d80>
  e1010c:	ff 
  e1010d:	0f 29 44 24 70       	movaps XMMWORD PTR [rsp+0x70],xmm0
  e10112:	4b 8d 34 00          	lea    rsi,[r8+r8*1]
  e10116:	f6 84 24 c0 00 00 00 	test   BYTE PTR [rsp+0xc0],0x3f
  e1011d:	3f 
  e1011e:	0f 94 84 24 e8 00 00 	sete   BYTE PTR [rsp+0xe8]
  e10125:	00 
  e10126:	48 85 f6             	test   rsi,rsi
  e10129:	0f 84 7b 58 00 00    	je     e159aa <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x592a>
  e1012f:	48 c1 e2 04          	shl    rdx,0x4
  e10133:	48 8b 84 24 98 00 00 	mov    rax,QWORD PTR [rsp+0x98]
  e1013a:	00 
  e1013b:	48 89 94 24 50 01 00 	mov    QWORD PTR [rsp+0x150],rdx
  e10142:	00 
  e10143:	48 01 d0             	add    rax,rdx
  e10146:	48 89 84 24 d8 00 00 	mov    QWORD PTR [rsp+0xd8],rax
  e1014d:	00 
  e1014e:	4c 89 8c 24 80 02 00 	mov    QWORD PTR [rsp+0x280],r9
  e10155:	00 
  e10156:	4c 89 c8             	mov    rax,r9
  e10159:	48 c1 e0 04          	shl    rax,0x4
  e1015d:	48 01 c0             	add    rax,rax
  e10160:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
  e10165:	48 89 bc 24 20 01 00 	mov    QWORD PTR [rsp+0x120],rdi
  e1016c:	00 
  e1016d:	0f b6 af 99 00 00 00 	movzx  ebp,BYTE PTR [rdi+0x99]
  e10174:	48 89 d8             	mov    rax,rbx
  e10177:	48 09 f0             	or     rax,rsi
  e1017a:	48 c1 e8 20          	shr    rax,0x20
  e1017e:	48 89 b4 24 c8 00 00 	mov    QWORD PTR [rsp+0xc8],rsi
  e10185:	00 
  e10186:	0f 84 36 3e 00 00    	je     e13fc2 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3f42>
  e1018c:	48 89 d8             	mov    rax,rbx
  e1018f:	31 d2                	xor    edx,edx
  e10191:	48 f7 f6             	div    rsi
  e10194:	e9 2f 3e 00 00       	jmp    e13fc8 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3f48>
  e10199:	4c 8b 87 88 00 00 00 	mov    r8,QWORD PTR [rdi+0x88]
  e101a0:	49 83 f8 01          	cmp    r8,0x1
  e101a4:	0f 86 18 10 00 00    	jbe    e111c2 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1142>
  e101aa:	48 8b 4f 58          	mov    rcx,QWORD PTR [rdi+0x58]
  e101ae:	48 8b 47 10          	mov    rax,QWORD PTR [rdi+0x10]
  e101b2:	4c 8b 7f 20          	mov    r15,QWORD PTR [rdi+0x20]
  e101b6:	48 8b 5f 60          	mov    rbx,QWORD PTR [rdi+0x60]
  e101ba:	4c 8b 77 28          	mov    r14,QWORD PTR [rdi+0x28]
  e101be:	48 8b 57 30          	mov    rdx,QWORD PTR [rdi+0x30]
  e101c2:	48 01 c2             	add    rdx,rax
  e101c5:	48 89 94 24 b0 00 00 	mov    QWORD PTR [rsp+0xb0],rdx
  e101cc:	00 
  e101cd:	48 8b 57 40          	mov    rdx,QWORD PTR [rdi+0x40]
  e101d1:	48 89 44 24 20       	mov    QWORD PTR [rsp+0x20],rax
  e101d6:	48 01 c2             	add    rdx,rax
  e101d9:	48 89 94 24 a8 00 00 	mov    QWORD PTR [rsp+0xa8],rdx
  e101e0:	00 
  e101e1:	48 8b 57 78          	mov    rdx,QWORD PTR [rdi+0x78]
  e101e5:	4c 8b 8f 80 00 00 00 	mov    r9,QWORD PTR [rdi+0x80]
  e101ec:	f2 0f 10 05 dc 46 26 	movsd  xmm0,QWORD PTR [rip+0xffffffffff2646dc]        # 748d0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1d80>
  e101f3:	ff 
  e101f4:	0f 29 44 24 70       	movaps XMMWORD PTR [rsp+0x70],xmm0
  e101f9:	4b 8d 34 00          	lea    rsi,[r8+r8*1]
  e101fd:	f6 84 24 c0 00 00 00 	test   BYTE PTR [rsp+0xc0],0x3f
  e10204:	3f 
  e10205:	0f 94 84 24 e8 00 00 	sete   BYTE PTR [rsp+0xe8]
  e1020c:	00 
  e1020d:	48 85 f6             	test   rsi,rsi
  e10210:	0f 84 94 57 00 00    	je     e159aa <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x592a>
  e10216:	48 c1 e2 04          	shl    rdx,0x4
  e1021a:	48 8b 84 24 98 00 00 	mov    rax,QWORD PTR [rsp+0x98]
  e10221:	00 
  e10222:	48 89 94 24 50 01 00 	mov    QWORD PTR [rsp+0x150],rdx
  e10229:	00 
  e1022a:	48 01 d0             	add    rax,rdx
  e1022d:	48 89 84 24 d8 00 00 	mov    QWORD PTR [rsp+0xd8],rax
  e10234:	00 
  e10235:	4c 89 8c 24 80 02 00 	mov    QWORD PTR [rsp+0x280],r9
  e1023c:	00 
  e1023d:	4c 89 c8             	mov    rax,r9
  e10240:	48 c1 e0 04          	shl    rax,0x4
  e10244:	48 01 c0             	add    rax,rax
  e10247:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
  e1024c:	48 89 bc 24 20 01 00 	mov    QWORD PTR [rsp+0x120],rdi
  e10253:	00 
  e10254:	0f b6 af 99 00 00 00 	movzx  ebp,BYTE PTR [rdi+0x99]
  e1025b:	48 89 d8             	mov    rax,rbx
  e1025e:	48 09 f0             	or     rax,rsi
  e10261:	48 c1 e8 20          	shr    rax,0x20
  e10265:	48 89 b4 24 c8 00 00 	mov    QWORD PTR [rsp+0xc8],rsi
  e1026c:	00 
  e1026d:	0f 84 f2 43 00 00    	je     e14665 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x45e5>
  e10273:	48 89 d8             	mov    rax,rbx
  e10276:	31 d2                	xor    edx,edx
  e10278:	48 f7 f6             	div    rsi
  e1027b:	e9 eb 43 00 00       	jmp    e1466b <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x45eb>
  e10280:	4c 8b 67 58          	mov    r12,QWORD PTR [rdi+0x58]
  e10284:	48 8b 4f 10          	mov    rcx,QWORD PTR [rdi+0x10]
  e10288:	4c 8b 7f 20          	mov    r15,QWORD PTR [rdi+0x20]
  e1028c:	48 8b 77 60          	mov    rsi,QWORD PTR [rdi+0x60]
  e10290:	48 8b 47 28          	mov    rax,QWORD PTR [rdi+0x28]
  e10294:	48 89 44 24 50       	mov    QWORD PTR [rsp+0x50],rax
  e10299:	48 8b 47 30          	mov    rax,QWORD PTR [rdi+0x30]
  e1029d:	48 8b 57 40          	mov    rdx,QWORD PTR [rdi+0x40]
  e102a1:	48 89 4c 24 30       	mov    QWORD PTR [rsp+0x30],rcx
  e102a6:	48 01 ca             	add    rdx,rcx
  e102a9:	48 89 94 24 e8 00 00 	mov    QWORD PTR [rsp+0xe8],rdx
  e102b0:	00 
  e102b1:	4c 8b 6f 78          	mov    r13,QWORD PTR [rdi+0x78]
  e102b5:	49 c1 e5 04          	shl    r13,0x4
  e102b9:	4c 03 ac 24 98 00 00 	add    r13,QWORD PTR [rsp+0x98]
  e102c0:	00 
  e102c1:	48 8b 8f 80 00 00 00 	mov    rcx,QWORD PTR [rdi+0x80]
  e102c8:	48 c1 e1 04          	shl    rcx,0x4
  e102cc:	4c 01 e9             	add    rcx,r13
  e102cf:	48 89 4c 24 60       	mov    QWORD PTR [rsp+0x60],rcx
  e102d4:	f2 0f 10 05 f4 45 26 	movsd  xmm0,QWORD PTR [rip+0xffffffffff2645f4]        # 748d0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1d80>
  e102db:	ff 
  e102dc:	0f 16 c0             	movlhps xmm0,xmm0
  e102df:	0f 29 44 24 10       	movaps XMMWORD PTR [rsp+0x10],xmm0
  e102e4:	0f b6 8f 98 00 00 00 	movzx  ecx,BYTE PTR [rdi+0x98]
  e102eb:	0f b6 97 99 00 00 00 	movzx  edx,BYTE PTR [rdi+0x99]
  e102f2:	88 8c 24 d8 00 00 00 	mov    BYTE PTR [rsp+0xd8],cl
  e102f9:	20 ca                	and    dl,cl
  e102fb:	88 94 24 88 00 00 00 	mov    BYTE PTR [rsp+0x88],dl
  e10302:	48 89 f1             	mov    rcx,rsi
  e10305:	48 d1 e9             	shr    rcx,1
  e10308:	48 89 34 24          	mov    QWORD PTR [rsp],rsi
  e1030c:	48 29 ce             	sub    rsi,rcx
  e1030f:	4c 89 64 24 08       	mov    QWORD PTR [rsp+0x8],r12
  e10314:	4c 89 6c 24 58       	mov    QWORD PTR [rsp+0x58],r13
  e10319:	0f 84 01 1e 00 00    	je     e12120 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x20a0>
  e1031f:	48 8b 4c 24 30       	mov    rcx,QWORD PTR [rsp+0x30]
  e10324:	48 8d 14 01          	lea    rdx,[rcx+rax*1]
  e10328:	48 89 94 24 20 01 00 	mov    QWORD PTR [rsp+0x120],rdx
  e1032f:	00 
  e10330:	4c 89 e2             	mov    rdx,r12
  e10333:	48 d1 ea             	shr    rdx,1
  e10336:	4d 89 e0             	mov    r8,r12
  e10339:	49 29 d0             	sub    r8,rdx
  e1033c:	4c 89 84 24 b0 00 00 	mov    QWORD PTR [rsp+0xb0],r8
  e10343:	00 
  e10344:	48 8b 7f 70          	mov    rdi,QWORD PTR [rdi+0x70]
  e10348:	f3 4c 0f bc c7       	tzcnt  r8,rdi
  e1034d:	4c 89 44 24 48       	mov    QWORD PTR [rsp+0x48],r8
  e10352:	49 b8 ff ff ff ff ff 	movabs r8,0x7ffffffffffffff
  e10359:	ff ff 07 
  e1035c:	48 89 bc 24 30 01 00 	mov    QWORD PTR [rsp+0x130],rdi
  e10363:	00 
  e10364:	49 01 f8             	add    r8,rdi
  e10367:	4c 89 44 24 68       	mov    QWORD PTR [rsp+0x68],r8
  e1036c:	48 8d 79 20          	lea    rdi,[rcx+0x20]
  e10370:	48 89 bc 24 c8 00 00 	mov    QWORD PTR [rsp+0xc8],rdi
  e10377:	00 
  e10378:	49 8d 7f ff          	lea    rdi,[r15-0x1]
  e1037c:	48 89 bc 24 28 01 00 	mov    QWORD PTR [rsp+0x128],rdi
  e10383:	00 
  e10384:	48 01 c8             	add    rax,rcx
  e10387:	48 83 c0 10          	add    rax,0x10
  e1038b:	48 89 84 24 a8 00 00 	mov    QWORD PTR [rsp+0xa8],rax
  e10392:	00 
  e10393:	4c 89 e0             	mov    rax,r12
  e10396:	48 c1 e0 05          	shl    rax,0x5
  e1039a:	48 89 84 24 58 01 00 	mov    QWORD PTR [rsp+0x158],rax
  e103a1:	00 
  e103a2:	4c 89 e0             	mov    rax,r12
  e103a5:	48 c1 e0 04          	shl    rax,0x4
  e103a9:	48 89 44 24 20       	mov    QWORD PTR [rsp+0x20],rax
  e103ae:	4c 29 e2             	sub    rdx,r12
  e103b1:	48 89 94 24 50 01 00 	mov    QWORD PTR [rsp+0x150],rdx
  e103b8:	00 
  e103b9:	48 8b 84 24 98 00 00 	mov    rax,QWORD PTR [rsp+0x98]
  e103c0:	00 
  e103c1:	48 8d 48 20          	lea    rcx,[rax+0x20]
  e103c5:	48 89 8c 24 d0 00 00 	mov    QWORD PTR [rsp+0xd0],rcx
  e103cc:	00 
  e103cd:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e103d1:	48 89 ca             	mov    rdx,rcx
  e103d4:	48 c1 e2 05          	shl    rdx,0x5
  e103d8:	48 89 94 24 f8 00 00 	mov    QWORD PTR [rsp+0xf8],rdx
  e103df:	00 
  e103e0:	45 31 db             	xor    r11d,r11d
  e103e3:	48 89 84 24 a0 00 00 	mov    QWORD PTR [rsp+0xa0],rax
  e103ea:	00 
  e103eb:	48 89 ca             	mov    rdx,rcx
  e103ee:	4c 89 bc 24 38 01 00 	mov    QWORD PTR [rsp+0x138],r15
  e103f5:	00 
  e103f6:	eb 56                	jmp    e1044e <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3ce>
  e103f8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  e103ff:	00 
  e10400:	49 83 c3 02          	add    r11,0x2
  e10404:	48 8b b4 24 40 01 00 	mov    rsi,QWORD PTR [rsp+0x140]
  e1040b:	00 
  e1040c:	48 ff ce             	dec    rsi
  e1040f:	48 8b 84 24 58 01 00 	mov    rax,QWORD PTR [rsp+0x158]
  e10416:	00 
  e10417:	48 01 84 24 a8 00 00 	add    QWORD PTR [rsp+0xa8],rax
  e1041e:	00 
  e1041f:	48 01 84 24 a0 00 00 	add    QWORD PTR [rsp+0xa0],rax
  e10426:	00 
  e10427:	48 83 84 24 d0 00 00 	add    QWORD PTR [rsp+0xd0],0x40
  e1042e:	00 40 
  e10430:	48 85 f6             	test   rsi,rsi
  e10433:	4c 8b 6c 24 58       	mov    r13,QWORD PTR [rsp+0x58]
  e10438:	4c 8b bc 24 38 01 00 	mov    r15,QWORD PTR [rsp+0x138]
  e1043f:	00 
  e10440:	48 8b 94 24 f0 00 00 	mov    rdx,QWORD PTR [rsp+0xf0]
  e10447:	00 
  e10448:	0f 84 d2 1c 00 00    	je     e12120 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x20a0>
  e1044e:	48 83 ea 02          	sub    rdx,0x2
  e10452:	b8 02 00 00 00       	mov    eax,0x2
  e10457:	48 83 d8 00          	sbb    rax,0x0
  e1045b:	48 89 84 24 e0 00 00 	mov    QWORD PTR [rsp+0xe0],rax
  e10462:	00 
  e10463:	48 8b 04 24          	mov    rax,QWORD PTR [rsp]
  e10467:	4c 29 d8             	sub    rax,r11
  e1046a:	48 83 f8 02          	cmp    rax,0x2
  e1046e:	41 b8 02 00 00 00    	mov    r8d,0x2
  e10474:	4c 0f 42 c0          	cmovb  r8,rax
  e10478:	4c 89 5c 24 40       	mov    QWORD PTR [rsp+0x40],r11
  e1047d:	4c 89 df             	mov    rdi,r11
  e10480:	48 c1 e7 04          	shl    rdi,0x4
  e10484:	48 03 bc 24 48 01 00 	add    rdi,QWORD PTR [rsp+0x148]
  e1048b:	00 
  e1048c:	48 83 f8 01          	cmp    rax,0x1
  e10490:	48 89 b4 24 40 01 00 	mov    QWORD PTR [rsp+0x140],rsi
  e10497:	00 
  e10498:	48 89 94 24 f0 00 00 	mov    QWORD PTR [rsp+0xf0],rdx
  e1049f:	00 
  e104a0:	76 5e                	jbe    e10500 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x480>
  e104a2:	4d 85 ff             	test   r15,r15
  e104a5:	0f 84 23 55 00 00    	je     e159ce <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x594e>
  e104ab:	48 8b 44 24 30       	mov    rax,QWORD PTR [rsp+0x30]
  e104b0:	48 8b 00             	mov    rax,QWORD PTR [rax]
  e104b3:	48 83 c0 fe          	add    rax,0xfffffffffffffffe
  e104b7:	48 83 f8 0d          	cmp    rax,0xd
  e104bb:	0f 87 d1 54 00 00    	ja     e15992 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5912>
  e104c1:	48 8d 0d 7c 38 29 ff 	lea    rcx,[rip+0xffffffffff29387c]        # a3d44 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x311f4>
  e104c8:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  e104cc:	48 01 c8             	add    rax,rcx
  e104cf:	ff e0                	jmp    rax
  e104d1:	4c 89 ee             	mov    rsi,r13
  e104d4:	4c 89 e2             	mov    rdx,r12
  e104d7:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e104db:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e104e0:	e8 1b 7f fd ff       	call   de8400 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e104e5:	49 83 ff 02          	cmp    r15,0x2
  e104e9:	0f 83 a1 03 00 00    	jae    e10890 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x810>
  e104ef:	e9 0c 08 00 00       	jmp    e10d00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xc80>
  e104f4:	66 66 66 2e 0f 1f 84 	data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  e104fb:	00 00 00 00 00 
  e10500:	4d 85 ff             	test   r15,r15
  e10503:	0f 84 c5 54 00 00    	je     e159ce <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x594e>
  e10509:	48 8b 44 24 30       	mov    rax,QWORD PTR [rsp+0x30]
  e1050e:	48 8b 00             	mov    rax,QWORD PTR [rax]
  e10511:	48 83 c0 fe          	add    rax,0xfffffffffffffffe
  e10515:	48 83 f8 0d          	cmp    rax,0xd
  e10519:	0f 87 73 54 00 00    	ja     e15992 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5912>
  e1051f:	48 8d 0d aa 37 29 ff 	lea    rcx,[rip+0xffffffffff2937aa]        # a3cd0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x31180>
  e10526:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  e1052a:	48 01 c8             	add    rax,rcx
  e1052d:	ff e0                	jmp    rax
  e1052f:	4c 89 ee             	mov    rsi,r13
  e10532:	4c 89 e2             	mov    rdx,r12
  e10535:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e10539:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e1053e:	e8 7d 5e fe ff       	call   df63c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e10543:	49 83 ff 02          	cmp    r15,0x2
  e10547:	0f 83 73 05 00 00    	jae    e10ac0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xa40>
  e1054d:	e9 ae 07 00 00       	jmp    e10d00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xc80>
  e10552:	4c 89 ee             	mov    rsi,r13
  e10555:	4c 89 e2             	mov    rdx,r12
  e10558:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e1055c:	e8 df 7c fe ff       	call   df8240 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e10561:	49 83 ff 02          	cmp    r15,0x2
  e10565:	0f 83 25 03 00 00    	jae    e10890 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x810>
  e1056b:	e9 90 07 00 00       	jmp    e10d00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xc80>
  e10570:	4c 89 ee             	mov    rsi,r13
  e10573:	4c 89 e2             	mov    rdx,r12
  e10576:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e1057a:	e8 01 8f fd ff       	call   de9480 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e1057f:	49 83 ff 02          	cmp    r15,0x2
  e10583:	0f 83 37 05 00 00    	jae    e10ac0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xa40>
  e10589:	e9 72 07 00 00       	jmp    e10d00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xc80>
  e1058e:	4c 89 ee             	mov    rsi,r13
  e10591:	4c 89 e2             	mov    rdx,r12
  e10594:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e10598:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e1059d:	e8 de 11 fe ff       	call   df1780 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e105a2:	49 83 ff 02          	cmp    r15,0x2
  e105a6:	0f 83 e4 02 00 00    	jae    e10890 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x810>
  e105ac:	e9 4f 07 00 00       	jmp    e10d00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xc80>
  e105b1:	4c 89 ee             	mov    rsi,r13
  e105b4:	4c 89 e2             	mov    rdx,r12
  e105b7:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e105bb:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e105c0:	e8 7b 3c fe ff       	call   df4240 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e105c5:	49 83 ff 02          	cmp    r15,0x2
  e105c9:	0f 83 f1 04 00 00    	jae    e10ac0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xa40>
  e105cf:	e9 2c 07 00 00       	jmp    e10d00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xc80>
  e105d4:	4c 89 ee             	mov    rsi,r13
  e105d7:	4c 89 e2             	mov    rdx,r12
  e105da:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e105de:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e105e3:	e8 d8 8f fe ff       	call   df95c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e105e8:	49 83 ff 02          	cmp    r15,0x2
  e105ec:	0f 83 9e 02 00 00    	jae    e10890 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x810>
  e105f2:	e9 09 07 00 00       	jmp    e10d00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xc80>
  e105f7:	4c 89 ee             	mov    rsi,r13
  e105fa:	4c 89 e2             	mov    rdx,r12
  e105fd:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e10601:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e10606:	e8 75 36 fd ff       	call   de3c80 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e1060b:	49 83 ff 02          	cmp    r15,0x2
  e1060f:	0f 83 ab 04 00 00    	jae    e10ac0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xa40>
  e10615:	e9 e6 06 00 00       	jmp    e10d00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xc80>
  e1061a:	4c 89 ee             	mov    rsi,r13
  e1061d:	4c 89 e2             	mov    rdx,r12
  e10620:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e10624:	e8 17 80 fd ff       	call   de8640 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e10629:	49 83 ff 02          	cmp    r15,0x2
  e1062d:	0f 83 5d 02 00 00    	jae    e10890 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x810>
  e10633:	e9 c8 06 00 00       	jmp    e10d00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xc80>
  e10638:	4c 89 ee             	mov    rsi,r13
  e1063b:	4c 89 e2             	mov    rdx,r12
  e1063e:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e10642:	e8 b9 6f ff ff       	call   e07600 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e10647:	49 83 ff 02          	cmp    r15,0x2
  e1064b:	0f 83 6f 04 00 00    	jae    e10ac0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xa40>
  e10651:	e9 aa 06 00 00       	jmp    e10d00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xc80>
  e10656:	4c 89 ee             	mov    rsi,r13
  e10659:	4c 89 e2             	mov    rdx,r12
  e1065c:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e10660:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e10665:	e8 96 46 fe ff       	call   df4d00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e1066a:	49 83 ff 02          	cmp    r15,0x2
  e1066e:	0f 83 1c 02 00 00    	jae    e10890 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x810>
  e10674:	e9 87 06 00 00       	jmp    e10d00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xc80>
  e10679:	4c 89 ee             	mov    rsi,r13
  e1067c:	4c 89 e2             	mov    rdx,r12
  e1067f:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e10683:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e10688:	e8 f3 36 fe ff       	call   df3d80 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e1068d:	49 83 ff 02          	cmp    r15,0x2
  e10691:	0f 83 29 04 00 00    	jae    e10ac0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xa40>
  e10697:	e9 64 06 00 00       	jmp    e10d00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xc80>
  e1069c:	4c 89 ee             	mov    rsi,r13
  e1069f:	4c 89 e2             	mov    rdx,r12
  e106a2:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e106a6:	e8 55 bd fe ff       	call   dfc400 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e106ab:	49 83 ff 02          	cmp    r15,0x2
  e106af:	0f 83 db 01 00 00    	jae    e10890 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x810>
  e106b5:	e9 46 06 00 00       	jmp    e10d00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xc80>
  e106ba:	4c 89 ee             	mov    rsi,r13
  e106bd:	4c 89 e2             	mov    rdx,r12
  e106c0:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e106c4:	e8 b7 9f ff ff       	call   e0a680 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e106c9:	49 83 ff 02          	cmp    r15,0x2
  e106cd:	0f 83 ed 03 00 00    	jae    e10ac0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xa40>
  e106d3:	e9 28 06 00 00       	jmp    e10d00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xc80>
  e106d8:	4c 89 ee             	mov    rsi,r13
  e106db:	4c 89 e2             	mov    rdx,r12
  e106de:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e106e2:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e106e7:	e8 14 db ff ff       	call   e0e200 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e106ec:	49 83 ff 02          	cmp    r15,0x2
  e106f0:	0f 83 9a 01 00 00    	jae    e10890 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x810>
  e106f6:	e9 05 06 00 00       	jmp    e10d00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xc80>
  e106fb:	4c 89 ee             	mov    rsi,r13
  e106fe:	4c 89 e2             	mov    rdx,r12
  e10701:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e10705:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e1070a:	e8 71 6d fe ff       	call   df7480 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e1070f:	49 83 ff 02          	cmp    r15,0x2
  e10713:	0f 83 a7 03 00 00    	jae    e10ac0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xa40>
  e10719:	e9 e2 05 00 00       	jmp    e10d00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xc80>
  e1071e:	4c 89 ee             	mov    rsi,r13
  e10721:	4c 89 e2             	mov    rdx,r12
  e10724:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e10728:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e1072d:	e8 8e 7d fd ff       	call   de84c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e10732:	49 83 ff 02          	cmp    r15,0x2
  e10736:	0f 83 54 01 00 00    	jae    e10890 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x810>
  e1073c:	e9 bf 05 00 00       	jmp    e10d00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xc80>
  e10741:	4c 89 ee             	mov    rsi,r13
  e10744:	4c 89 e2             	mov    rdx,r12
  e10747:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e1074b:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e10750:	e8 2b 9b ff ff       	call   e0a280 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e10755:	49 83 ff 02          	cmp    r15,0x2
  e10759:	0f 83 61 03 00 00    	jae    e10ac0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xa40>
  e1075f:	e9 9c 05 00 00       	jmp    e10d00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xc80>
  e10764:	4c 89 ee             	mov    rsi,r13
  e10767:	4c 89 e2             	mov    rdx,r12
  e1076a:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e1076e:	e8 cd 33 ff ff       	call   e03b40 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e10773:	49 83 ff 02          	cmp    r15,0x2
  e10777:	0f 83 13 01 00 00    	jae    e10890 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x810>
  e1077d:	e9 7e 05 00 00       	jmp    e10d00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xc80>
  e10782:	4c 89 ee             	mov    rsi,r13
  e10785:	4c 89 e2             	mov    rdx,r12
  e10788:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e1078c:	e8 af 4f fd ff       	call   de5740 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e10791:	49 83 ff 02          	cmp    r15,0x2
  e10795:	0f 83 25 03 00 00    	jae    e10ac0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xa40>
  e1079b:	e9 60 05 00 00       	jmp    e10d00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xc80>
  e107a0:	4c 89 ee             	mov    rsi,r13
  e107a3:	4c 89 e2             	mov    rdx,r12
  e107a6:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e107aa:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e107af:	e8 8c b8 fd ff       	call   dec040 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e107b4:	49 83 ff 02          	cmp    r15,0x2
  e107b8:	0f 83 d2 00 00 00    	jae    e10890 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x810>
  e107be:	e9 3d 05 00 00       	jmp    e10d00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xc80>
  e107c3:	4c 89 ee             	mov    rsi,r13
  e107c6:	4c 89 e2             	mov    rdx,r12
  e107c9:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e107cd:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e107d2:	e8 29 fe fe ff       	call   e00600 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e107d7:	49 83 ff 02          	cmp    r15,0x2
  e107db:	0f 83 df 02 00 00    	jae    e10ac0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xa40>
  e107e1:	e9 1a 05 00 00       	jmp    e10d00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xc80>
  e107e6:	4c 89 ee             	mov    rsi,r13
  e107e9:	4c 89 e2             	mov    rdx,r12
  e107ec:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e107f0:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e107f5:	e8 46 1a fe ff       	call   df2240 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e107fa:	49 83 ff 02          	cmp    r15,0x2
  e107fe:	0f 83 8c 00 00 00    	jae    e10890 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x810>
  e10804:	e9 f7 04 00 00       	jmp    e10d00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xc80>
  e10809:	4c 89 ee             	mov    rsi,r13
  e1080c:	4c 89 e2             	mov    rdx,r12
  e1080f:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e10813:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e10818:	e8 23 29 ff ff       	call   e03140 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e1081d:	49 83 ff 02          	cmp    r15,0x2
  e10821:	0f 83 99 02 00 00    	jae    e10ac0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xa40>
  e10827:	e9 d4 04 00 00       	jmp    e10d00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xc80>
  e1082c:	4c 89 ee             	mov    rsi,r13
  e1082f:	4c 89 e2             	mov    rdx,r12
  e10832:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e10836:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e1083b:	e8 80 9c fe ff       	call   dfa4c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e10840:	49 83 ff 02          	cmp    r15,0x2
  e10844:	73 4a                	jae    e10890 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x810>
  e10846:	e9 b5 04 00 00       	jmp    e10d00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xc80>
  e1084b:	4c 89 ee             	mov    rsi,r13
  e1084e:	4c 89 e2             	mov    rdx,r12
  e10851:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e10855:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e1085a:	e8 a1 17 ff ff       	call   e02000 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e1085f:	49 83 ff 02          	cmp    r15,0x2
  e10863:	0f 83 57 02 00 00    	jae    e10ac0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xa40>
  e10869:	e9 92 04 00 00       	jmp    e10d00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xc80>
  e1086e:	4c 89 ee             	mov    rsi,r13
  e10871:	4c 89 e2             	mov    rdx,r12
  e10874:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e10878:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e1087d:	e8 7e dd fd ff       	call   dee600 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e10882:	49 83 ff 02          	cmp    r15,0x2
  e10886:	0f 82 74 04 00 00    	jb     e10d00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xc80>
  e1088c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  e10890:	48 8b 44 24 30       	mov    rax,QWORD PTR [rsp+0x30]
  e10895:	48 8b 18             	mov    rbx,QWORD PTR [rax]
  e10898:	48 8b ac 24 28 01 00 	mov    rbp,QWORD PTR [rsp+0x128]
  e1089f:	00 
  e108a0:	4c 8b a4 24 c8 00 00 	mov    r12,QWORD PTR [rsp+0xc8]
  e108a7:	00 
  e108a8:	48 8b 44 24 58       	mov    rax,QWORD PTR [rsp+0x58]
  e108ad:	4c 8b 74 24 60       	mov    r14,QWORD PTR [rsp+0x60]
  e108b2:	eb 40                	jmp    e108f4 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x874>
  e108b4:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e108b9:	0f 29 84 24 60 01 00 	movaps XMMWORD PTR [rsp+0x160],xmm0
  e108c0:	00 
  e108c1:	4c 89 f7             	mov    rdi,r14
  e108c4:	4c 89 ee             	mov    rsi,r13
  e108c7:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e108cc:	48 89 d9             	mov    rcx,rbx
  e108cf:	4c 8d 8c 24 60 01 00 	lea    r9,[rsp+0x160]
  e108d6:	00 
  e108d7:	e8 64 b1 f3 ff       	call   d4ba40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e108dc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  e108e0:	49 0f af df          	imul   rbx,r15
  e108e4:	49 83 c4 18          	add    r12,0x18
  e108e8:	4c 89 e8             	mov    rax,r13
  e108eb:	48 ff cd             	dec    rbp
  e108ee:	0f 84 0c 04 00 00    	je     e10d00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xc80>
  e108f4:	4d 89 f5             	mov    r13,r14
  e108f7:	49 89 c6             	mov    r14,rax
  e108fa:	4d 8b 7c 24 f8       	mov    r15,QWORD PTR [r12-0x8]
  e108ff:	4d 8b 04 24          	mov    r8,QWORD PTR [r12]
  e10903:	4c 03 44 24 30       	add    r8,QWORD PTR [rsp+0x30]
  e10908:	4c 89 bc 24 00 01 00 	mov    QWORD PTR [rsp+0x100],r15
  e1090f:	00 
  e10910:	49 8d 47 fe          	lea    rax,[r15-0x2]
  e10914:	48 83 f8 0e          	cmp    rax,0xe
  e10918:	0f 87 0a 50 00 00    	ja     e15928 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x58a8>
  e1091e:	48 8d 0d 57 34 29 ff 	lea    rcx,[rip+0xffffffffff293457]        # a3d7c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x3122c>
  e10925:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  e10929:	48 01 c8             	add    rax,rcx
  e1092c:	ff e0                	jmp    rax
  e1092e:	4c 89 f7             	mov    rdi,r14
  e10931:	4c 89 ee             	mov    rsi,r13
  e10934:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e10939:	48 89 d9             	mov    rcx,rbx
  e1093c:	e8 3f 19 f3 ff       	call   d42280 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e10941:	eb 9d                	jmp    e108e0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x860>
  e10943:	4c 89 f7             	mov    rdi,r14
  e10946:	4c 89 ee             	mov    rsi,r13
  e10949:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e1094e:	48 89 d9             	mov    rcx,rbx
  e10951:	e8 ea 6d f3 ff       	call   d47740 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e10956:	eb 88                	jmp    e108e0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x860>
  e10958:	4c 89 f7             	mov    rdi,r14
  e1095b:	4c 89 ee             	mov    rsi,r13
  e1095e:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e10963:	48 89 d9             	mov    rcx,rbx
  e10966:	e8 55 23 f3 ff       	call   d42cc0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e1096b:	e9 70 ff ff ff       	jmp    e108e0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x860>
  e10970:	4c 89 f7             	mov    rdi,r14
  e10973:	4c 89 ee             	mov    rsi,r13
  e10976:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e1097b:	48 89 d9             	mov    rcx,rbx
  e1097e:	e8 7d 86 f3 ff       	call   d49000 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e10983:	e9 58 ff ff ff       	jmp    e108e0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x860>
  e10988:	4c 89 f7             	mov    rdi,r14
  e1098b:	4c 89 ee             	mov    rsi,r13
  e1098e:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e10993:	48 89 d9             	mov    rcx,rbx
  e10996:	e8 e5 4c f3 ff       	call   d45680 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e1099b:	e9 40 ff ff ff       	jmp    e108e0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x860>
  e109a0:	4c 89 f7             	mov    rdi,r14
  e109a3:	4c 89 ee             	mov    rsi,r13
  e109a6:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e109ab:	48 89 d9             	mov    rcx,rbx
  e109ae:	e8 8d 1c f3 ff       	call   d42640 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e109b3:	e9 28 ff ff ff       	jmp    e108e0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x860>
  e109b8:	4c 89 f7             	mov    rdi,r14
  e109bb:	4c 89 ee             	mov    rsi,r13
  e109be:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e109c3:	48 89 d9             	mov    rcx,rbx
  e109c6:	e8 f5 1e f3 ff       	call   d428c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e109cb:	e9 10 ff ff ff       	jmp    e108e0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x860>
  e109d0:	4c 89 f7             	mov    rdi,r14
  e109d3:	4c 89 ee             	mov    rsi,r13
  e109d6:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e109db:	48 89 d9             	mov    rcx,rbx
  e109de:	e8 1d 36 f3 ff       	call   d44000 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e109e3:	e9 f8 fe ff ff       	jmp    e108e0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x860>
  e109e8:	4c 89 f7             	mov    rdi,r14
  e109eb:	4c 89 ee             	mov    rsi,r13
  e109ee:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e109f3:	48 89 d9             	mov    rcx,rbx
  e109f6:	e8 05 1a f3 ff       	call   d42400 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e109fb:	e9 e0 fe ff ff       	jmp    e108e0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x860>
  e10a00:	4c 89 f7             	mov    rdi,r14
  e10a03:	4c 89 ee             	mov    rsi,r13
  e10a06:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e10a0b:	48 89 d9             	mov    rcx,rbx
  e10a0e:	e8 6d 27 f3 ff       	call   d43180 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e10a13:	e9 c8 fe ff ff       	jmp    e108e0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x860>
  e10a18:	4c 89 f7             	mov    rdi,r14
  e10a1b:	4c 89 ee             	mov    rsi,r13
  e10a1e:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e10a23:	48 89 d9             	mov    rcx,rbx
  e10a26:	e8 95 9a f3 ff       	call   d4a4c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e10a2b:	e9 b0 fe ff ff       	jmp    e108e0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x860>
  e10a30:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e10a35:	0f 29 84 24 60 01 00 	movaps XMMWORD PTR [rsp+0x160],xmm0
  e10a3c:	00 
  e10a3d:	4c 89 f7             	mov    rdi,r14
  e10a40:	4c 89 ee             	mov    rsi,r13
  e10a43:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e10a48:	48 89 d9             	mov    rcx,rbx
  e10a4b:	4c 8d 8c 24 60 01 00 	lea    r9,[rsp+0x160]
  e10a52:	00 
  e10a53:	e8 a8 2e f3 ff       	call   d43900 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e10a58:	e9 83 fe ff ff       	jmp    e108e0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x860>
  e10a5d:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e10a62:	0f 29 84 24 60 01 00 	movaps XMMWORD PTR [rsp+0x160],xmm0
  e10a69:	00 
  e10a6a:	4c 89 f7             	mov    rdi,r14
  e10a6d:	4c 89 ee             	mov    rsi,r13
  e10a70:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e10a75:	48 89 d9             	mov    rcx,rbx
  e10a78:	4c 8d 8c 24 60 01 00 	lea    r9,[rsp+0x160]
  e10a7f:	00 
  e10a80:	e8 bb 5e f3 ff       	call   d46940 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e10a85:	e9 56 fe ff ff       	jmp    e108e0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x860>
  e10a8a:	4c 89 f7             	mov    rdi,r14
  e10a8d:	4c 89 ee             	mov    rsi,r13
  e10a90:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e10a95:	48 89 d9             	mov    rcx,rbx
  e10a98:	e8 e3 3f f3 ff       	call   d44a80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e10a9d:	e9 3e fe ff ff       	jmp    e108e0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x860>
  e10aa2:	4c 89 ee             	mov    rsi,r13
  e10aa5:	4c 89 e2             	mov    rdx,r12
  e10aa8:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e10aac:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e10ab1:	e8 4a 36 ff ff       	call   e04100 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e10ab6:	49 83 ff 02          	cmp    r15,0x2
  e10aba:	0f 82 40 02 00 00    	jb     e10d00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xc80>
  e10ac0:	48 8b 44 24 30       	mov    rax,QWORD PTR [rsp+0x30]
  e10ac5:	48 8b 18             	mov    rbx,QWORD PTR [rax]
  e10ac8:	48 8b ac 24 28 01 00 	mov    rbp,QWORD PTR [rsp+0x128]
  e10acf:	00 
  e10ad0:	4c 8b a4 24 c8 00 00 	mov    r12,QWORD PTR [rsp+0xc8]
  e10ad7:	00 
  e10ad8:	48 8b 44 24 58       	mov    rax,QWORD PTR [rsp+0x58]
  e10add:	4c 8b 74 24 60       	mov    r14,QWORD PTR [rsp+0x60]
  e10ae2:	eb 40                	jmp    e10b24 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xaa4>
  e10ae4:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e10ae9:	0f 29 84 24 60 01 00 	movaps XMMWORD PTR [rsp+0x160],xmm0
  e10af0:	00 
  e10af1:	49 89 d6             	mov    r14,rdx
  e10af4:	48 89 d7             	mov    rdi,rdx
  e10af7:	4c 89 ee             	mov    rsi,r13
  e10afa:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e10aff:	48 89 d9             	mov    rcx,rbx
  e10b02:	4c 8d 8c 24 60 01 00 	lea    r9,[rsp+0x160]
  e10b09:	00 
  e10b0a:	e8 31 af f3 ff       	call   d4ba40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e10b0f:	90                   	nop
  e10b10:	49 0f af df          	imul   rbx,r15
  e10b14:	49 83 c4 18          	add    r12,0x18
  e10b18:	4c 89 e8             	mov    rax,r13
  e10b1b:	48 ff cd             	dec    rbp
  e10b1e:	0f 84 dc 01 00 00    	je     e10d00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xc80>
  e10b24:	48 89 c2             	mov    rdx,rax
  e10b27:	4d 8b 7c 24 f8       	mov    r15,QWORD PTR [r12-0x8]
  e10b2c:	4d 8b 04 24          	mov    r8,QWORD PTR [r12]
  e10b30:	4c 03 44 24 30       	add    r8,QWORD PTR [rsp+0x30]
  e10b35:	4c 89 bc 24 00 01 00 	mov    QWORD PTR [rsp+0x100],r15
  e10b3c:	00 
  e10b3d:	49 8d 47 fe          	lea    rax,[r15-0x2]
  e10b41:	48 83 f8 0e          	cmp    rax,0xe
  e10b45:	0f 87 dd 4d 00 00    	ja     e15928 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x58a8>
  e10b4b:	4d 89 f5             	mov    r13,r14
  e10b4e:	48 8d 0d b3 31 29 ff 	lea    rcx,[rip+0xffffffffff2931b3]        # a3d08 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x311b8>
  e10b55:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  e10b59:	48 01 c8             	add    rax,rcx
  e10b5c:	ff e0                	jmp    rax
  e10b5e:	49 89 d6             	mov    r14,rdx
  e10b61:	48 89 d7             	mov    rdi,rdx
  e10b64:	4c 89 ee             	mov    rsi,r13
  e10b67:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e10b6c:	48 89 d9             	mov    rcx,rbx
  e10b6f:	e8 0c 17 f3 ff       	call   d42280 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e10b74:	eb 9a                	jmp    e10b10 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xa90>
  e10b76:	49 89 d6             	mov    r14,rdx
  e10b79:	48 89 d7             	mov    rdi,rdx
  e10b7c:	4c 89 ee             	mov    rsi,r13
  e10b7f:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e10b84:	48 89 d9             	mov    rcx,rbx
  e10b87:	e8 b4 6b f3 ff       	call   d47740 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e10b8c:	eb 82                	jmp    e10b10 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xa90>
  e10b8e:	49 89 d6             	mov    r14,rdx
  e10b91:	48 89 d7             	mov    rdi,rdx
  e10b94:	4c 89 ee             	mov    rsi,r13
  e10b97:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e10b9c:	48 89 d9             	mov    rcx,rbx
  e10b9f:	e8 1c 21 f3 ff       	call   d42cc0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e10ba4:	e9 67 ff ff ff       	jmp    e10b10 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xa90>
  e10ba9:	49 89 d6             	mov    r14,rdx
  e10bac:	48 89 d7             	mov    rdi,rdx
  e10baf:	4c 89 ee             	mov    rsi,r13
  e10bb2:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e10bb7:	48 89 d9             	mov    rcx,rbx
  e10bba:	e8 41 84 f3 ff       	call   d49000 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e10bbf:	e9 4c ff ff ff       	jmp    e10b10 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xa90>
  e10bc4:	49 89 d6             	mov    r14,rdx
  e10bc7:	48 89 d7             	mov    rdi,rdx
  e10bca:	4c 89 ee             	mov    rsi,r13
  e10bcd:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e10bd2:	48 89 d9             	mov    rcx,rbx
  e10bd5:	e8 a6 4a f3 ff       	call   d45680 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e10bda:	e9 31 ff ff ff       	jmp    e10b10 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xa90>
  e10bdf:	49 89 d6             	mov    r14,rdx
  e10be2:	48 89 d7             	mov    rdi,rdx
  e10be5:	4c 89 ee             	mov    rsi,r13
  e10be8:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e10bed:	48 89 d9             	mov    rcx,rbx
  e10bf0:	e8 4b 1a f3 ff       	call   d42640 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e10bf5:	e9 16 ff ff ff       	jmp    e10b10 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xa90>
  e10bfa:	49 89 d6             	mov    r14,rdx
  e10bfd:	48 89 d7             	mov    rdi,rdx
  e10c00:	4c 89 ee             	mov    rsi,r13
  e10c03:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e10c08:	48 89 d9             	mov    rcx,rbx
  e10c0b:	e8 b0 1c f3 ff       	call   d428c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e10c10:	e9 fb fe ff ff       	jmp    e10b10 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xa90>
  e10c15:	49 89 d6             	mov    r14,rdx
  e10c18:	48 89 d7             	mov    rdi,rdx
  e10c1b:	4c 89 ee             	mov    rsi,r13
  e10c1e:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e10c23:	48 89 d9             	mov    rcx,rbx
  e10c26:	e8 d5 33 f3 ff       	call   d44000 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e10c2b:	e9 e0 fe ff ff       	jmp    e10b10 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xa90>
  e10c30:	49 89 d6             	mov    r14,rdx
  e10c33:	48 89 d7             	mov    rdi,rdx
  e10c36:	4c 89 ee             	mov    rsi,r13
  e10c39:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e10c3e:	48 89 d9             	mov    rcx,rbx
  e10c41:	e8 ba 17 f3 ff       	call   d42400 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e10c46:	e9 c5 fe ff ff       	jmp    e10b10 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xa90>
  e10c4b:	49 89 d6             	mov    r14,rdx
  e10c4e:	48 89 d7             	mov    rdi,rdx
  e10c51:	4c 89 ee             	mov    rsi,r13
  e10c54:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e10c59:	48 89 d9             	mov    rcx,rbx
  e10c5c:	e8 1f 25 f3 ff       	call   d43180 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e10c61:	e9 aa fe ff ff       	jmp    e10b10 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xa90>
  e10c66:	49 89 d6             	mov    r14,rdx
  e10c69:	48 89 d7             	mov    rdi,rdx
  e10c6c:	4c 89 ee             	mov    rsi,r13
  e10c6f:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e10c74:	48 89 d9             	mov    rcx,rbx
  e10c77:	e8 44 98 f3 ff       	call   d4a4c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e10c7c:	e9 8f fe ff ff       	jmp    e10b10 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xa90>
  e10c81:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e10c86:	0f 29 84 24 60 01 00 	movaps XMMWORD PTR [rsp+0x160],xmm0
  e10c8d:	00 
  e10c8e:	49 89 d6             	mov    r14,rdx
  e10c91:	48 89 d7             	mov    rdi,rdx
  e10c94:	4c 89 ee             	mov    rsi,r13
  e10c97:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e10c9c:	48 89 d9             	mov    rcx,rbx
  e10c9f:	4c 8d 8c 24 60 01 00 	lea    r9,[rsp+0x160]
  e10ca6:	00 
  e10ca7:	e8 54 2c f3 ff       	call   d43900 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e10cac:	e9 5f fe ff ff       	jmp    e10b10 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xa90>
  e10cb1:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e10cb6:	0f 29 84 24 60 01 00 	movaps XMMWORD PTR [rsp+0x160],xmm0
  e10cbd:	00 
  e10cbe:	49 89 d6             	mov    r14,rdx
  e10cc1:	48 89 d7             	mov    rdi,rdx
  e10cc4:	4c 89 ee             	mov    rsi,r13
  e10cc7:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e10ccc:	48 89 d9             	mov    rcx,rbx
  e10ccf:	4c 8d 8c 24 60 01 00 	lea    r9,[rsp+0x160]
  e10cd6:	00 
  e10cd7:	e8 64 5c f3 ff       	call   d46940 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e10cdc:	e9 2f fe ff ff       	jmp    e10b10 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xa90>
  e10ce1:	49 89 d6             	mov    r14,rdx
  e10ce4:	48 89 d7             	mov    rdi,rdx
  e10ce7:	4c 89 ee             	mov    rsi,r13
  e10cea:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e10cef:	48 89 d9             	mov    rcx,rbx
  e10cf2:	e8 89 3d f3 ff       	call   d44a80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e10cf7:	e9 14 fe ff ff       	jmp    e10b10 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xa90>
  e10cfc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  e10d00:	80 bc 24 d8 00 00 00 	cmp    BYTE PTR [rsp+0xd8],0x0
  e10d07:	00 
  e10d08:	74 56                	je     e10d60 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xce0>
  e10d0a:	48 8b 8c 24 30 01 00 	mov    rcx,QWORD PTR [rsp+0x130]
  e10d11:	00 
  e10d12:	48 85 c9             	test   rcx,rcx
  e10d15:	4c 8b 5c 24 40       	mov    r11,QWORD PTR [rsp+0x40]
  e10d1a:	4c 8b 64 24 08       	mov    r12,QWORD PTR [rsp+0x8]
  e10d1f:	0f 84 b9 4c 00 00    	je     e159de <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x595e>
  e10d25:	4c 89 e0             	mov    rax,r12
  e10d28:	48 09 c8             	or     rax,rcx
  e10d2b:	48 c1 e8 20          	shr    rax,0x20
  e10d2f:	0f 84 d7 02 00 00    	je     e1100c <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xf8c>
  e10d35:	4c 89 e0             	mov    rax,r12
  e10d38:	31 d2                	xor    edx,edx
  e10d3a:	48 f7 f1             	div    rcx
  e10d3d:	48 83 bc 24 b0 00 00 	cmp    QWORD PTR [rsp+0xb0],0x0
  e10d44:	00 00 
  e10d46:	0f 85 d6 02 00 00    	jne    e11022 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xfa2>
  e10d4c:	e9 af f6 ff ff       	jmp    e10400 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x380>
  e10d51:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  e10d58:	0f 1f 84 00 00 00 00 
  e10d5f:	00 
  e10d60:	48 83 bc 24 b0 00 00 	cmp    QWORD PTR [rsp+0xb0],0x0
  e10d67:	00 00 
  e10d69:	4c 8b 5c 24 40       	mov    r11,QWORD PTR [rsp+0x40]
  e10d6e:	4c 8b 64 24 08       	mov    r12,QWORD PTR [rsp+0x8]
  e10d73:	0f 84 87 f6 ff ff    	je     e10400 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x380>
  e10d79:	49 83 c5 10          	add    r13,0x10
  e10d7d:	48 8b 84 24 a0 00 00 	mov    rax,QWORD PTR [rsp+0xa0]
  e10d84:	00 
  e10d85:	48 89 84 24 b8 00 00 	mov    QWORD PTR [rsp+0xb8],rax
  e10d8c:	00 
  e10d8d:	48 8b ac 24 a8 00 00 	mov    rbp,QWORD PTR [rsp+0xa8]
  e10d94:	00 
  e10d95:	4c 89 e0             	mov    rax,r12
  e10d98:	48 8b 8c 24 b0 00 00 	mov    rcx,QWORD PTR [rsp+0xb0]
  e10d9f:	00 
  e10da0:	31 d2                	xor    edx,edx
  e10da2:	eb 4e                	jmp    e10df2 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xd72>
  e10da4:	66 66 66 2e 0f 1f 84 	data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  e10dab:	00 00 00 00 00 
  e10db0:	48 8b 54 24 38       	mov    rdx,QWORD PTR [rsp+0x38]
  e10db5:	48 83 c2 02          	add    rdx,0x2
  e10db9:	48 8b 8c 24 90 00 00 	mov    rcx,QWORD PTR [rsp+0x90]
  e10dc0:	00 
  e10dc1:	48 ff c9             	dec    rcx
  e10dc4:	48 83 c5 40          	add    rbp,0x40
  e10dc8:	4c 8b 6c 24 28       	mov    r13,QWORD PTR [rsp+0x28]
  e10dcd:	49 83 c5 40          	add    r13,0x40
  e10dd1:	48 83 84 24 b8 00 00 	add    QWORD PTR [rsp+0xb8],0x20
  e10dd8:	00 20 
  e10dda:	48 85 c9             	test   rcx,rcx
  e10ddd:	4c 8b 64 24 08       	mov    r12,QWORD PTR [rsp+0x8]
  e10de2:	4c 8b 5c 24 40       	mov    r11,QWORD PTR [rsp+0x40]
  e10de7:	48 8b 44 24 70       	mov    rax,QWORD PTR [rsp+0x70]
  e10dec:	0f 84 0e f6 ff ff    	je     e10400 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x380>
  e10df2:	48 89 8c 24 90 00 00 	mov    QWORD PTR [rsp+0x90],rcx
  e10df9:	00 
  e10dfa:	48 83 e8 02          	sub    rax,0x2
  e10dfe:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
  e10e03:	b8 02 00 00 00       	mov    eax,0x2
  e10e08:	48 83 d8 00          	sbb    rax,0x0
  e10e0c:	4c 89 e3             	mov    rbx,r12
  e10e0f:	48 29 d3             	sub    rbx,rdx
  e10e12:	48 83 fb 02          	cmp    rbx,0x2
  e10e16:	b9 02 00 00 00       	mov    ecx,0x2
  e10e1b:	48 0f 43 d9          	cmovae rbx,rcx
  e10e1f:	0f 57 c0             	xorps  xmm0,xmm0
  e10e22:	0f 29 84 24 70 02 00 	movaps XMMWORD PTR [rsp+0x270],xmm0
  e10e29:	00 
  e10e2a:	0f 29 84 24 60 02 00 	movaps XMMWORD PTR [rsp+0x260],xmm0
  e10e31:	00 
  e10e32:	0f 29 84 24 10 01 00 	movaps XMMWORD PTR [rsp+0x110],xmm0
  e10e39:	00 
  e10e3a:	0f 29 84 24 00 01 00 	movaps XMMWORD PTR [rsp+0x100],xmm0
  e10e41:	00 
  e10e42:	0f 57 c9             	xorps  xmm1,xmm1
  e10e45:	66 0f 57 db          	xorpd  xmm3,xmm3
  e10e49:	66 0f 57 d2          	xorpd  xmm2,xmm2
  e10e4d:	49 29 d4             	sub    r12,rdx
  e10e50:	0f 84 81 00 00 00    	je     e10ed7 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xe57>
  e10e56:	31 c9                	xor    ecx,ecx
  e10e58:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  e10e5f:	00 
  e10e60:	66 41 0f 10 44 4d f0 	movupd xmm0,XMMWORD PTR [r13+rcx*2-0x10]
  e10e67:	66 41 0f 10 4c 4d 00 	movupd xmm1,XMMWORD PTR [r13+rcx*2+0x0]
  e10e6e:	66 0f 10 54 4d f0    	movupd xmm2,XMMWORD PTR [rbp+rcx*2-0x10]
  e10e74:	66 0f 10 5c 4d 00    	movupd xmm3,XMMWORD PTR [rbp+rcx*2+0x0]
  e10e7a:	66 0f 28 e1          	movapd xmm4,xmm1
  e10e7e:	66 0f 59 e3          	mulpd  xmm4,xmm3
  e10e82:	66 0f 28 e8          	movapd xmm5,xmm0
  e10e86:	66 0f 59 ea          	mulpd  xmm5,xmm2
  e10e8a:	66 0f 5c ec          	subpd  xmm5,xmm4
  e10e8e:	66 0f 29 ac 0c 60 02 	movapd XMMWORD PTR [rsp+rcx*1+0x260],xmm5
  e10e95:	00 00 
  e10e97:	66 0f 59 ca          	mulpd  xmm1,xmm2
  e10e9b:	66 0f 59 c3          	mulpd  xmm0,xmm3
  e10e9f:	66 0f 58 c1          	addpd  xmm0,xmm1
  e10ea3:	66 0f 29 84 0c 00 01 	movapd XMMWORD PTR [rsp+rcx*1+0x100],xmm0
  e10eaa:	00 00 
  e10eac:	48 83 c1 10          	add    rcx,0x10
  e10eb0:	48 ff c8             	dec    rax
  e10eb3:	75 ab                	jne    e10e60 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xde0>
  e10eb5:	66 0f 28 94 24 60 02 	movapd xmm2,XMMWORD PTR [rsp+0x260]
  e10ebc:	00 00 
  e10ebe:	66 0f 28 9c 24 70 02 	movapd xmm3,XMMWORD PTR [rsp+0x270]
  e10ec5:	00 00 
  e10ec7:	0f 28 84 24 00 01 00 	movaps xmm0,XMMWORD PTR [rsp+0x100]
  e10ece:	00 
  e10ecf:	0f 28 8c 24 10 01 00 	movaps xmm1,XMMWORD PTR [rsp+0x110]
  e10ed6:	00 
  e10ed7:	48 89 54 24 38       	mov    QWORD PTR [rsp+0x38],rdx
  e10edc:	4c 89 6c 24 28       	mov    QWORD PTR [rsp+0x28],r13
  e10ee1:	66 0f 28 e2          	movapd xmm4,xmm2
  e10ee5:	66 0f 14 e3          	unpcklpd xmm4,xmm3
  e10ee9:	66 0f 15 d3          	unpckhpd xmm2,xmm3
  e10eed:	66 0f 29 a4 24 60 02 	movapd XMMWORD PTR [rsp+0x260],xmm4
  e10ef4:	00 00 
  e10ef6:	66 0f 29 94 24 70 02 	movapd XMMWORD PTR [rsp+0x270],xmm2
  e10efd:	00 00 
  e10eff:	0f 28 d0             	movaps xmm2,xmm0
  e10f02:	0f 16 d1             	movlhps xmm2,xmm1
  e10f05:	66 0f 15 c1          	unpckhpd xmm0,xmm1
  e10f09:	0f 29 94 24 00 01 00 	movaps XMMWORD PTR [rsp+0x100],xmm2
  e10f10:	00 
  e10f11:	0f 29 84 24 10 01 00 	movaps XMMWORD PTR [rsp+0x110],xmm0
  e10f18:	00 
  e10f19:	4c 39 1c 24          	cmp    QWORD PTR [rsp],r11
  e10f1d:	0f 84 8d fe ff ff    	je     e10db0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xd30>
  e10f23:	48 c1 e3 04          	shl    rbx,0x4
  e10f27:	4c 8b bc 24 b8 00 00 	mov    r15,QWORD PTR [rsp+0xb8]
  e10f2e:	00 
  e10f2f:	4c 8b ac 24 e0 00 00 	mov    r13,QWORD PTR [rsp+0xe0]
  e10f36:	00 
  e10f37:	45 31 f6             	xor    r14d,r14d
  e10f3a:	eb 1f                	jmp    e10f5b <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xedb>
  e10f3c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  e10f40:	41 0f 11 0f          	movups XMMWORD PTR [r15],xmm1
  e10f44:	41 0f 11 47 10       	movups XMMWORD PTR [r15+0x10],xmm0
  e10f49:	49 83 c6 10          	add    r14,0x10
  e10f4d:	4c 03 7c 24 20       	add    r15,QWORD PTR [rsp+0x20]
  e10f52:	49 ff cd             	dec    r13
  e10f55:	0f 84 55 fe ff ff    	je     e10db0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xd30>
  e10f5b:	42 0f 28 84 34 60 02 	movaps xmm0,XMMWORD PTR [rsp+r14*1+0x260]
  e10f62:	00 00 
  e10f64:	42 0f 28 94 34 00 01 	movaps xmm2,XMMWORD PTR [rsp+r14*1+0x100]
  e10f6b:	00 00 
  e10f6d:	0f 28 c8             	movaps xmm1,xmm0
  e10f70:	0f 16 ca             	movlhps xmm1,xmm2
  e10f73:	66 0f 15 c2          	unpckhpd xmm0,xmm2
  e10f77:	49 83 fc 01          	cmp    r12,0x1
  e10f7b:	77 c3                	ja     e10f40 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xec0>
  e10f7d:	48 8d 84 24 80 01 00 	lea    rax,[rsp+0x180]
  e10f84:	00 
  e10f85:	0f 57 d2             	xorps  xmm2,xmm2
  e10f88:	0f 29 90 d0 00 00 00 	movaps XMMWORD PTR [rax+0xd0],xmm2
  e10f8f:	0f 29 90 c0 00 00 00 	movaps XMMWORD PTR [rax+0xc0],xmm2
  e10f96:	0f 29 90 b0 00 00 00 	movaps XMMWORD PTR [rax+0xb0],xmm2
  e10f9d:	0f 29 90 a0 00 00 00 	movaps XMMWORD PTR [rax+0xa0],xmm2
  e10fa4:	0f 29 90 90 00 00 00 	movaps XMMWORD PTR [rax+0x90],xmm2
  e10fab:	0f 29 90 80 00 00 00 	movaps XMMWORD PTR [rax+0x80],xmm2
  e10fb2:	0f 29 50 70          	movaps XMMWORD PTR [rax+0x70],xmm2
  e10fb6:	0f 29 50 60          	movaps XMMWORD PTR [rax+0x60],xmm2
  e10fba:	0f 29 50 50          	movaps XMMWORD PTR [rax+0x50],xmm2
  e10fbe:	0f 29 50 40          	movaps XMMWORD PTR [rax+0x40],xmm2
  e10fc2:	0f 29 50 30          	movaps XMMWORD PTR [rax+0x30],xmm2
  e10fc6:	0f 29 50 20          	movaps XMMWORD PTR [rax+0x20],xmm2
  e10fca:	0f 29 50 10          	movaps XMMWORD PTR [rax+0x10],xmm2
  e10fce:	0f 29 10             	movaps XMMWORD PTR [rax],xmm2
  e10fd1:	0f 29 8c 24 60 01 00 	movaps XMMWORD PTR [rsp+0x160],xmm1
  e10fd8:	00 
  e10fd9:	0f 29 84 24 70 01 00 	movaps XMMWORD PTR [rsp+0x170],xmm0
  e10fe0:	00 
  e10fe1:	4c 89 ff             	mov    rdi,r15
  e10fe4:	48 8d b4 24 60 01 00 	lea    rsi,[rsp+0x160]
  e10feb:	00 
  e10fec:	48 89 da             	mov    rdx,rbx
  e10fef:	ff 15 eb c6 43 00    	call   QWORD PTR [rip+0x43c6eb]        # 124d6e0 <memcpy@GLIBC_2.14>
  e10ff5:	49 83 c6 10          	add    r14,0x10
  e10ff9:	4c 03 7c 24 20       	add    r15,QWORD PTR [rsp+0x20]
  e10ffe:	49 ff cd             	dec    r13
  e11001:	0f 85 54 ff ff ff    	jne    e10f5b <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xedb>
  e11007:	e9 a4 fd ff ff       	jmp    e10db0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xd30>
  e1100c:	44 89 e0             	mov    eax,r12d
  e1100f:	31 d2                	xor    edx,edx
  e11011:	f7 f1                	div    ecx
  e11013:	48 83 bc 24 b0 00 00 	cmp    QWORD PTR [rsp+0xb0],0x0
  e1101a:	00 00 
  e1101c:	0f 84 de f3 ff ff    	je     e10400 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x380>
  e11022:	4b 8d 0c 1b          	lea    rcx,[r11+r11*1]
  e11026:	48 0f af c1          	imul   rax,rcx
  e1102a:	48 0f af 8c 24 30 01 	imul   rcx,QWORD PTR [rsp+0x130]
  e11031:	00 00 
  e11033:	48 8b 94 24 20 01 00 	mov    rdx,QWORD PTR [rsp+0x120]
  e1103a:	00 
  e1103b:	48 8d 04 c2          	lea    rax,[rdx+rax*8]
  e1103f:	48 8b 94 24 e8 00 00 	mov    rdx,QWORD PTR [rsp+0xe8]
  e11046:	00 
  e11047:	48 8d 14 ca          	lea    rdx,[rdx+rcx*8]
  e1104b:	49 83 c5 30          	add    r13,0x30
  e1104f:	48 8b b4 24 d0 00 00 	mov    rsi,QWORD PTR [rsp+0xd0]
  e11056:	00 
  e11057:	48 8b bc 24 50 01 00 	mov    rdi,QWORD PTR [rsp+0x150]
  e1105e:	00 
  e1105f:	45 31 c0             	xor    r8d,r8d
  e11062:	eb 43                	jmp    e110a7 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1027>
  e11064:	66 66 66 2e 0f 1f 84 	data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  e1106b:	00 00 00 00 00 
  e11070:	48 8d 4e e0          	lea    rcx,[rsi-0x20]
  e11074:	4c 8d 4e f0          	lea    r9,[rsi-0x10]
  e11078:	4c 8d 56 10          	lea    r10,[rsi+0x10]
  e1107c:	66 0f 2b 21          	movntpd XMMWORD PTR [rcx],xmm4
  e11080:	66 41 0f 2b 19       	movntpd XMMWORD PTR [r9],xmm3
  e11085:	66 0f 2b 16          	movntpd XMMWORD PTR [rsi],xmm2
  e11089:	66 41 0f 2b 02       	movntpd XMMWORD PTR [r10],xmm0
  e1108e:	48 03 b4 24 f8 00 00 	add    rsi,QWORD PTR [rsp+0xf8]
  e11095:	00 
  e11096:	49 83 c5 40          	add    r13,0x40
  e1109a:	49 83 c0 02          	add    r8,0x2
  e1109e:	48 ff c7             	inc    rdi
  e110a1:	0f 84 59 f3 ff ff    	je     e10400 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x380>
  e110a7:	4d 89 c1             	mov    r9,r8
  e110aa:	48 8b 4c 24 48       	mov    rcx,QWORD PTR [rsp+0x48]
  e110af:	49 d3 e9             	shr    r9,cl
  e110b2:	49 c1 e1 05          	shl    r9,0x5
  e110b6:	66 42 0f 10 04 08    	movupd xmm0,XMMWORD PTR [rax+r9*1]
  e110bc:	66 42 0f 10 54 08 10 	movupd xmm2,XMMWORD PTR [rax+r9*1+0x10]
  e110c3:	4c 89 c1             	mov    rcx,r8
  e110c6:	48 23 4c 24 68       	and    rcx,QWORD PTR [rsp+0x68]
  e110cb:	48 c1 e1 05          	shl    rcx,0x5
  e110cf:	66 0f 10 1c 0a       	movupd xmm3,XMMWORD PTR [rdx+rcx*1]
  e110d4:	66 0f 10 4c 0a 10    	movupd xmm1,XMMWORD PTR [rdx+rcx*1+0x10]
  e110da:	66 0f 10 74 0a 20    	movupd xmm6,XMMWORD PTR [rdx+rcx*1+0x20]
  e110e0:	66 0f 10 64 0a 30    	movupd xmm4,XMMWORD PTR [rdx+rcx*1+0x30]
  e110e6:	66 0f 28 ea          	movapd xmm5,xmm2
  e110ea:	66 0f 59 e9          	mulpd  xmm5,xmm1
  e110ee:	66 44 0f 28 c0       	movapd xmm8,xmm0
  e110f3:	66 44 0f 59 c3       	mulpd  xmm8,xmm3
  e110f8:	66 44 0f 5c c5       	subpd  xmm8,xmm5
  e110fd:	66 0f 59 da          	mulpd  xmm3,xmm2
  e11101:	66 0f 59 c8          	mulpd  xmm1,xmm0
  e11105:	66 0f 58 cb          	addpd  xmm1,xmm3
  e11109:	66 45 0f 10 4d d0    	movupd xmm9,XMMWORD PTR [r13-0x30]
  e1110f:	66 45 0f 10 55 e0    	movupd xmm10,XMMWORD PTR [r13-0x20]
  e11115:	66 41 0f 10 6d f0    	movupd xmm5,XMMWORD PTR [r13-0x10]
  e1111b:	66 41 0f 10 7d 00    	movupd xmm7,XMMWORD PTR [r13+0x0]
  e11121:	66 41 0f 28 d9       	movapd xmm3,xmm9
  e11126:	66 41 0f 59 d8       	mulpd  xmm3,xmm8
  e1112b:	66 45 0f 59 c2       	mulpd  xmm8,xmm10
  e11130:	66 44 0f 59 d1       	mulpd  xmm10,xmm1
  e11135:	66 41 0f 5c da       	subpd  xmm3,xmm10
  e1113a:	66 41 0f 59 c9       	mulpd  xmm1,xmm9
  e1113f:	66 41 0f 58 c8       	addpd  xmm1,xmm8
  e11144:	66 44 0f 28 c2       	movapd xmm8,xmm2
  e11149:	66 44 0f 59 c4       	mulpd  xmm8,xmm4
  e1114e:	66 44 0f 28 c8       	movapd xmm9,xmm0
  e11153:	66 44 0f 59 ce       	mulpd  xmm9,xmm6
  e11158:	66 45 0f 5c c8       	subpd  xmm9,xmm8
  e1115d:	66 0f 59 d6          	mulpd  xmm2,xmm6
  e11161:	66 0f 59 c4          	mulpd  xmm0,xmm4
  e11165:	66 0f 58 c2          	addpd  xmm0,xmm2
  e11169:	66 0f 28 d5          	movapd xmm2,xmm5
  e1116d:	66 41 0f 59 d1       	mulpd  xmm2,xmm9
  e11172:	66 44 0f 59 cf       	mulpd  xmm9,xmm7
  e11177:	66 0f 59 f8          	mulpd  xmm7,xmm0
  e1117b:	66 0f 5c d7          	subpd  xmm2,xmm7
  e1117f:	66 0f 59 c5          	mulpd  xmm0,xmm5
  e11183:	66 41 0f 58 c1       	addpd  xmm0,xmm9
  e11188:	66 0f 28 e3          	movapd xmm4,xmm3
  e1118c:	66 0f 14 e2          	unpcklpd xmm4,xmm2
  e11190:	0f 12 d3             	movhlps xmm2,xmm3
  e11193:	66 0f 28 d9          	movapd xmm3,xmm1
  e11197:	66 0f 14 d8          	unpcklpd xmm3,xmm0
  e1119b:	0f 12 c1             	movhlps xmm0,xmm1
  e1119e:	80 bc 24 88 00 00 00 	cmp    BYTE PTR [rsp+0x88],0x0
  e111a5:	00 
  e111a6:	0f 85 c4 fe ff ff    	jne    e11070 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xff0>
  e111ac:	66 0f 11 66 e0       	movupd XMMWORD PTR [rsi-0x20],xmm4
  e111b1:	66 0f 11 5e f0       	movupd XMMWORD PTR [rsi-0x10],xmm3
  e111b6:	0f 11 16             	movups XMMWORD PTR [rsi],xmm2
  e111b9:	0f 11 46 10          	movups XMMWORD PTR [rsi+0x10],xmm0
  e111bd:	e9 cc fe ff ff       	jmp    e1108e <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x100e>
  e111c2:	4c 8b 67 58          	mov    r12,QWORD PTR [rdi+0x58]
  e111c6:	48 8b 4f 10          	mov    rcx,QWORD PTR [rdi+0x10]
  e111ca:	4c 8b 7f 20          	mov    r15,QWORD PTR [rdi+0x20]
  e111ce:	48 8b 77 60          	mov    rsi,QWORD PTR [rdi+0x60]
  e111d2:	48 8b 47 28          	mov    rax,QWORD PTR [rdi+0x28]
  e111d6:	48 89 44 24 50       	mov    QWORD PTR [rsp+0x50],rax
  e111db:	48 8b 47 30          	mov    rax,QWORD PTR [rdi+0x30]
  e111df:	48 8b 57 40          	mov    rdx,QWORD PTR [rdi+0x40]
  e111e3:	48 89 4c 24 30       	mov    QWORD PTR [rsp+0x30],rcx
  e111e8:	48 01 ca             	add    rdx,rcx
  e111eb:	48 89 94 24 e8 00 00 	mov    QWORD PTR [rsp+0xe8],rdx
  e111f2:	00 
  e111f3:	4c 8b 6f 78          	mov    r13,QWORD PTR [rdi+0x78]
  e111f7:	49 c1 e5 04          	shl    r13,0x4
  e111fb:	4c 03 ac 24 98 00 00 	add    r13,QWORD PTR [rsp+0x98]
  e11202:	00 
  e11203:	48 8b 8f 80 00 00 00 	mov    rcx,QWORD PTR [rdi+0x80]
  e1120a:	48 c1 e1 04          	shl    rcx,0x4
  e1120e:	4c 01 e9             	add    rcx,r13
  e11211:	48 89 4c 24 60       	mov    QWORD PTR [rsp+0x60],rcx
  e11216:	f2 0f 10 05 b2 36 26 	movsd  xmm0,QWORD PTR [rip+0xffffffffff2636b2]        # 748d0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1d80>
  e1121d:	ff 
  e1121e:	0f 16 c0             	movlhps xmm0,xmm0
  e11221:	0f 29 44 24 10       	movaps XMMWORD PTR [rsp+0x10],xmm0
  e11226:	0f b6 8f 98 00 00 00 	movzx  ecx,BYTE PTR [rdi+0x98]
  e1122d:	0f b6 97 99 00 00 00 	movzx  edx,BYTE PTR [rdi+0x99]
  e11234:	88 8c 24 d8 00 00 00 	mov    BYTE PTR [rsp+0xd8],cl
  e1123b:	20 ca                	and    dl,cl
  e1123d:	88 94 24 88 00 00 00 	mov    BYTE PTR [rsp+0x88],dl
  e11244:	48 89 f1             	mov    rcx,rsi
  e11247:	48 d1 e9             	shr    rcx,1
  e1124a:	48 89 34 24          	mov    QWORD PTR [rsp],rsi
  e1124e:	48 29 ce             	sub    rsi,rcx
  e11251:	4c 89 64 24 08       	mov    QWORD PTR [rsp+0x8],r12
  e11256:	4c 89 6c 24 58       	mov    QWORD PTR [rsp+0x58],r13
  e1125b:	0f 84 a1 0e 00 00    	je     e12102 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2082>
  e11261:	48 8b 4c 24 30       	mov    rcx,QWORD PTR [rsp+0x30]
  e11266:	48 8d 14 01          	lea    rdx,[rcx+rax*1]
  e1126a:	48 89 94 24 20 01 00 	mov    QWORD PTR [rsp+0x120],rdx
  e11271:	00 
  e11272:	4c 89 e2             	mov    rdx,r12
  e11275:	48 d1 ea             	shr    rdx,1
  e11278:	4d 89 e0             	mov    r8,r12
  e1127b:	49 29 d0             	sub    r8,rdx
  e1127e:	4c 89 84 24 b0 00 00 	mov    QWORD PTR [rsp+0xb0],r8
  e11285:	00 
  e11286:	48 8b 7f 70          	mov    rdi,QWORD PTR [rdi+0x70]
  e1128a:	f3 4c 0f bc c7       	tzcnt  r8,rdi
  e1128f:	4c 89 44 24 48       	mov    QWORD PTR [rsp+0x48],r8
  e11294:	49 b8 ff ff ff ff ff 	movabs r8,0x7ffffffffffffff
  e1129b:	ff ff 07 
  e1129e:	48 89 bc 24 30 01 00 	mov    QWORD PTR [rsp+0x130],rdi
  e112a5:	00 
  e112a6:	49 01 f8             	add    r8,rdi
  e112a9:	4c 89 44 24 68       	mov    QWORD PTR [rsp+0x68],r8
  e112ae:	48 8d 79 20          	lea    rdi,[rcx+0x20]
  e112b2:	48 89 bc 24 c8 00 00 	mov    QWORD PTR [rsp+0xc8],rdi
  e112b9:	00 
  e112ba:	49 8d 7f ff          	lea    rdi,[r15-0x1]
  e112be:	48 89 bc 24 28 01 00 	mov    QWORD PTR [rsp+0x128],rdi
  e112c5:	00 
  e112c6:	48 01 c8             	add    rax,rcx
  e112c9:	48 83 c0 10          	add    rax,0x10
  e112cd:	48 89 84 24 a8 00 00 	mov    QWORD PTR [rsp+0xa8],rax
  e112d4:	00 
  e112d5:	4c 89 e0             	mov    rax,r12
  e112d8:	48 c1 e0 05          	shl    rax,0x5
  e112dc:	48 89 84 24 58 01 00 	mov    QWORD PTR [rsp+0x158],rax
  e112e3:	00 
  e112e4:	4c 89 e0             	mov    rax,r12
  e112e7:	48 c1 e0 04          	shl    rax,0x4
  e112eb:	48 89 44 24 20       	mov    QWORD PTR [rsp+0x20],rax
  e112f0:	4c 29 e2             	sub    rdx,r12
  e112f3:	48 89 94 24 50 01 00 	mov    QWORD PTR [rsp+0x150],rdx
  e112fa:	00 
  e112fb:	48 8b 84 24 98 00 00 	mov    rax,QWORD PTR [rsp+0x98]
  e11302:	00 
  e11303:	48 8d 48 20          	lea    rcx,[rax+0x20]
  e11307:	48 89 8c 24 d0 00 00 	mov    QWORD PTR [rsp+0xd0],rcx
  e1130e:	00 
  e1130f:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e11313:	48 89 ca             	mov    rdx,rcx
  e11316:	48 c1 e2 05          	shl    rdx,0x5
  e1131a:	48 89 94 24 f8 00 00 	mov    QWORD PTR [rsp+0xf8],rdx
  e11321:	00 
  e11322:	45 31 db             	xor    r11d,r11d
  e11325:	48 89 84 24 a0 00 00 	mov    QWORD PTR [rsp+0xa0],rax
  e1132c:	00 
  e1132d:	48 89 ca             	mov    rdx,rcx
  e11330:	4c 89 bc 24 38 01 00 	mov    QWORD PTR [rsp+0x138],r15
  e11337:	00 
  e11338:	eb 54                	jmp    e1138e <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x130e>
  e1133a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  e11340:	49 83 c3 02          	add    r11,0x2
  e11344:	48 8b b4 24 40 01 00 	mov    rsi,QWORD PTR [rsp+0x140]
  e1134b:	00 
  e1134c:	48 ff ce             	dec    rsi
  e1134f:	48 8b 84 24 58 01 00 	mov    rax,QWORD PTR [rsp+0x158]
  e11356:	00 
  e11357:	48 01 84 24 a8 00 00 	add    QWORD PTR [rsp+0xa8],rax
  e1135e:	00 
  e1135f:	48 01 84 24 a0 00 00 	add    QWORD PTR [rsp+0xa0],rax
  e11366:	00 
  e11367:	48 83 84 24 d0 00 00 	add    QWORD PTR [rsp+0xd0],0x40
  e1136e:	00 40 
  e11370:	48 85 f6             	test   rsi,rsi
  e11373:	4c 8b 6c 24 58       	mov    r13,QWORD PTR [rsp+0x58]
  e11378:	4c 8b bc 24 38 01 00 	mov    r15,QWORD PTR [rsp+0x138]
  e1137f:	00 
  e11380:	48 8b 94 24 f0 00 00 	mov    rdx,QWORD PTR [rsp+0xf0]
  e11387:	00 
  e11388:	0f 84 74 0d 00 00    	je     e12102 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2082>
  e1138e:	48 83 ea 02          	sub    rdx,0x2
  e11392:	b8 02 00 00 00       	mov    eax,0x2
  e11397:	48 83 d8 00          	sbb    rax,0x0
  e1139b:	48 89 84 24 e0 00 00 	mov    QWORD PTR [rsp+0xe0],rax
  e113a2:	00 
  e113a3:	48 8b 04 24          	mov    rax,QWORD PTR [rsp]
  e113a7:	4c 29 d8             	sub    rax,r11
  e113aa:	48 83 f8 02          	cmp    rax,0x2
  e113ae:	41 b8 02 00 00 00    	mov    r8d,0x2
  e113b4:	4c 0f 42 c0          	cmovb  r8,rax
  e113b8:	4c 89 5c 24 40       	mov    QWORD PTR [rsp+0x40],r11
  e113bd:	4c 89 df             	mov    rdi,r11
  e113c0:	48 c1 e7 04          	shl    rdi,0x4
  e113c4:	48 03 bc 24 48 01 00 	add    rdi,QWORD PTR [rsp+0x148]
  e113cb:	00 
  e113cc:	48 83 f8 01          	cmp    rax,0x1
  e113d0:	48 89 b4 24 40 01 00 	mov    QWORD PTR [rsp+0x140],rsi
  e113d7:	00 
  e113d8:	48 89 94 24 f0 00 00 	mov    QWORD PTR [rsp+0xf0],rdx
  e113df:	00 
  e113e0:	76 5e                	jbe    e11440 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x13c0>
  e113e2:	4d 85 ff             	test   r15,r15
  e113e5:	0f 84 e3 45 00 00    	je     e159ce <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x594e>
  e113eb:	48 8b 44 24 30       	mov    rax,QWORD PTR [rsp+0x30]
  e113f0:	48 8b 00             	mov    rax,QWORD PTR [rax]
  e113f3:	48 83 c0 fe          	add    rax,0xfffffffffffffffe
  e113f7:	48 83 f8 0d          	cmp    rax,0xd
  e113fb:	0f 87 91 45 00 00    	ja     e15992 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5912>
  e11401:	48 8d 0d 80 26 29 ff 	lea    rcx,[rip+0xffffffffff292680]        # a3a88 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x30f38>
  e11408:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  e1140c:	48 01 c8             	add    rax,rcx
  e1140f:	ff e0                	jmp    rax
  e11411:	4c 89 ee             	mov    rsi,r13
  e11414:	4c 89 e2             	mov    rdx,r12
  e11417:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e1141b:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e11420:	e8 5b cc ff ff       	call   e0e080 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e11425:	49 83 ff 02          	cmp    r15,0x2
  e11429:	0f 83 a1 03 00 00    	jae    e117d0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1750>
  e1142f:	e9 0c 08 00 00       	jmp    e11c40 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1bc0>
  e11434:	66 66 66 2e 0f 1f 84 	data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  e1143b:	00 00 00 00 00 
  e11440:	4d 85 ff             	test   r15,r15
  e11443:	0f 84 85 45 00 00    	je     e159ce <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x594e>
  e11449:	48 8b 44 24 30       	mov    rax,QWORD PTR [rsp+0x30]
  e1144e:	48 8b 00             	mov    rax,QWORD PTR [rax]
  e11451:	48 83 c0 fe          	add    rax,0xfffffffffffffffe
  e11455:	48 83 f8 0d          	cmp    rax,0xd
  e11459:	0f 87 33 45 00 00    	ja     e15992 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5912>
  e1145f:	48 8d 0d ae 25 29 ff 	lea    rcx,[rip+0xffffffffff2925ae]        # a3a14 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x30ec4>
  e11466:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  e1146a:	48 01 c8             	add    rax,rcx
  e1146d:	ff e0                	jmp    rax
  e1146f:	4c 89 ee             	mov    rsi,r13
  e11472:	4c 89 e2             	mov    rdx,r12
  e11475:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e11479:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e1147e:	e8 3d 40 fd ff       	call   de54c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e11483:	49 83 ff 02          	cmp    r15,0x2
  e11487:	0f 83 73 05 00 00    	jae    e11a00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1980>
  e1148d:	e9 ae 07 00 00       	jmp    e11c40 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1bc0>
  e11492:	4c 89 ee             	mov    rsi,r13
  e11495:	4c 89 e2             	mov    rdx,r12
  e11498:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e1149c:	e8 5f 98 ff ff       	call   e0ad00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e114a1:	49 83 ff 02          	cmp    r15,0x2
  e114a5:	0f 83 25 03 00 00    	jae    e117d0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1750>
  e114ab:	e9 90 07 00 00       	jmp    e11c40 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1bc0>
  e114b0:	4c 89 ee             	mov    rsi,r13
  e114b3:	4c 89 e2             	mov    rdx,r12
  e114b6:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e114ba:	e8 41 c4 fe ff       	call   dfd900 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e114bf:	49 83 ff 02          	cmp    r15,0x2
  e114c3:	0f 83 37 05 00 00    	jae    e11a00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1980>
  e114c9:	e9 72 07 00 00       	jmp    e11c40 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1bc0>
  e114ce:	4c 89 ee             	mov    rsi,r13
  e114d1:	4c 89 e2             	mov    rdx,r12
  e114d4:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e114d8:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e114dd:	e8 de 34 fe ff       	call   df49c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e114e2:	49 83 ff 02          	cmp    r15,0x2
  e114e6:	0f 83 e4 02 00 00    	jae    e117d0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1750>
  e114ec:	e9 4f 07 00 00       	jmp    e11c40 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1bc0>
  e114f1:	4c 89 ee             	mov    rsi,r13
  e114f4:	4c 89 e2             	mov    rdx,r12
  e114f7:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e114fb:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e11500:	e8 fb b1 fe ff       	call   dfc700 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e11505:	49 83 ff 02          	cmp    r15,0x2
  e11509:	0f 83 f1 04 00 00    	jae    e11a00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1980>
  e1150f:	e9 2c 07 00 00       	jmp    e11c40 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1bc0>
  e11514:	4c 89 ee             	mov    rsi,r13
  e11517:	4c 89 e2             	mov    rdx,r12
  e1151a:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e1151e:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e11523:	e8 58 e0 fe ff       	call   dff580 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e11528:	49 83 ff 02          	cmp    r15,0x2
  e1152c:	0f 83 9e 02 00 00    	jae    e117d0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1750>
  e11532:	e9 09 07 00 00       	jmp    e11c40 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1bc0>
  e11537:	4c 89 ee             	mov    rsi,r13
  e1153a:	4c 89 e2             	mov    rdx,r12
  e1153d:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e11541:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e11546:	e8 f5 e9 fd ff       	call   deff40 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e1154b:	49 83 ff 02          	cmp    r15,0x2
  e1154f:	0f 83 ab 04 00 00    	jae    e11a00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1980>
  e11555:	e9 e6 06 00 00       	jmp    e11c40 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1bc0>
  e1155a:	4c 89 ee             	mov    rsi,r13
  e1155d:	4c 89 e2             	mov    rdx,r12
  e11560:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e11564:	e8 d7 50 fe ff       	call   df6640 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e11569:	49 83 ff 02          	cmp    r15,0x2
  e1156d:	0f 83 5d 02 00 00    	jae    e117d0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1750>
  e11573:	e9 c8 06 00 00       	jmp    e11c40 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1bc0>
  e11578:	4c 89 ee             	mov    rsi,r13
  e1157b:	4c 89 e2             	mov    rdx,r12
  e1157e:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e11582:	e8 b9 ba fd ff       	call   ded040 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e11587:	49 83 ff 02          	cmp    r15,0x2
  e1158b:	0f 83 6f 04 00 00    	jae    e11a00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1980>
  e11591:	e9 aa 06 00 00       	jmp    e11c40 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1bc0>
  e11596:	4c 89 ee             	mov    rsi,r13
  e11599:	4c 89 e2             	mov    rdx,r12
  e1159c:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e115a0:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e115a5:	e8 d6 ee fe ff       	call   e00480 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e115aa:	49 83 ff 02          	cmp    r15,0x2
  e115ae:	0f 83 1c 02 00 00    	jae    e117d0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1750>
  e115b4:	e9 87 06 00 00       	jmp    e11c40 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1bc0>
  e115b9:	4c 89 ee             	mov    rsi,r13
  e115bc:	4c 89 e2             	mov    rdx,r12
  e115bf:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e115c3:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e115c8:	e8 f3 bc fe ff       	call   dfd2c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e115cd:	49 83 ff 02          	cmp    r15,0x2
  e115d1:	0f 83 29 04 00 00    	jae    e11a00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1980>
  e115d7:	e9 64 06 00 00       	jmp    e11c40 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1bc0>
  e115dc:	4c 89 ee             	mov    rsi,r13
  e115df:	4c 89 e2             	mov    rdx,r12
  e115e2:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e115e6:	e8 95 a0 fd ff       	call   deb680 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e115eb:	49 83 ff 02          	cmp    r15,0x2
  e115ef:	0f 83 db 01 00 00    	jae    e117d0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1750>
  e115f5:	e9 46 06 00 00       	jmp    e11c40 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1bc0>
  e115fa:	4c 89 ee             	mov    rsi,r13
  e115fd:	4c 89 e2             	mov    rdx,r12
  e11600:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e11604:	e8 f7 20 fe ff       	call   df3700 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e11609:	49 83 ff 02          	cmp    r15,0x2
  e1160d:	0f 83 ed 03 00 00    	jae    e11a00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1980>
  e11613:	e9 28 06 00 00       	jmp    e11c40 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1bc0>
  e11618:	4c 89 ee             	mov    rsi,r13
  e1161b:	4c 89 e2             	mov    rdx,r12
  e1161e:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e11622:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e11627:	e8 d4 e2 ff ff       	call   e0f900 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e1162c:	49 83 ff 02          	cmp    r15,0x2
  e11630:	0f 83 9a 01 00 00    	jae    e117d0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1750>
  e11636:	e9 05 06 00 00       	jmp    e11c40 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1bc0>
  e1163b:	4c 89 ee             	mov    rsi,r13
  e1163e:	4c 89 e2             	mov    rdx,r12
  e11641:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e11645:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e1164a:	e8 f1 43 ff ff       	call   e05a40 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e1164f:	49 83 ff 02          	cmp    r15,0x2
  e11653:	0f 83 a7 03 00 00    	jae    e11a00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1980>
  e11659:	e9 e2 05 00 00       	jmp    e11c40 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1bc0>
  e1165e:	4c 89 ee             	mov    rsi,r13
  e11661:	4c 89 e2             	mov    rdx,r12
  e11664:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e11668:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e1166d:	e8 0e c1 fe ff       	call   dfd780 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e11672:	49 83 ff 02          	cmp    r15,0x2
  e11676:	0f 83 54 01 00 00    	jae    e117d0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1750>
  e1167c:	e9 bf 05 00 00       	jmp    e11c40 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1bc0>
  e11681:	4c 89 ee             	mov    rsi,r13
  e11684:	4c 89 e2             	mov    rdx,r12
  e11687:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e1168b:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e11690:	e8 2b 49 fe ff       	call   df5fc0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e11695:	49 83 ff 02          	cmp    r15,0x2
  e11699:	0f 83 61 03 00 00    	jae    e11a00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1980>
  e1169f:	e9 9c 05 00 00       	jmp    e11c40 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1bc0>
  e116a4:	4c 89 ee             	mov    rsi,r13
  e116a7:	4c 89 e2             	mov    rdx,r12
  e116aa:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e116ae:	e8 0d 9a fd ff       	call   deb0c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e116b3:	49 83 ff 02          	cmp    r15,0x2
  e116b7:	0f 83 13 01 00 00    	jae    e117d0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1750>
  e116bd:	e9 7e 05 00 00       	jmp    e11c40 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1bc0>
  e116c2:	4c 89 ee             	mov    rsi,r13
  e116c5:	4c 89 e2             	mov    rdx,r12
  e116c8:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e116cc:	e8 2f 4b fd ff       	call   de6200 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e116d1:	49 83 ff 02          	cmp    r15,0x2
  e116d5:	0f 83 25 03 00 00    	jae    e11a00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1980>
  e116db:	e9 60 05 00 00       	jmp    e11c40 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1bc0>
  e116e0:	4c 89 ee             	mov    rsi,r13
  e116e3:	4c 89 e2             	mov    rdx,r12
  e116e6:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e116ea:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e116ef:	e8 4c 77 ff ff       	call   e08e40 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e116f4:	49 83 ff 02          	cmp    r15,0x2
  e116f8:	0f 83 d2 00 00 00    	jae    e117d0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1750>
  e116fe:	e9 3d 05 00 00       	jmp    e11c40 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1bc0>
  e11703:	4c 89 ee             	mov    rsi,r13
  e11706:	4c 89 e2             	mov    rdx,r12
  e11709:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e1170d:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e11712:	e8 a9 a9 ff ff       	call   e0c0c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e11717:	49 83 ff 02          	cmp    r15,0x2
  e1171b:	0f 83 df 02 00 00    	jae    e11a00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1980>
  e11721:	e9 1a 05 00 00       	jmp    e11c40 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1bc0>
  e11726:	4c 89 ee             	mov    rsi,r13
  e11729:	4c 89 e2             	mov    rdx,r12
  e1172c:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e11730:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e11735:	e8 86 86 ff ff       	call   e09dc0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e1173a:	49 83 ff 02          	cmp    r15,0x2
  e1173e:	0f 83 8c 00 00 00    	jae    e117d0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1750>
  e11744:	e9 f7 04 00 00       	jmp    e11c40 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1bc0>
  e11749:	4c 89 ee             	mov    rsi,r13
  e1174c:	4c 89 e2             	mov    rdx,r12
  e1174f:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e11753:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e11758:	e8 e3 38 ff ff       	call   e05040 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e1175d:	49 83 ff 02          	cmp    r15,0x2
  e11761:	0f 83 99 02 00 00    	jae    e11a00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1980>
  e11767:	e9 d4 04 00 00       	jmp    e11c40 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1bc0>
  e1176c:	4c 89 ee             	mov    rsi,r13
  e1176f:	4c 89 e2             	mov    rdx,r12
  e11772:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e11776:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e1177b:	e8 80 de fd ff       	call   def600 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e11780:	49 83 ff 02          	cmp    r15,0x2
  e11784:	73 4a                	jae    e117d0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1750>
  e11786:	e9 b5 04 00 00       	jmp    e11c40 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1bc0>
  e1178b:	4c 89 ee             	mov    rsi,r13
  e1178e:	4c 89 e2             	mov    rdx,r12
  e11791:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e11795:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e1179a:	e8 e1 36 fe ff       	call   df4e80 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e1179f:	49 83 ff 02          	cmp    r15,0x2
  e117a3:	0f 83 57 02 00 00    	jae    e11a00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1980>
  e117a9:	e9 92 04 00 00       	jmp    e11c40 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1bc0>
  e117ae:	4c 89 ee             	mov    rsi,r13
  e117b1:	4c 89 e2             	mov    rdx,r12
  e117b4:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e117b8:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e117bd:	e8 3e d6 fd ff       	call   deee00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e117c2:	49 83 ff 02          	cmp    r15,0x2
  e117c6:	0f 82 74 04 00 00    	jb     e11c40 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1bc0>
  e117cc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  e117d0:	48 8b 44 24 30       	mov    rax,QWORD PTR [rsp+0x30]
  e117d5:	48 8b 18             	mov    rbx,QWORD PTR [rax]
  e117d8:	48 8b ac 24 28 01 00 	mov    rbp,QWORD PTR [rsp+0x128]
  e117df:	00 
  e117e0:	4c 8b a4 24 c8 00 00 	mov    r12,QWORD PTR [rsp+0xc8]
  e117e7:	00 
  e117e8:	48 8b 44 24 58       	mov    rax,QWORD PTR [rsp+0x58]
  e117ed:	4c 8b 74 24 60       	mov    r14,QWORD PTR [rsp+0x60]
  e117f2:	eb 40                	jmp    e11834 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x17b4>
  e117f4:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e117f9:	0f 29 84 24 60 01 00 	movaps XMMWORD PTR [rsp+0x160],xmm0
  e11800:	00 
  e11801:	4c 89 f7             	mov    rdi,r14
  e11804:	4c 89 ee             	mov    rsi,r13
  e11807:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e1180c:	48 89 d9             	mov    rcx,rbx
  e1180f:	4c 8d 8c 24 60 01 00 	lea    r9,[rsp+0x160]
  e11816:	00 
  e11817:	e8 24 a2 f3 ff       	call   d4ba40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e1181c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  e11820:	49 0f af df          	imul   rbx,r15
  e11824:	49 83 c4 18          	add    r12,0x18
  e11828:	4c 89 e8             	mov    rax,r13
  e1182b:	48 ff cd             	dec    rbp
  e1182e:	0f 84 0c 04 00 00    	je     e11c40 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1bc0>
  e11834:	4d 89 f5             	mov    r13,r14
  e11837:	49 89 c6             	mov    r14,rax
  e1183a:	4d 8b 7c 24 f8       	mov    r15,QWORD PTR [r12-0x8]
  e1183f:	4d 8b 04 24          	mov    r8,QWORD PTR [r12]
  e11843:	4c 03 44 24 30       	add    r8,QWORD PTR [rsp+0x30]
  e11848:	4c 89 bc 24 00 01 00 	mov    QWORD PTR [rsp+0x100],r15
  e1184f:	00 
  e11850:	49 8d 47 fe          	lea    rax,[r15-0x2]
  e11854:	48 83 f8 0e          	cmp    rax,0xe
  e11858:	0f 87 ca 40 00 00    	ja     e15928 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x58a8>
  e1185e:	48 8d 0d 5b 22 29 ff 	lea    rcx,[rip+0xffffffffff29225b]        # a3ac0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x30f70>
  e11865:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  e11869:	48 01 c8             	add    rax,rcx
  e1186c:	ff e0                	jmp    rax
  e1186e:	4c 89 f7             	mov    rdi,r14
  e11871:	4c 89 ee             	mov    rsi,r13
  e11874:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e11879:	48 89 d9             	mov    rcx,rbx
  e1187c:	e8 ff 09 f3 ff       	call   d42280 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e11881:	eb 9d                	jmp    e11820 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x17a0>
  e11883:	4c 89 f7             	mov    rdi,r14
  e11886:	4c 89 ee             	mov    rsi,r13
  e11889:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e1188e:	48 89 d9             	mov    rcx,rbx
  e11891:	e8 aa 5e f3 ff       	call   d47740 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e11896:	eb 88                	jmp    e11820 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x17a0>
  e11898:	4c 89 f7             	mov    rdi,r14
  e1189b:	4c 89 ee             	mov    rsi,r13
  e1189e:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e118a3:	48 89 d9             	mov    rcx,rbx
  e118a6:	e8 15 14 f3 ff       	call   d42cc0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e118ab:	e9 70 ff ff ff       	jmp    e11820 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x17a0>
  e118b0:	4c 89 f7             	mov    rdi,r14
  e118b3:	4c 89 ee             	mov    rsi,r13
  e118b6:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e118bb:	48 89 d9             	mov    rcx,rbx
  e118be:	e8 3d 77 f3 ff       	call   d49000 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e118c3:	e9 58 ff ff ff       	jmp    e11820 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x17a0>
  e118c8:	4c 89 f7             	mov    rdi,r14
  e118cb:	4c 89 ee             	mov    rsi,r13
  e118ce:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e118d3:	48 89 d9             	mov    rcx,rbx
  e118d6:	e8 a5 3d f3 ff       	call   d45680 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e118db:	e9 40 ff ff ff       	jmp    e11820 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x17a0>
  e118e0:	4c 89 f7             	mov    rdi,r14
  e118e3:	4c 89 ee             	mov    rsi,r13
  e118e6:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e118eb:	48 89 d9             	mov    rcx,rbx
  e118ee:	e8 4d 0d f3 ff       	call   d42640 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e118f3:	e9 28 ff ff ff       	jmp    e11820 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x17a0>
  e118f8:	4c 89 f7             	mov    rdi,r14
  e118fb:	4c 89 ee             	mov    rsi,r13
  e118fe:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e11903:	48 89 d9             	mov    rcx,rbx
  e11906:	e8 b5 0f f3 ff       	call   d428c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e1190b:	e9 10 ff ff ff       	jmp    e11820 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x17a0>
  e11910:	4c 89 f7             	mov    rdi,r14
  e11913:	4c 89 ee             	mov    rsi,r13
  e11916:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e1191b:	48 89 d9             	mov    rcx,rbx
  e1191e:	e8 dd 26 f3 ff       	call   d44000 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e11923:	e9 f8 fe ff ff       	jmp    e11820 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x17a0>
  e11928:	4c 89 f7             	mov    rdi,r14
  e1192b:	4c 89 ee             	mov    rsi,r13
  e1192e:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e11933:	48 89 d9             	mov    rcx,rbx
  e11936:	e8 c5 0a f3 ff       	call   d42400 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e1193b:	e9 e0 fe ff ff       	jmp    e11820 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x17a0>
  e11940:	4c 89 f7             	mov    rdi,r14
  e11943:	4c 89 ee             	mov    rsi,r13
  e11946:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e1194b:	48 89 d9             	mov    rcx,rbx
  e1194e:	e8 2d 18 f3 ff       	call   d43180 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e11953:	e9 c8 fe ff ff       	jmp    e11820 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x17a0>
  e11958:	4c 89 f7             	mov    rdi,r14
  e1195b:	4c 89 ee             	mov    rsi,r13
  e1195e:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e11963:	48 89 d9             	mov    rcx,rbx
  e11966:	e8 55 8b f3 ff       	call   d4a4c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e1196b:	e9 b0 fe ff ff       	jmp    e11820 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x17a0>
  e11970:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e11975:	0f 29 84 24 60 01 00 	movaps XMMWORD PTR [rsp+0x160],xmm0
  e1197c:	00 
  e1197d:	4c 89 f7             	mov    rdi,r14
  e11980:	4c 89 ee             	mov    rsi,r13
  e11983:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e11988:	48 89 d9             	mov    rcx,rbx
  e1198b:	4c 8d 8c 24 60 01 00 	lea    r9,[rsp+0x160]
  e11992:	00 
  e11993:	e8 68 1f f3 ff       	call   d43900 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e11998:	e9 83 fe ff ff       	jmp    e11820 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x17a0>
  e1199d:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e119a2:	0f 29 84 24 60 01 00 	movaps XMMWORD PTR [rsp+0x160],xmm0
  e119a9:	00 
  e119aa:	4c 89 f7             	mov    rdi,r14
  e119ad:	4c 89 ee             	mov    rsi,r13
  e119b0:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e119b5:	48 89 d9             	mov    rcx,rbx
  e119b8:	4c 8d 8c 24 60 01 00 	lea    r9,[rsp+0x160]
  e119bf:	00 
  e119c0:	e8 7b 4f f3 ff       	call   d46940 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e119c5:	e9 56 fe ff ff       	jmp    e11820 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x17a0>
  e119ca:	4c 89 f7             	mov    rdi,r14
  e119cd:	4c 89 ee             	mov    rsi,r13
  e119d0:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e119d5:	48 89 d9             	mov    rcx,rbx
  e119d8:	e8 a3 30 f3 ff       	call   d44a80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e119dd:	e9 3e fe ff ff       	jmp    e11820 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x17a0>
  e119e2:	4c 89 ee             	mov    rsi,r13
  e119e5:	4c 89 e2             	mov    rdx,r12
  e119e8:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e119ec:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e119f1:	e8 8a cf ff ff       	call   e0e980 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e119f6:	49 83 ff 02          	cmp    r15,0x2
  e119fa:	0f 82 40 02 00 00    	jb     e11c40 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1bc0>
  e11a00:	48 8b 44 24 30       	mov    rax,QWORD PTR [rsp+0x30]
  e11a05:	48 8b 18             	mov    rbx,QWORD PTR [rax]
  e11a08:	48 8b ac 24 28 01 00 	mov    rbp,QWORD PTR [rsp+0x128]
  e11a0f:	00 
  e11a10:	4c 8b a4 24 c8 00 00 	mov    r12,QWORD PTR [rsp+0xc8]
  e11a17:	00 
  e11a18:	48 8b 44 24 58       	mov    rax,QWORD PTR [rsp+0x58]
  e11a1d:	4c 8b 74 24 60       	mov    r14,QWORD PTR [rsp+0x60]
  e11a22:	eb 40                	jmp    e11a64 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x19e4>
  e11a24:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e11a29:	0f 29 84 24 60 01 00 	movaps XMMWORD PTR [rsp+0x160],xmm0
  e11a30:	00 
  e11a31:	49 89 d6             	mov    r14,rdx
  e11a34:	48 89 d7             	mov    rdi,rdx
  e11a37:	4c 89 ee             	mov    rsi,r13
  e11a3a:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e11a3f:	48 89 d9             	mov    rcx,rbx
  e11a42:	4c 8d 8c 24 60 01 00 	lea    r9,[rsp+0x160]
  e11a49:	00 
  e11a4a:	e8 f1 9f f3 ff       	call   d4ba40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e11a4f:	90                   	nop
  e11a50:	49 0f af df          	imul   rbx,r15
  e11a54:	49 83 c4 18          	add    r12,0x18
  e11a58:	4c 89 e8             	mov    rax,r13
  e11a5b:	48 ff cd             	dec    rbp
  e11a5e:	0f 84 dc 01 00 00    	je     e11c40 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1bc0>
  e11a64:	48 89 c2             	mov    rdx,rax
  e11a67:	4d 8b 7c 24 f8       	mov    r15,QWORD PTR [r12-0x8]
  e11a6c:	4d 8b 04 24          	mov    r8,QWORD PTR [r12]
  e11a70:	4c 03 44 24 30       	add    r8,QWORD PTR [rsp+0x30]
  e11a75:	4c 89 bc 24 00 01 00 	mov    QWORD PTR [rsp+0x100],r15
  e11a7c:	00 
  e11a7d:	49 8d 47 fe          	lea    rax,[r15-0x2]
  e11a81:	48 83 f8 0e          	cmp    rax,0xe
  e11a85:	0f 87 9d 3e 00 00    	ja     e15928 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x58a8>
  e11a8b:	4d 89 f5             	mov    r13,r14
  e11a8e:	48 8d 0d b7 1f 29 ff 	lea    rcx,[rip+0xffffffffff291fb7]        # a3a4c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x30efc>
  e11a95:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  e11a99:	48 01 c8             	add    rax,rcx
  e11a9c:	ff e0                	jmp    rax
  e11a9e:	49 89 d6             	mov    r14,rdx
  e11aa1:	48 89 d7             	mov    rdi,rdx
  e11aa4:	4c 89 ee             	mov    rsi,r13
  e11aa7:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e11aac:	48 89 d9             	mov    rcx,rbx
  e11aaf:	e8 cc 07 f3 ff       	call   d42280 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e11ab4:	eb 9a                	jmp    e11a50 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x19d0>
  e11ab6:	49 89 d6             	mov    r14,rdx
  e11ab9:	48 89 d7             	mov    rdi,rdx
  e11abc:	4c 89 ee             	mov    rsi,r13
  e11abf:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e11ac4:	48 89 d9             	mov    rcx,rbx
  e11ac7:	e8 74 5c f3 ff       	call   d47740 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e11acc:	eb 82                	jmp    e11a50 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x19d0>
  e11ace:	49 89 d6             	mov    r14,rdx
  e11ad1:	48 89 d7             	mov    rdi,rdx
  e11ad4:	4c 89 ee             	mov    rsi,r13
  e11ad7:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e11adc:	48 89 d9             	mov    rcx,rbx
  e11adf:	e8 dc 11 f3 ff       	call   d42cc0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e11ae4:	e9 67 ff ff ff       	jmp    e11a50 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x19d0>
  e11ae9:	49 89 d6             	mov    r14,rdx
  e11aec:	48 89 d7             	mov    rdi,rdx
  e11aef:	4c 89 ee             	mov    rsi,r13
  e11af2:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e11af7:	48 89 d9             	mov    rcx,rbx
  e11afa:	e8 01 75 f3 ff       	call   d49000 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e11aff:	e9 4c ff ff ff       	jmp    e11a50 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x19d0>
  e11b04:	49 89 d6             	mov    r14,rdx
  e11b07:	48 89 d7             	mov    rdi,rdx
  e11b0a:	4c 89 ee             	mov    rsi,r13
  e11b0d:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e11b12:	48 89 d9             	mov    rcx,rbx
  e11b15:	e8 66 3b f3 ff       	call   d45680 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e11b1a:	e9 31 ff ff ff       	jmp    e11a50 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x19d0>
  e11b1f:	49 89 d6             	mov    r14,rdx
  e11b22:	48 89 d7             	mov    rdi,rdx
  e11b25:	4c 89 ee             	mov    rsi,r13
  e11b28:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e11b2d:	48 89 d9             	mov    rcx,rbx
  e11b30:	e8 0b 0b f3 ff       	call   d42640 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e11b35:	e9 16 ff ff ff       	jmp    e11a50 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x19d0>
  e11b3a:	49 89 d6             	mov    r14,rdx
  e11b3d:	48 89 d7             	mov    rdi,rdx
  e11b40:	4c 89 ee             	mov    rsi,r13
  e11b43:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e11b48:	48 89 d9             	mov    rcx,rbx
  e11b4b:	e8 70 0d f3 ff       	call   d428c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e11b50:	e9 fb fe ff ff       	jmp    e11a50 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x19d0>
  e11b55:	49 89 d6             	mov    r14,rdx
  e11b58:	48 89 d7             	mov    rdi,rdx
  e11b5b:	4c 89 ee             	mov    rsi,r13
  e11b5e:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e11b63:	48 89 d9             	mov    rcx,rbx
  e11b66:	e8 95 24 f3 ff       	call   d44000 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e11b6b:	e9 e0 fe ff ff       	jmp    e11a50 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x19d0>
  e11b70:	49 89 d6             	mov    r14,rdx
  e11b73:	48 89 d7             	mov    rdi,rdx
  e11b76:	4c 89 ee             	mov    rsi,r13
  e11b79:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e11b7e:	48 89 d9             	mov    rcx,rbx
  e11b81:	e8 7a 08 f3 ff       	call   d42400 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e11b86:	e9 c5 fe ff ff       	jmp    e11a50 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x19d0>
  e11b8b:	49 89 d6             	mov    r14,rdx
  e11b8e:	48 89 d7             	mov    rdi,rdx
  e11b91:	4c 89 ee             	mov    rsi,r13
  e11b94:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e11b99:	48 89 d9             	mov    rcx,rbx
  e11b9c:	e8 df 15 f3 ff       	call   d43180 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e11ba1:	e9 aa fe ff ff       	jmp    e11a50 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x19d0>
  e11ba6:	49 89 d6             	mov    r14,rdx
  e11ba9:	48 89 d7             	mov    rdi,rdx
  e11bac:	4c 89 ee             	mov    rsi,r13
  e11baf:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e11bb4:	48 89 d9             	mov    rcx,rbx
  e11bb7:	e8 04 89 f3 ff       	call   d4a4c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e11bbc:	e9 8f fe ff ff       	jmp    e11a50 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x19d0>
  e11bc1:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e11bc6:	0f 29 84 24 60 01 00 	movaps XMMWORD PTR [rsp+0x160],xmm0
  e11bcd:	00 
  e11bce:	49 89 d6             	mov    r14,rdx
  e11bd1:	48 89 d7             	mov    rdi,rdx
  e11bd4:	4c 89 ee             	mov    rsi,r13
  e11bd7:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e11bdc:	48 89 d9             	mov    rcx,rbx
  e11bdf:	4c 8d 8c 24 60 01 00 	lea    r9,[rsp+0x160]
  e11be6:	00 
  e11be7:	e8 14 1d f3 ff       	call   d43900 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e11bec:	e9 5f fe ff ff       	jmp    e11a50 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x19d0>
  e11bf1:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e11bf6:	0f 29 84 24 60 01 00 	movaps XMMWORD PTR [rsp+0x160],xmm0
  e11bfd:	00 
  e11bfe:	49 89 d6             	mov    r14,rdx
  e11c01:	48 89 d7             	mov    rdi,rdx
  e11c04:	4c 89 ee             	mov    rsi,r13
  e11c07:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e11c0c:	48 89 d9             	mov    rcx,rbx
  e11c0f:	4c 8d 8c 24 60 01 00 	lea    r9,[rsp+0x160]
  e11c16:	00 
  e11c17:	e8 24 4d f3 ff       	call   d46940 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e11c1c:	e9 2f fe ff ff       	jmp    e11a50 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x19d0>
  e11c21:	49 89 d6             	mov    r14,rdx
  e11c24:	48 89 d7             	mov    rdi,rdx
  e11c27:	4c 89 ee             	mov    rsi,r13
  e11c2a:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e11c2f:	48 89 d9             	mov    rcx,rbx
  e11c32:	e8 49 2e f3 ff       	call   d44a80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e11c37:	e9 14 fe ff ff       	jmp    e11a50 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x19d0>
  e11c3c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  e11c40:	80 bc 24 d8 00 00 00 	cmp    BYTE PTR [rsp+0xd8],0x0
  e11c47:	00 
  e11c48:	74 56                	je     e11ca0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1c20>
  e11c4a:	48 8b 8c 24 30 01 00 	mov    rcx,QWORD PTR [rsp+0x130]
  e11c51:	00 
  e11c52:	48 85 c9             	test   rcx,rcx
  e11c55:	4c 8b 5c 24 40       	mov    r11,QWORD PTR [rsp+0x40]
  e11c5a:	4c 8b 64 24 08       	mov    r12,QWORD PTR [rsp+0x8]
  e11c5f:	0f 84 79 3d 00 00    	je     e159de <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x595e>
  e11c65:	4c 89 e0             	mov    rax,r12
  e11c68:	48 09 c8             	or     rax,rcx
  e11c6b:	48 c1 e8 20          	shr    rax,0x20
  e11c6f:	0f 84 d7 02 00 00    	je     e11f4c <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1ecc>
  e11c75:	4c 89 e0             	mov    rax,r12
  e11c78:	31 d2                	xor    edx,edx
  e11c7a:	48 f7 f1             	div    rcx
  e11c7d:	48 83 bc 24 b0 00 00 	cmp    QWORD PTR [rsp+0xb0],0x0
  e11c84:	00 00 
  e11c86:	0f 85 d6 02 00 00    	jne    e11f62 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1ee2>
  e11c8c:	e9 af f6 ff ff       	jmp    e11340 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x12c0>
  e11c91:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  e11c98:	0f 1f 84 00 00 00 00 
  e11c9f:	00 
  e11ca0:	48 83 bc 24 b0 00 00 	cmp    QWORD PTR [rsp+0xb0],0x0
  e11ca7:	00 00 
  e11ca9:	4c 8b 5c 24 40       	mov    r11,QWORD PTR [rsp+0x40]
  e11cae:	4c 8b 64 24 08       	mov    r12,QWORD PTR [rsp+0x8]
  e11cb3:	0f 84 87 f6 ff ff    	je     e11340 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x12c0>
  e11cb9:	49 83 c5 10          	add    r13,0x10
  e11cbd:	48 8b 84 24 a0 00 00 	mov    rax,QWORD PTR [rsp+0xa0]
  e11cc4:	00 
  e11cc5:	48 89 84 24 b8 00 00 	mov    QWORD PTR [rsp+0xb8],rax
  e11ccc:	00 
  e11ccd:	48 8b ac 24 a8 00 00 	mov    rbp,QWORD PTR [rsp+0xa8]
  e11cd4:	00 
  e11cd5:	4c 89 e0             	mov    rax,r12
  e11cd8:	48 8b 8c 24 b0 00 00 	mov    rcx,QWORD PTR [rsp+0xb0]
  e11cdf:	00 
  e11ce0:	31 d2                	xor    edx,edx
  e11ce2:	eb 4e                	jmp    e11d32 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1cb2>
  e11ce4:	66 66 66 2e 0f 1f 84 	data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  e11ceb:	00 00 00 00 00 
  e11cf0:	48 8b 54 24 38       	mov    rdx,QWORD PTR [rsp+0x38]
  e11cf5:	48 83 c2 02          	add    rdx,0x2
  e11cf9:	48 8b 8c 24 90 00 00 	mov    rcx,QWORD PTR [rsp+0x90]
  e11d00:	00 
  e11d01:	48 ff c9             	dec    rcx
  e11d04:	48 83 c5 40          	add    rbp,0x40
  e11d08:	4c 8b 6c 24 28       	mov    r13,QWORD PTR [rsp+0x28]
  e11d0d:	49 83 c5 40          	add    r13,0x40
  e11d11:	48 83 84 24 b8 00 00 	add    QWORD PTR [rsp+0xb8],0x20
  e11d18:	00 20 
  e11d1a:	48 85 c9             	test   rcx,rcx
  e11d1d:	4c 8b 64 24 08       	mov    r12,QWORD PTR [rsp+0x8]
  e11d22:	4c 8b 5c 24 40       	mov    r11,QWORD PTR [rsp+0x40]
  e11d27:	48 8b 44 24 70       	mov    rax,QWORD PTR [rsp+0x70]
  e11d2c:	0f 84 0e f6 ff ff    	je     e11340 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x12c0>
  e11d32:	48 89 8c 24 90 00 00 	mov    QWORD PTR [rsp+0x90],rcx
  e11d39:	00 
  e11d3a:	48 83 e8 02          	sub    rax,0x2
  e11d3e:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
  e11d43:	b8 02 00 00 00       	mov    eax,0x2
  e11d48:	48 83 d8 00          	sbb    rax,0x0
  e11d4c:	4c 89 e3             	mov    rbx,r12
  e11d4f:	48 29 d3             	sub    rbx,rdx
  e11d52:	48 83 fb 02          	cmp    rbx,0x2
  e11d56:	b9 02 00 00 00       	mov    ecx,0x2
  e11d5b:	48 0f 43 d9          	cmovae rbx,rcx
  e11d5f:	0f 57 c0             	xorps  xmm0,xmm0
  e11d62:	0f 29 84 24 70 02 00 	movaps XMMWORD PTR [rsp+0x270],xmm0
  e11d69:	00 
  e11d6a:	0f 29 84 24 60 02 00 	movaps XMMWORD PTR [rsp+0x260],xmm0
  e11d71:	00 
  e11d72:	0f 29 84 24 10 01 00 	movaps XMMWORD PTR [rsp+0x110],xmm0
  e11d79:	00 
  e11d7a:	0f 29 84 24 00 01 00 	movaps XMMWORD PTR [rsp+0x100],xmm0
  e11d81:	00 
  e11d82:	0f 57 c9             	xorps  xmm1,xmm1
  e11d85:	66 0f 57 db          	xorpd  xmm3,xmm3
  e11d89:	66 0f 57 d2          	xorpd  xmm2,xmm2
  e11d8d:	49 29 d4             	sub    r12,rdx
  e11d90:	0f 84 81 00 00 00    	je     e11e17 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1d97>
  e11d96:	31 c9                	xor    ecx,ecx
  e11d98:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  e11d9f:	00 
  e11da0:	66 41 0f 10 44 4d f0 	movupd xmm0,XMMWORD PTR [r13+rcx*2-0x10]
  e11da7:	66 41 0f 10 4c 4d 00 	movupd xmm1,XMMWORD PTR [r13+rcx*2+0x0]
  e11dae:	66 0f 10 54 4d f0    	movupd xmm2,XMMWORD PTR [rbp+rcx*2-0x10]
  e11db4:	66 0f 10 5c 4d 00    	movupd xmm3,XMMWORD PTR [rbp+rcx*2+0x0]
  e11dba:	66 0f 28 e1          	movapd xmm4,xmm1
  e11dbe:	66 0f 59 e3          	mulpd  xmm4,xmm3
  e11dc2:	66 0f 28 e8          	movapd xmm5,xmm0
  e11dc6:	66 0f 59 ea          	mulpd  xmm5,xmm2
  e11dca:	66 0f 5c ec          	subpd  xmm5,xmm4
  e11dce:	66 0f 29 ac 0c 60 02 	movapd XMMWORD PTR [rsp+rcx*1+0x260],xmm5
  e11dd5:	00 00 
  e11dd7:	66 0f 59 ca          	mulpd  xmm1,xmm2
  e11ddb:	66 0f 59 c3          	mulpd  xmm0,xmm3
  e11ddf:	66 0f 58 c1          	addpd  xmm0,xmm1
  e11de3:	66 0f 29 84 0c 00 01 	movapd XMMWORD PTR [rsp+rcx*1+0x100],xmm0
  e11dea:	00 00 
  e11dec:	48 83 c1 10          	add    rcx,0x10
  e11df0:	48 ff c8             	dec    rax
  e11df3:	75 ab                	jne    e11da0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1d20>
  e11df5:	66 0f 28 94 24 60 02 	movapd xmm2,XMMWORD PTR [rsp+0x260]
  e11dfc:	00 00 
  e11dfe:	66 0f 28 9c 24 70 02 	movapd xmm3,XMMWORD PTR [rsp+0x270]
  e11e05:	00 00 
  e11e07:	0f 28 84 24 00 01 00 	movaps xmm0,XMMWORD PTR [rsp+0x100]
  e11e0e:	00 
  e11e0f:	0f 28 8c 24 10 01 00 	movaps xmm1,XMMWORD PTR [rsp+0x110]
  e11e16:	00 
  e11e17:	48 89 54 24 38       	mov    QWORD PTR [rsp+0x38],rdx
  e11e1c:	4c 89 6c 24 28       	mov    QWORD PTR [rsp+0x28],r13
  e11e21:	66 0f 28 e2          	movapd xmm4,xmm2
  e11e25:	66 0f 14 e3          	unpcklpd xmm4,xmm3
  e11e29:	66 0f 15 d3          	unpckhpd xmm2,xmm3
  e11e2d:	66 0f 29 a4 24 60 02 	movapd XMMWORD PTR [rsp+0x260],xmm4
  e11e34:	00 00 
  e11e36:	66 0f 29 94 24 70 02 	movapd XMMWORD PTR [rsp+0x270],xmm2
  e11e3d:	00 00 
  e11e3f:	0f 28 d0             	movaps xmm2,xmm0
  e11e42:	0f 16 d1             	movlhps xmm2,xmm1
  e11e45:	66 0f 15 c1          	unpckhpd xmm0,xmm1
  e11e49:	0f 29 94 24 00 01 00 	movaps XMMWORD PTR [rsp+0x100],xmm2
  e11e50:	00 
  e11e51:	0f 29 84 24 10 01 00 	movaps XMMWORD PTR [rsp+0x110],xmm0
  e11e58:	00 
  e11e59:	4c 39 1c 24          	cmp    QWORD PTR [rsp],r11
  e11e5d:	0f 84 8d fe ff ff    	je     e11cf0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1c70>
  e11e63:	48 c1 e3 04          	shl    rbx,0x4
  e11e67:	4c 8b bc 24 b8 00 00 	mov    r15,QWORD PTR [rsp+0xb8]
  e11e6e:	00 
  e11e6f:	4c 8b ac 24 e0 00 00 	mov    r13,QWORD PTR [rsp+0xe0]
  e11e76:	00 
  e11e77:	45 31 f6             	xor    r14d,r14d
  e11e7a:	eb 1f                	jmp    e11e9b <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1e1b>
  e11e7c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  e11e80:	41 0f 11 0f          	movups XMMWORD PTR [r15],xmm1
  e11e84:	41 0f 11 47 10       	movups XMMWORD PTR [r15+0x10],xmm0
  e11e89:	49 83 c6 10          	add    r14,0x10
  e11e8d:	4c 03 7c 24 20       	add    r15,QWORD PTR [rsp+0x20]
  e11e92:	49 ff cd             	dec    r13
  e11e95:	0f 84 55 fe ff ff    	je     e11cf0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1c70>
  e11e9b:	42 0f 28 84 34 60 02 	movaps xmm0,XMMWORD PTR [rsp+r14*1+0x260]
  e11ea2:	00 00 
  e11ea4:	42 0f 28 94 34 00 01 	movaps xmm2,XMMWORD PTR [rsp+r14*1+0x100]
  e11eab:	00 00 
  e11ead:	0f 28 c8             	movaps xmm1,xmm0
  e11eb0:	0f 16 ca             	movlhps xmm1,xmm2
  e11eb3:	66 0f 15 c2          	unpckhpd xmm0,xmm2
  e11eb7:	49 83 fc 01          	cmp    r12,0x1
  e11ebb:	77 c3                	ja     e11e80 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1e00>
  e11ebd:	48 8d 84 24 80 01 00 	lea    rax,[rsp+0x180]
  e11ec4:	00 
  e11ec5:	0f 57 d2             	xorps  xmm2,xmm2
  e11ec8:	0f 29 90 d0 00 00 00 	movaps XMMWORD PTR [rax+0xd0],xmm2
  e11ecf:	0f 29 90 c0 00 00 00 	movaps XMMWORD PTR [rax+0xc0],xmm2
  e11ed6:	0f 29 90 b0 00 00 00 	movaps XMMWORD PTR [rax+0xb0],xmm2
  e11edd:	0f 29 90 a0 00 00 00 	movaps XMMWORD PTR [rax+0xa0],xmm2
  e11ee4:	0f 29 90 90 00 00 00 	movaps XMMWORD PTR [rax+0x90],xmm2
  e11eeb:	0f 29 90 80 00 00 00 	movaps XMMWORD PTR [rax+0x80],xmm2
  e11ef2:	0f 29 50 70          	movaps XMMWORD PTR [rax+0x70],xmm2
  e11ef6:	0f 29 50 60          	movaps XMMWORD PTR [rax+0x60],xmm2
  e11efa:	0f 29 50 50          	movaps XMMWORD PTR [rax+0x50],xmm2
  e11efe:	0f 29 50 40          	movaps XMMWORD PTR [rax+0x40],xmm2
  e11f02:	0f 29 50 30          	movaps XMMWORD PTR [rax+0x30],xmm2
  e11f06:	0f 29 50 20          	movaps XMMWORD PTR [rax+0x20],xmm2
  e11f0a:	0f 29 50 10          	movaps XMMWORD PTR [rax+0x10],xmm2
  e11f0e:	0f 29 10             	movaps XMMWORD PTR [rax],xmm2
  e11f11:	0f 29 8c 24 60 01 00 	movaps XMMWORD PTR [rsp+0x160],xmm1
  e11f18:	00 
  e11f19:	0f 29 84 24 70 01 00 	movaps XMMWORD PTR [rsp+0x170],xmm0
  e11f20:	00 
  e11f21:	4c 89 ff             	mov    rdi,r15
  e11f24:	48 8d b4 24 60 01 00 	lea    rsi,[rsp+0x160]
  e11f2b:	00 
  e11f2c:	48 89 da             	mov    rdx,rbx
  e11f2f:	ff 15 ab b7 43 00    	call   QWORD PTR [rip+0x43b7ab]        # 124d6e0 <memcpy@GLIBC_2.14>
  e11f35:	49 83 c6 10          	add    r14,0x10
  e11f39:	4c 03 7c 24 20       	add    r15,QWORD PTR [rsp+0x20]
  e11f3e:	49 ff cd             	dec    r13
  e11f41:	0f 85 54 ff ff ff    	jne    e11e9b <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1e1b>
  e11f47:	e9 a4 fd ff ff       	jmp    e11cf0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1c70>
  e11f4c:	44 89 e0             	mov    eax,r12d
  e11f4f:	31 d2                	xor    edx,edx
  e11f51:	f7 f1                	div    ecx
  e11f53:	48 83 bc 24 b0 00 00 	cmp    QWORD PTR [rsp+0xb0],0x0
  e11f5a:	00 00 
  e11f5c:	0f 84 de f3 ff ff    	je     e11340 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x12c0>
  e11f62:	4b 8d 0c 1b          	lea    rcx,[r11+r11*1]
  e11f66:	48 0f af c1          	imul   rax,rcx
  e11f6a:	48 0f af 8c 24 30 01 	imul   rcx,QWORD PTR [rsp+0x130]
  e11f71:	00 00 
  e11f73:	48 8b 94 24 20 01 00 	mov    rdx,QWORD PTR [rsp+0x120]
  e11f7a:	00 
  e11f7b:	48 8d 04 c2          	lea    rax,[rdx+rax*8]
  e11f7f:	48 8b 94 24 e8 00 00 	mov    rdx,QWORD PTR [rsp+0xe8]
  e11f86:	00 
  e11f87:	48 8d 14 ca          	lea    rdx,[rdx+rcx*8]
  e11f8b:	49 83 c5 30          	add    r13,0x30
  e11f8f:	48 8b b4 24 d0 00 00 	mov    rsi,QWORD PTR [rsp+0xd0]
  e11f96:	00 
  e11f97:	48 8b bc 24 50 01 00 	mov    rdi,QWORD PTR [rsp+0x150]
  e11f9e:	00 
  e11f9f:	45 31 c0             	xor    r8d,r8d
  e11fa2:	eb 43                	jmp    e11fe7 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1f67>
  e11fa4:	66 66 66 2e 0f 1f 84 	data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  e11fab:	00 00 00 00 00 
  e11fb0:	48 8d 4e e0          	lea    rcx,[rsi-0x20]
  e11fb4:	4c 8d 4e f0          	lea    r9,[rsi-0x10]
  e11fb8:	4c 8d 56 10          	lea    r10,[rsi+0x10]
  e11fbc:	66 0f 2b 21          	movntpd XMMWORD PTR [rcx],xmm4
  e11fc0:	66 41 0f 2b 19       	movntpd XMMWORD PTR [r9],xmm3
  e11fc5:	66 0f 2b 16          	movntpd XMMWORD PTR [rsi],xmm2
  e11fc9:	66 41 0f 2b 02       	movntpd XMMWORD PTR [r10],xmm0
  e11fce:	48 03 b4 24 f8 00 00 	add    rsi,QWORD PTR [rsp+0xf8]
  e11fd5:	00 
  e11fd6:	49 83 c5 40          	add    r13,0x40
  e11fda:	49 83 c0 02          	add    r8,0x2
  e11fde:	48 ff c7             	inc    rdi
  e11fe1:	0f 84 59 f3 ff ff    	je     e11340 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x12c0>
  e11fe7:	4d 89 c1             	mov    r9,r8
  e11fea:	48 8b 4c 24 48       	mov    rcx,QWORD PTR [rsp+0x48]
  e11fef:	49 d3 e9             	shr    r9,cl
  e11ff2:	49 c1 e1 05          	shl    r9,0x5
  e11ff6:	66 42 0f 10 04 08    	movupd xmm0,XMMWORD PTR [rax+r9*1]
  e11ffc:	66 42 0f 10 54 08 10 	movupd xmm2,XMMWORD PTR [rax+r9*1+0x10]
  e12003:	4c 89 c1             	mov    rcx,r8
  e12006:	48 23 4c 24 68       	and    rcx,QWORD PTR [rsp+0x68]
  e1200b:	48 c1 e1 05          	shl    rcx,0x5
  e1200f:	66 0f 10 1c 0a       	movupd xmm3,XMMWORD PTR [rdx+rcx*1]
  e12014:	66 0f 10 4c 0a 10    	movupd xmm1,XMMWORD PTR [rdx+rcx*1+0x10]
  e1201a:	66 0f 10 74 0a 20    	movupd xmm6,XMMWORD PTR [rdx+rcx*1+0x20]
  e12020:	66 0f 10 64 0a 30    	movupd xmm4,XMMWORD PTR [rdx+rcx*1+0x30]
  e12026:	66 0f 28 ea          	movapd xmm5,xmm2
  e1202a:	66 0f 59 e9          	mulpd  xmm5,xmm1
  e1202e:	66 44 0f 28 c0       	movapd xmm8,xmm0
  e12033:	66 44 0f 59 c3       	mulpd  xmm8,xmm3
  e12038:	66 44 0f 5c c5       	subpd  xmm8,xmm5
  e1203d:	66 0f 59 da          	mulpd  xmm3,xmm2
  e12041:	66 0f 59 c8          	mulpd  xmm1,xmm0
  e12045:	66 0f 58 cb          	addpd  xmm1,xmm3
  e12049:	66 45 0f 10 4d d0    	movupd xmm9,XMMWORD PTR [r13-0x30]
  e1204f:	66 45 0f 10 55 e0    	movupd xmm10,XMMWORD PTR [r13-0x20]
  e12055:	66 41 0f 10 6d f0    	movupd xmm5,XMMWORD PTR [r13-0x10]
  e1205b:	66 41 0f 10 7d 00    	movupd xmm7,XMMWORD PTR [r13+0x0]
  e12061:	66 41 0f 28 d9       	movapd xmm3,xmm9
  e12066:	66 41 0f 59 d8       	mulpd  xmm3,xmm8
  e1206b:	66 45 0f 59 c2       	mulpd  xmm8,xmm10
  e12070:	66 44 0f 59 d1       	mulpd  xmm10,xmm1
  e12075:	66 41 0f 5c da       	subpd  xmm3,xmm10
  e1207a:	66 41 0f 59 c9       	mulpd  xmm1,xmm9
  e1207f:	66 41 0f 58 c8       	addpd  xmm1,xmm8
  e12084:	66 44 0f 28 c2       	movapd xmm8,xmm2
  e12089:	66 44 0f 59 c4       	mulpd  xmm8,xmm4
  e1208e:	66 44 0f 28 c8       	movapd xmm9,xmm0
  e12093:	66 44 0f 59 ce       	mulpd  xmm9,xmm6
  e12098:	66 45 0f 5c c8       	subpd  xmm9,xmm8
  e1209d:	66 0f 59 d6          	mulpd  xmm2,xmm6
  e120a1:	66 0f 59 c4          	mulpd  xmm0,xmm4
  e120a5:	66 0f 58 c2          	addpd  xmm0,xmm2
  e120a9:	66 0f 28 d5          	movapd xmm2,xmm5
  e120ad:	66 41 0f 59 d1       	mulpd  xmm2,xmm9
  e120b2:	66 44 0f 59 cf       	mulpd  xmm9,xmm7
  e120b7:	66 0f 59 f8          	mulpd  xmm7,xmm0
  e120bb:	66 0f 5c d7          	subpd  xmm2,xmm7
  e120bf:	66 0f 59 c5          	mulpd  xmm0,xmm5
  e120c3:	66 41 0f 58 c1       	addpd  xmm0,xmm9
  e120c8:	66 0f 28 e3          	movapd xmm4,xmm3
  e120cc:	66 0f 14 e2          	unpcklpd xmm4,xmm2
  e120d0:	0f 12 d3             	movhlps xmm2,xmm3
  e120d3:	66 0f 28 d9          	movapd xmm3,xmm1
  e120d7:	66 0f 14 d8          	unpcklpd xmm3,xmm0
  e120db:	0f 12 c1             	movhlps xmm0,xmm1
  e120de:	80 bc 24 88 00 00 00 	cmp    BYTE PTR [rsp+0x88],0x0
  e120e5:	00 
  e120e6:	0f 85 c4 fe ff ff    	jne    e11fb0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1f30>
  e120ec:	66 0f 11 66 e0       	movupd XMMWORD PTR [rsi-0x20],xmm4
  e120f1:	66 0f 11 5e f0       	movupd XMMWORD PTR [rsi-0x10],xmm3
  e120f6:	0f 11 16             	movups XMMWORD PTR [rsi],xmm2
  e120f9:	0f 11 46 10          	movups XMMWORD PTR [rsi+0x10],xmm0
  e120fd:	e9 cc fe ff ff       	jmp    e11fce <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1f4e>
  e12102:	80 bc 24 88 00 00 00 	cmp    BYTE PTR [rsp+0x88],0x0
  e12109:	00 
  e1210a:	74 39                	je     e12145 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x20c5>
  e1210c:	0f ae f8             	sfence
  e1210f:	f6 84 24 c0 00 00 00 	test   BYTE PTR [rsp+0xc0],0x3f
  e12116:	3f 
  e12117:	0f 94 c0             	sete   al
  e1211a:	89 44 24 40          	mov    DWORD PTR [rsp+0x40],eax
  e1211e:	eb 2d                	jmp    e1214d <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x20cd>
  e12120:	80 bc 24 88 00 00 00 	cmp    BYTE PTR [rsp+0x88],0x0
  e12127:	00 
  e12128:	0f 84 48 0f 00 00    	je     e13076 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2ff6>
  e1212e:	0f ae f8             	sfence
  e12131:	f6 84 24 c0 00 00 00 	test   BYTE PTR [rsp+0xc0],0x3f
  e12138:	3f 
  e12139:	0f 94 c0             	sete   al
  e1213c:	89 44 24 40          	mov    DWORD PTR [rsp+0x40],eax
  e12140:	e9 39 0f 00 00       	jmp    e1307e <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2ffe>
  e12145:	c7 44 24 40 00 00 00 	mov    DWORD PTR [rsp+0x40],0x0
  e1214c:	00 
  e1214d:	4c 89 e0             	mov    rax,r12
  e12150:	48 d1 e8             	shr    rax,1
  e12153:	4d 89 e0             	mov    r8,r12
  e12156:	49 29 c0             	sub    r8,rax
  e12159:	0f 84 47 1e 00 00    	je     e13fa6 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3f26>
  e1215f:	4b 8d 04 7f          	lea    rax,[r15+r15*2]
  e12163:	48 8b 4c 24 30       	mov    rcx,QWORD PTR [rsp+0x30]
  e12168:	48 8d 14 c1          	lea    rdx,[rcx+rax*8]
  e1216c:	48 89 54 24 38       	mov    QWORD PTR [rsp+0x38],rdx
  e12171:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e12175:	48 01 d2             	add    rdx,rdx
  e12178:	48 89 94 24 88 00 00 	mov    QWORD PTR [rsp+0x88],rdx
  e1217f:	00 
  e12180:	48 8d 44 c1 20       	lea    rax,[rcx+rax*8+0x20]
  e12185:	48 89 44 24 48       	mov    QWORD PTR [rsp+0x48],rax
  e1218a:	48 8b 44 24 50       	mov    rax,QWORD PTR [rsp+0x50]
  e1218f:	48 ff c8             	dec    rax
  e12192:	48 89 44 24 68       	mov    QWORD PTR [rsp+0x68],rax
  e12197:	4c 89 e0             	mov    rax,r12
  e1219a:	48 c1 e0 04          	shl    rax,0x4
  e1219e:	48 89 84 24 b8 00 00 	mov    QWORD PTR [rsp+0xb8],rax
  e121a5:	00 
  e121a6:	31 f6                	xor    esi,esi
  e121a8:	eb 33                	jmp    e121dd <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x215d>
  e121aa:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  e121b0:	48 8b 74 24 70       	mov    rsi,QWORD PTR [rsp+0x70]
  e121b5:	48 83 c6 02          	add    rsi,0x2
  e121b9:	4c 8b 44 24 28       	mov    r8,QWORD PTR [rsp+0x28]
  e121be:	49 ff c8             	dec    r8
  e121c1:	48 83 84 24 c0 00 00 	add    QWORD PTR [rsp+0xc0],0x20
  e121c8:	00 20 
  e121ca:	4d 85 c0             	test   r8,r8
  e121cd:	4c 8b 64 24 08       	mov    r12,QWORD PTR [rsp+0x8]
  e121d2:	4c 8b 6c 24 58       	mov    r13,QWORD PTR [rsp+0x58]
  e121d7:	0f 84 c9 1d 00 00    	je     e13fa6 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3f26>
  e121dd:	4c 89 e1             	mov    rcx,r12
  e121e0:	48 29 f1             	sub    rcx,rsi
  e121e3:	48 83 f9 02          	cmp    rcx,0x2
  e121e7:	b8 02 00 00 00       	mov    eax,0x2
  e121ec:	48 0f 42 c1          	cmovb  rax,rcx
  e121f0:	48 89 44 24 20       	mov    QWORD PTR [rsp+0x20],rax
  e121f5:	80 bc 24 d8 00 00 00 	cmp    BYTE PTR [rsp+0xd8],0x0
  e121fc:	00 
  e121fd:	4c 89 44 24 28       	mov    QWORD PTR [rsp+0x28],r8
  e12202:	48 89 74 24 70       	mov    QWORD PTR [rsp+0x70],rsi
  e12207:	48 89 8c 24 90 00 00 	mov    QWORD PTR [rsp+0x90],rcx
  e1220e:	00 
  e1220f:	74 6f                	je     e12280 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2200>
  e12211:	48 83 7c 24 50 00    	cmp    QWORD PTR [rsp+0x50],0x0
  e12217:	0f 84 b1 37 00 00    	je     e159ce <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x594e>
  e1221d:	48 8b 44 24 38       	mov    rax,QWORD PTR [rsp+0x38]
  e12222:	48 8b 00             	mov    rax,QWORD PTR [rax]
  e12225:	48 83 c0 fe          	add    rax,0xfffffffffffffffe
  e12229:	48 83 f8 0d          	cmp    rax,0xd
  e1222d:	0f 87 5f 37 00 00    	ja     e15992 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5912>
  e12233:	48 8b 8c 24 88 00 00 	mov    rcx,QWORD PTR [rsp+0x88]
  e1223a:	00 
  e1223b:	48 0f af ce          	imul   rcx,rsi
  e1223f:	48 8b 94 24 98 00 00 	mov    rdx,QWORD PTR [rsp+0x98]
  e12246:	00 
  e12247:	48 8d 3c ca          	lea    rdi,[rdx+rcx*8]
  e1224b:	48 8d 0d 92 19 29 ff 	lea    rcx,[rip+0xffffffffff291992]        # a3be4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x31094>
  e12252:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  e12256:	48 01 c8             	add    rax,rcx
  e12259:	ff e0                	jmp    rax
  e1225b:	4c 89 ee             	mov    rsi,r13
  e1225e:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e12262:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e12267:	e8 d4 be ff ff       	call   e0e140 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e1226c:	4d 89 ee             	mov    r14,r13
  e1226f:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e12275:	0f 83 95 02 00 00    	jae    e12510 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2490>
  e1227b:	e9 b0 0c 00 00       	jmp    e12f30 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2eb0>
  e12280:	48 89 f7             	mov    rdi,rsi
  e12283:	48 c1 e7 04          	shl    rdi,0x4
  e12287:	48 03 bc 24 98 00 00 	add    rdi,QWORD PTR [rsp+0x98]
  e1228e:	00 
  e1228f:	48 83 f9 01          	cmp    rcx,0x1
  e12293:	76 5b                	jbe    e122f0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2270>
  e12295:	48 83 7c 24 50 00    	cmp    QWORD PTR [rsp+0x50],0x0
  e1229b:	0f 84 2d 37 00 00    	je     e159ce <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x594e>
  e122a1:	48 8b 44 24 38       	mov    rax,QWORD PTR [rsp+0x38]
  e122a6:	48 8b 00             	mov    rax,QWORD PTR [rax]
  e122a9:	48 83 c0 fe          	add    rax,0xfffffffffffffffe
  e122ad:	48 83 f8 0d          	cmp    rax,0xd
  e122b1:	0f 87 db 36 00 00    	ja     e15992 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5912>
  e122b7:	48 8d 0d b2 18 29 ff 	lea    rcx,[rip+0xffffffffff2918b2]        # a3b70 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x31020>
  e122be:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  e122c2:	48 01 c8             	add    rax,rcx
  e122c5:	ff e0                	jmp    rax
  e122c7:	4c 89 ee             	mov    rsi,r13
  e122ca:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e122ce:	4c 89 e1             	mov    rcx,r12
  e122d1:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e122d6:	e8 a5 bd ff ff       	call   e0e080 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e122db:	4d 89 ee             	mov    r14,r13
  e122de:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e122e4:	0f 83 1c 08 00 00    	jae    e12b06 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2a86>
  e122ea:	e9 41 0c 00 00       	jmp    e12f30 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2eb0>
  e122ef:	90                   	nop
  e122f0:	48 83 7c 24 50 00    	cmp    QWORD PTR [rsp+0x50],0x0
  e122f6:	0f 84 d2 36 00 00    	je     e159ce <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x594e>
  e122fc:	48 8b 44 24 38       	mov    rax,QWORD PTR [rsp+0x38]
  e12301:	48 8b 00             	mov    rax,QWORD PTR [rax]
  e12304:	48 83 c0 fe          	add    rax,0xfffffffffffffffe
  e12308:	48 83 f8 0d          	cmp    rax,0xd
  e1230c:	0f 87 80 36 00 00    	ja     e15992 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5912>
  e12312:	48 8d 0d e3 17 29 ff 	lea    rcx,[rip+0xffffffffff2917e3]        # a3afc <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x30fac>
  e12319:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  e1231d:	48 01 c8             	add    rax,rcx
  e12320:	ff e0                	jmp    rax
  e12322:	4c 89 ee             	mov    rsi,r13
  e12325:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e12329:	4c 89 e1             	mov    rcx,r12
  e1232c:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  e12331:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e12336:	e8 85 31 fd ff       	call   de54c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e1233b:	4d 89 ee             	mov    r14,r13
  e1233e:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e12344:	0f 83 e1 09 00 00    	jae    e12d2b <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2cab>
  e1234a:	e9 e1 0b 00 00       	jmp    e12f30 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2eb0>
  e1234f:	4c 89 ee             	mov    rsi,r13
  e12352:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e12356:	e8 a5 8a fe ff       	call   dfae00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e1235b:	4d 89 ee             	mov    r14,r13
  e1235e:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e12364:	0f 83 a6 01 00 00    	jae    e12510 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2490>
  e1236a:	e9 c1 0b 00 00       	jmp    e12f30 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2eb0>
  e1236f:	4c 89 ee             	mov    rsi,r13
  e12372:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e12376:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e1237b:	e8 80 03 fe ff       	call   df2700 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e12380:	4d 89 ee             	mov    r14,r13
  e12383:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e12389:	0f 83 81 01 00 00    	jae    e12510 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2490>
  e1238f:	e9 9c 0b 00 00       	jmp    e12f30 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2eb0>
  e12394:	4c 89 ee             	mov    rsi,r13
  e12397:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e1239b:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e123a0:	e8 5b 44 ff ff       	call   e06800 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e123a5:	4d 89 ee             	mov    r14,r13
  e123a8:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e123ae:	0f 83 5c 01 00 00    	jae    e12510 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2490>
  e123b4:	e9 77 0b 00 00       	jmp    e12f30 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2eb0>
  e123b9:	4c 89 ee             	mov    rsi,r13
  e123bc:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e123c0:	e8 fb 05 fe ff       	call   df29c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e123c5:	4d 89 ee             	mov    r14,r13
  e123c8:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e123ce:	0f 83 3c 01 00 00    	jae    e12510 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2490>
  e123d4:	e9 57 0b 00 00       	jmp    e12f30 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2eb0>
  e123d9:	4c 89 ee             	mov    rsi,r13
  e123dc:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e123e0:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e123e5:	e8 96 9e fe ff       	call   dfc280 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e123ea:	4d 89 ee             	mov    r14,r13
  e123ed:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e123f3:	0f 83 17 01 00 00    	jae    e12510 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2490>
  e123f9:	e9 32 0b 00 00       	jmp    e12f30 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2eb0>
  e123fe:	4c 89 ee             	mov    rsi,r13
  e12401:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e12405:	e8 b6 67 ff ff       	call   e08bc0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e1240a:	4d 89 ee             	mov    r14,r13
  e1240d:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e12413:	0f 83 f7 00 00 00    	jae    e12510 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2490>
  e12419:	e9 12 0b 00 00       	jmp    e12f30 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2eb0>
  e1241e:	4c 89 ee             	mov    rsi,r13
  e12421:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e12425:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e1242a:	e8 51 95 fd ff       	call   deb980 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e1242f:	4d 89 ee             	mov    r14,r13
  e12432:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e12438:	0f 83 d2 00 00 00    	jae    e12510 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2490>
  e1243e:	e9 ed 0a 00 00       	jmp    e12f30 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2eb0>
  e12443:	4c 89 ee             	mov    rsi,r13
  e12446:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e1244a:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e1244f:	e8 ec 9c fe ff       	call   dfc140 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e12454:	4d 89 ee             	mov    r14,r13
  e12457:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e1245d:	0f 83 ad 00 00 00    	jae    e12510 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2490>
  e12463:	e9 c8 0a 00 00       	jmp    e12f30 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2eb0>
  e12468:	4c 89 ee             	mov    rsi,r13
  e1246b:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e1246f:	e8 8c b6 ff ff       	call   e0db00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e12474:	4d 89 ee             	mov    r14,r13
  e12477:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e1247d:	0f 83 8d 00 00 00    	jae    e12510 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2490>
  e12483:	e9 a8 0a 00 00       	jmp    e12f30 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2eb0>
  e12488:	4c 89 ee             	mov    rsi,r13
  e1248b:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e1248f:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e12494:	e8 27 48 fd ff       	call   de6cc0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e12499:	4d 89 ee             	mov    r14,r13
  e1249c:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e124a2:	73 6c                	jae    e12510 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2490>
  e124a4:	e9 87 0a 00 00       	jmp    e12f30 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2eb0>
  e124a9:	4c 89 ee             	mov    rsi,r13
  e124ac:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e124b0:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e124b5:	e8 c6 a9 fe ff       	call   dfce80 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e124ba:	4d 89 ee             	mov    r14,r13
  e124bd:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e124c3:	73 4b                	jae    e12510 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2490>
  e124c5:	e9 66 0a 00 00       	jmp    e12f30 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2eb0>
  e124ca:	4c 89 ee             	mov    rsi,r13
  e124cd:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e124d1:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e124d6:	e8 a5 56 fd ff       	call   de7b80 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e124db:	4d 89 ee             	mov    r14,r13
  e124de:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e124e4:	73 2a                	jae    e12510 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2490>
  e124e6:	e9 45 0a 00 00       	jmp    e12f30 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2eb0>
  e124eb:	4c 89 ee             	mov    rsi,r13
  e124ee:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e124f2:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e124f7:	e8 c4 f5 fd ff       	call   df1ac0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e124fc:	4d 89 ee             	mov    r14,r13
  e124ff:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e12505:	0f 82 25 0a 00 00    	jb     e12f30 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2eb0>
  e1250b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  e12510:	48 8b 44 24 38       	mov    rax,QWORD PTR [rsp+0x38]
  e12515:	48 8b 18             	mov    rbx,QWORD PTR [rax]
  e12518:	4c 8b 64 24 68       	mov    r12,QWORD PTR [rsp+0x68]
  e1251d:	4c 8b 6c 24 48       	mov    r13,QWORD PTR [rsp+0x48]
  e12522:	48 8b 44 24 58       	mov    rax,QWORD PTR [rsp+0x58]
  e12527:	4c 8b 7c 24 60       	mov    r15,QWORD PTR [rsp+0x60]
  e1252c:	eb 46                	jmp    e12574 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x24f4>
  e1252e:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e12533:	0f 29 84 24 60 01 00 	movaps XMMWORD PTR [rsp+0x160],xmm0
  e1253a:	00 
  e1253b:	4c 89 ff             	mov    rdi,r15
  e1253e:	4c 89 f6             	mov    rsi,r14
  e12541:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e12545:	48 89 d9             	mov    rcx,rbx
  e12548:	4c 8d 8c 24 60 01 00 	lea    r9,[rsp+0x160]
  e1254f:	00 
  e12550:	e8 eb 94 f3 ff       	call   d4ba40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e12555:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  e1255c:	00 00 00 00 
  e12560:	48 0f af dd          	imul   rbx,rbp
  e12564:	49 83 c5 18          	add    r13,0x18
  e12568:	4c 89 f0             	mov    rax,r14
  e1256b:	49 ff cc             	dec    r12
  e1256e:	0f 84 bc 09 00 00    	je     e12f30 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2eb0>
  e12574:	4d 89 fe             	mov    r14,r15
  e12577:	49 89 c7             	mov    r15,rax
  e1257a:	49 8b 6d f8          	mov    rbp,QWORD PTR [r13-0x8]
  e1257e:	4d 8b 45 00          	mov    r8,QWORD PTR [r13+0x0]
  e12582:	4c 03 44 24 30       	add    r8,QWORD PTR [rsp+0x30]
  e12587:	48 89 ac 24 00 01 00 	mov    QWORD PTR [rsp+0x100],rbp
  e1258e:	00 
  e1258f:	48 8d 45 fe          	lea    rax,[rbp-0x2]
  e12593:	48 83 f8 0e          	cmp    rax,0xe
  e12597:	0f 87 8b 33 00 00    	ja     e15928 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x58a8>
  e1259d:	48 8d 0d 78 16 29 ff 	lea    rcx,[rip+0xffffffffff291678]        # a3c1c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x310cc>
  e125a4:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  e125a8:	48 01 c8             	add    rax,rcx
  e125ab:	ff e0                	jmp    rax
  e125ad:	4c 89 ff             	mov    rdi,r15
  e125b0:	4c 89 f6             	mov    rsi,r14
  e125b3:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e125b7:	48 89 d9             	mov    rcx,rbx
  e125ba:	e8 c1 fc f2 ff       	call   d42280 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e125bf:	eb 9f                	jmp    e12560 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x24e0>
  e125c1:	4c 89 ff             	mov    rdi,r15
  e125c4:	4c 89 f6             	mov    rsi,r14
  e125c7:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e125cb:	48 89 d9             	mov    rcx,rbx
  e125ce:	e8 6d 51 f3 ff       	call   d47740 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e125d3:	eb 8b                	jmp    e12560 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x24e0>
  e125d5:	4c 89 ff             	mov    rdi,r15
  e125d8:	4c 89 f6             	mov    rsi,r14
  e125db:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e125df:	48 89 d9             	mov    rcx,rbx
  e125e2:	e8 d9 06 f3 ff       	call   d42cc0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e125e7:	e9 74 ff ff ff       	jmp    e12560 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x24e0>
  e125ec:	4c 89 ff             	mov    rdi,r15
  e125ef:	4c 89 f6             	mov    rsi,r14
  e125f2:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e125f6:	48 89 d9             	mov    rcx,rbx
  e125f9:	e8 02 6a f3 ff       	call   d49000 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e125fe:	e9 5d ff ff ff       	jmp    e12560 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x24e0>
  e12603:	4c 89 ff             	mov    rdi,r15
  e12606:	4c 89 f6             	mov    rsi,r14
  e12609:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e1260d:	48 89 d9             	mov    rcx,rbx
  e12610:	e8 6b 30 f3 ff       	call   d45680 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e12615:	e9 46 ff ff ff       	jmp    e12560 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x24e0>
  e1261a:	4c 89 ff             	mov    rdi,r15
  e1261d:	4c 89 f6             	mov    rsi,r14
  e12620:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e12624:	48 89 d9             	mov    rcx,rbx
  e12627:	e8 14 00 f3 ff       	call   d42640 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e1262c:	e9 2f ff ff ff       	jmp    e12560 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x24e0>
  e12631:	4c 89 ff             	mov    rdi,r15
  e12634:	4c 89 f6             	mov    rsi,r14
  e12637:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e1263b:	48 89 d9             	mov    rcx,rbx
  e1263e:	e8 7d 02 f3 ff       	call   d428c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e12643:	e9 18 ff ff ff       	jmp    e12560 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x24e0>
  e12648:	4c 89 ff             	mov    rdi,r15
  e1264b:	4c 89 f6             	mov    rsi,r14
  e1264e:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e12652:	48 89 d9             	mov    rcx,rbx
  e12655:	e8 a6 19 f3 ff       	call   d44000 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e1265a:	e9 01 ff ff ff       	jmp    e12560 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x24e0>
  e1265f:	4c 89 ff             	mov    rdi,r15
  e12662:	4c 89 f6             	mov    rsi,r14
  e12665:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e12669:	48 89 d9             	mov    rcx,rbx
  e1266c:	e8 8f fd f2 ff       	call   d42400 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e12671:	e9 ea fe ff ff       	jmp    e12560 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x24e0>
  e12676:	4c 89 ff             	mov    rdi,r15
  e12679:	4c 89 f6             	mov    rsi,r14
  e1267c:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e12680:	48 89 d9             	mov    rcx,rbx
  e12683:	e8 f8 0a f3 ff       	call   d43180 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e12688:	e9 d3 fe ff ff       	jmp    e12560 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x24e0>
  e1268d:	4c 89 ff             	mov    rdi,r15
  e12690:	4c 89 f6             	mov    rsi,r14
  e12693:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e12697:	48 89 d9             	mov    rcx,rbx
  e1269a:	e8 21 7e f3 ff       	call   d4a4c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e1269f:	e9 bc fe ff ff       	jmp    e12560 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x24e0>
  e126a4:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e126a9:	0f 29 84 24 60 01 00 	movaps XMMWORD PTR [rsp+0x160],xmm0
  e126b0:	00 
  e126b1:	4c 89 ff             	mov    rdi,r15
  e126b4:	4c 89 f6             	mov    rsi,r14
  e126b7:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e126bb:	48 89 d9             	mov    rcx,rbx
  e126be:	4c 8d 8c 24 60 01 00 	lea    r9,[rsp+0x160]
  e126c5:	00 
  e126c6:	e8 35 12 f3 ff       	call   d43900 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e126cb:	e9 90 fe ff ff       	jmp    e12560 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x24e0>
  e126d0:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e126d5:	0f 29 84 24 60 01 00 	movaps XMMWORD PTR [rsp+0x160],xmm0
  e126dc:	00 
  e126dd:	4c 89 ff             	mov    rdi,r15
  e126e0:	4c 89 f6             	mov    rsi,r14
  e126e3:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e126e7:	48 89 d9             	mov    rcx,rbx
  e126ea:	4c 8d 8c 24 60 01 00 	lea    r9,[rsp+0x160]
  e126f1:	00 
  e126f2:	e8 49 42 f3 ff       	call   d46940 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e126f7:	e9 64 fe ff ff       	jmp    e12560 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x24e0>
  e126fc:	4c 89 ff             	mov    rdi,r15
  e126ff:	4c 89 f6             	mov    rsi,r14
  e12702:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e12706:	48 89 d9             	mov    rcx,rbx
  e12709:	e8 72 23 f3 ff       	call   d44a80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e1270e:	e9 4d fe ff ff       	jmp    e12560 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x24e0>
  e12713:	4c 89 ee             	mov    rsi,r13
  e12716:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e1271a:	4c 89 e1             	mov    rcx,r12
  e1271d:	e8 de 85 ff ff       	call   e0ad00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e12722:	4d 89 ee             	mov    r14,r13
  e12725:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e1272b:	0f 83 d5 03 00 00    	jae    e12b06 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2a86>
  e12731:	e9 fa 07 00 00       	jmp    e12f30 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2eb0>
  e12736:	4c 89 ee             	mov    rsi,r13
  e12739:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e1273d:	4c 89 e1             	mov    rcx,r12
  e12740:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  e12745:	e8 b6 b1 fe ff       	call   dfd900 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e1274a:	4d 89 ee             	mov    r14,r13
  e1274d:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e12753:	0f 83 d2 05 00 00    	jae    e12d2b <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2cab>
  e12759:	e9 d2 07 00 00       	jmp    e12f30 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2eb0>
  e1275e:	4c 89 ee             	mov    rsi,r13
  e12761:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e12765:	4c 89 e1             	mov    rcx,r12
  e12768:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e1276d:	e8 4e 22 fe ff       	call   df49c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e12772:	4d 89 ee             	mov    r14,r13
  e12775:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e1277b:	0f 83 85 03 00 00    	jae    e12b06 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2a86>
  e12781:	e9 aa 07 00 00       	jmp    e12f30 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2eb0>
  e12786:	4c 89 ee             	mov    rsi,r13
  e12789:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e1278d:	4c 89 e1             	mov    rcx,r12
  e12790:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  e12795:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e1279a:	e8 61 9f fe ff       	call   dfc700 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e1279f:	4d 89 ee             	mov    r14,r13
  e127a2:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e127a8:	0f 83 7d 05 00 00    	jae    e12d2b <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2cab>
  e127ae:	e9 7d 07 00 00       	jmp    e12f30 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2eb0>
  e127b3:	4c 89 ee             	mov    rsi,r13
  e127b6:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e127ba:	4c 89 e1             	mov    rcx,r12
  e127bd:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e127c2:	e8 b9 cd fe ff       	call   dff580 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e127c7:	4d 89 ee             	mov    r14,r13
  e127ca:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e127d0:	0f 83 30 03 00 00    	jae    e12b06 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2a86>
  e127d6:	e9 55 07 00 00       	jmp    e12f30 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2eb0>
  e127db:	4c 89 ee             	mov    rsi,r13
  e127de:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e127e2:	4c 89 e1             	mov    rcx,r12
  e127e5:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  e127ea:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e127ef:	e8 4c d7 fd ff       	call   deff40 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e127f4:	4d 89 ee             	mov    r14,r13
  e127f7:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e127fd:	0f 83 28 05 00 00    	jae    e12d2b <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2cab>
  e12803:	e9 28 07 00 00       	jmp    e12f30 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2eb0>
  e12808:	4c 89 ee             	mov    rsi,r13
  e1280b:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e1280f:	4c 89 e1             	mov    rcx,r12
  e12812:	e8 29 3e fe ff       	call   df6640 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e12817:	4d 89 ee             	mov    r14,r13
  e1281a:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e12820:	0f 83 e0 02 00 00    	jae    e12b06 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2a86>
  e12826:	e9 05 07 00 00       	jmp    e12f30 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2eb0>
  e1282b:	4c 89 ee             	mov    rsi,r13
  e1282e:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e12832:	4c 89 e1             	mov    rcx,r12
  e12835:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  e1283a:	e8 01 a8 fd ff       	call   ded040 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e1283f:	4d 89 ee             	mov    r14,r13
  e12842:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e12848:	0f 83 dd 04 00 00    	jae    e12d2b <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2cab>
  e1284e:	e9 dd 06 00 00       	jmp    e12f30 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2eb0>
  e12853:	4c 89 ee             	mov    rsi,r13
  e12856:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e1285a:	4c 89 e1             	mov    rcx,r12
  e1285d:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e12862:	e8 19 dc fe ff       	call   e00480 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e12867:	4d 89 ee             	mov    r14,r13
  e1286a:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e12870:	0f 83 90 02 00 00    	jae    e12b06 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2a86>
  e12876:	e9 b5 06 00 00       	jmp    e12f30 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2eb0>
  e1287b:	4c 89 ee             	mov    rsi,r13
  e1287e:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e12882:	4c 89 e1             	mov    rcx,r12
  e12885:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  e1288a:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e1288f:	e8 2c aa fe ff       	call   dfd2c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e12894:	4d 89 ee             	mov    r14,r13
  e12897:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e1289d:	0f 83 88 04 00 00    	jae    e12d2b <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2cab>
  e128a3:	e9 88 06 00 00       	jmp    e12f30 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2eb0>
  e128a8:	4c 89 ee             	mov    rsi,r13
  e128ab:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e128af:	4c 89 e1             	mov    rcx,r12
  e128b2:	e8 c9 8d fd ff       	call   deb680 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e128b7:	4d 89 ee             	mov    r14,r13
  e128ba:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e128c0:	0f 83 40 02 00 00    	jae    e12b06 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2a86>
  e128c6:	e9 65 06 00 00       	jmp    e12f30 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2eb0>
  e128cb:	4c 89 ee             	mov    rsi,r13
  e128ce:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e128d2:	4c 89 e1             	mov    rcx,r12
  e128d5:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  e128da:	e8 21 0e fe ff       	call   df3700 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e128df:	4d 89 ee             	mov    r14,r13
  e128e2:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e128e8:	0f 83 3d 04 00 00    	jae    e12d2b <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2cab>
  e128ee:	e9 3d 06 00 00       	jmp    e12f30 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2eb0>
  e128f3:	4c 89 ee             	mov    rsi,r13
  e128f6:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e128fa:	4c 89 e1             	mov    rcx,r12
  e128fd:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e12902:	e8 f9 cf ff ff       	call   e0f900 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e12907:	4d 89 ee             	mov    r14,r13
  e1290a:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e12910:	0f 83 f0 01 00 00    	jae    e12b06 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2a86>
  e12916:	e9 15 06 00 00       	jmp    e12f30 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2eb0>
  e1291b:	4c 89 ee             	mov    rsi,r13
  e1291e:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e12922:	4c 89 e1             	mov    rcx,r12
  e12925:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  e1292a:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e1292f:	e8 0c 31 ff ff       	call   e05a40 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e12934:	4d 89 ee             	mov    r14,r13
  e12937:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e1293d:	0f 83 e8 03 00 00    	jae    e12d2b <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2cab>
  e12943:	e9 e8 05 00 00       	jmp    e12f30 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2eb0>
  e12948:	4c 89 ee             	mov    rsi,r13
  e1294b:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e1294f:	4c 89 e1             	mov    rcx,r12
  e12952:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e12957:	e8 24 ae fe ff       	call   dfd780 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e1295c:	4d 89 ee             	mov    r14,r13
  e1295f:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e12965:	0f 83 9b 01 00 00    	jae    e12b06 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2a86>
  e1296b:	e9 c0 05 00 00       	jmp    e12f30 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2eb0>
  e12970:	4c 89 ee             	mov    rsi,r13
  e12973:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e12977:	4c 89 e1             	mov    rcx,r12
  e1297a:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  e1297f:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e12984:	e8 37 36 fe ff       	call   df5fc0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e12989:	4d 89 ee             	mov    r14,r13
  e1298c:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e12992:	0f 83 93 03 00 00    	jae    e12d2b <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2cab>
  e12998:	e9 93 05 00 00       	jmp    e12f30 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2eb0>
  e1299d:	4c 89 ee             	mov    rsi,r13
  e129a0:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e129a4:	4c 89 e1             	mov    rcx,r12
  e129a7:	e8 14 87 fd ff       	call   deb0c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e129ac:	4d 89 ee             	mov    r14,r13
  e129af:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e129b5:	0f 83 4b 01 00 00    	jae    e12b06 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2a86>
  e129bb:	e9 70 05 00 00       	jmp    e12f30 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2eb0>
  e129c0:	4c 89 ee             	mov    rsi,r13
  e129c3:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e129c7:	4c 89 e1             	mov    rcx,r12
  e129ca:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  e129cf:	e8 2c 38 fd ff       	call   de6200 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e129d4:	4d 89 ee             	mov    r14,r13
  e129d7:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e129dd:	0f 83 48 03 00 00    	jae    e12d2b <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2cab>
  e129e3:	e9 48 05 00 00       	jmp    e12f30 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2eb0>
  e129e8:	4c 89 ee             	mov    rsi,r13
  e129eb:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e129ef:	4c 89 e1             	mov    rcx,r12
  e129f2:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e129f7:	e8 44 64 ff ff       	call   e08e40 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e129fc:	4d 89 ee             	mov    r14,r13
  e129ff:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e12a05:	0f 83 fb 00 00 00    	jae    e12b06 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2a86>
  e12a0b:	e9 20 05 00 00       	jmp    e12f30 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2eb0>
  e12a10:	4c 89 ee             	mov    rsi,r13
  e12a13:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e12a17:	4c 89 e1             	mov    rcx,r12
  e12a1a:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  e12a1f:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e12a24:	e8 97 96 ff ff       	call   e0c0c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e12a29:	4d 89 ee             	mov    r14,r13
  e12a2c:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e12a32:	0f 83 f3 02 00 00    	jae    e12d2b <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2cab>
  e12a38:	e9 f3 04 00 00       	jmp    e12f30 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2eb0>
  e12a3d:	4c 89 ee             	mov    rsi,r13
  e12a40:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e12a44:	4c 89 e1             	mov    rcx,r12
  e12a47:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e12a4c:	e8 6f 73 ff ff       	call   e09dc0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e12a51:	4d 89 ee             	mov    r14,r13
  e12a54:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e12a5a:	0f 83 a6 00 00 00    	jae    e12b06 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2a86>
  e12a60:	e9 cb 04 00 00       	jmp    e12f30 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2eb0>
  e12a65:	4c 89 ee             	mov    rsi,r13
  e12a68:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e12a6c:	4c 89 e1             	mov    rcx,r12
  e12a6f:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  e12a74:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e12a79:	e8 c2 25 ff ff       	call   e05040 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e12a7e:	4d 89 ee             	mov    r14,r13
  e12a81:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e12a87:	0f 83 9e 02 00 00    	jae    e12d2b <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2cab>
  e12a8d:	e9 9e 04 00 00       	jmp    e12f30 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2eb0>
  e12a92:	4c 89 ee             	mov    rsi,r13
  e12a95:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e12a99:	4c 89 e1             	mov    rcx,r12
  e12a9c:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e12aa1:	e8 5a cb fd ff       	call   def600 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e12aa6:	4d 89 ee             	mov    r14,r13
  e12aa9:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e12aaf:	73 55                	jae    e12b06 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2a86>
  e12ab1:	e9 7a 04 00 00       	jmp    e12f30 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2eb0>
  e12ab6:	4c 89 ee             	mov    rsi,r13
  e12ab9:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e12abd:	4c 89 e1             	mov    rcx,r12
  e12ac0:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  e12ac5:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e12aca:	e8 b1 23 fe ff       	call   df4e80 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e12acf:	4d 89 ee             	mov    r14,r13
  e12ad2:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e12ad8:	0f 83 4d 02 00 00    	jae    e12d2b <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2cab>
  e12ade:	e9 4d 04 00 00       	jmp    e12f30 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2eb0>
  e12ae3:	4c 89 ee             	mov    rsi,r13
  e12ae6:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e12aea:	4c 89 e1             	mov    rcx,r12
  e12aed:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e12af2:	e8 09 c3 fd ff       	call   deee00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e12af7:	4d 89 ee             	mov    r14,r13
  e12afa:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e12b00:	0f 82 2a 04 00 00    	jb     e12f30 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2eb0>
  e12b06:	48 8b 44 24 38       	mov    rax,QWORD PTR [rsp+0x38]
  e12b0b:	48 8b 18             	mov    rbx,QWORD PTR [rax]
  e12b0e:	4c 8b 64 24 68       	mov    r12,QWORD PTR [rsp+0x68]
  e12b13:	4c 8b 6c 24 48       	mov    r13,QWORD PTR [rsp+0x48]
  e12b18:	48 8b 44 24 58       	mov    rax,QWORD PTR [rsp+0x58]
  e12b1d:	4c 8b 7c 24 60       	mov    r15,QWORD PTR [rsp+0x60]
  e12b22:	eb 40                	jmp    e12b64 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2ae4>
  e12b24:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e12b29:	0f 29 84 24 60 01 00 	movaps XMMWORD PTR [rsp+0x160],xmm0
  e12b30:	00 
  e12b31:	4c 89 ff             	mov    rdi,r15
  e12b34:	4c 89 f6             	mov    rsi,r14
  e12b37:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e12b3b:	48 89 d9             	mov    rcx,rbx
  e12b3e:	4c 8d 8c 24 60 01 00 	lea    r9,[rsp+0x160]
  e12b45:	00 
  e12b46:	e8 f5 8e f3 ff       	call   d4ba40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e12b4b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  e12b50:	48 0f af dd          	imul   rbx,rbp
  e12b54:	49 83 c5 18          	add    r13,0x18
  e12b58:	4c 89 f0             	mov    rax,r14
  e12b5b:	49 ff cc             	dec    r12
  e12b5e:	0f 84 cc 03 00 00    	je     e12f30 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2eb0>
  e12b64:	4d 89 fe             	mov    r14,r15
  e12b67:	49 89 c7             	mov    r15,rax
  e12b6a:	49 8b 6d f8          	mov    rbp,QWORD PTR [r13-0x8]
  e12b6e:	4d 8b 45 00          	mov    r8,QWORD PTR [r13+0x0]
  e12b72:	4c 03 44 24 30       	add    r8,QWORD PTR [rsp+0x30]
  e12b77:	48 89 ac 24 00 01 00 	mov    QWORD PTR [rsp+0x100],rbp
  e12b7e:	00 
  e12b7f:	48 8d 45 fe          	lea    rax,[rbp-0x2]
  e12b83:	48 83 f8 0e          	cmp    rax,0xe
  e12b87:	0f 87 9b 2d 00 00    	ja     e15928 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x58a8>
  e12b8d:	48 8d 0d 14 10 29 ff 	lea    rcx,[rip+0xffffffffff291014]        # a3ba8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x31058>
  e12b94:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  e12b98:	48 01 c8             	add    rax,rcx
  e12b9b:	ff e0                	jmp    rax
  e12b9d:	4c 89 ff             	mov    rdi,r15
  e12ba0:	4c 89 f6             	mov    rsi,r14
  e12ba3:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e12ba7:	48 89 d9             	mov    rcx,rbx
  e12baa:	e8 d1 f6 f2 ff       	call   d42280 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e12baf:	eb 9f                	jmp    e12b50 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2ad0>
  e12bb1:	4c 89 ff             	mov    rdi,r15
  e12bb4:	4c 89 f6             	mov    rsi,r14
  e12bb7:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e12bbb:	48 89 d9             	mov    rcx,rbx
  e12bbe:	e8 7d 4b f3 ff       	call   d47740 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e12bc3:	eb 8b                	jmp    e12b50 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2ad0>
  e12bc5:	4c 89 ff             	mov    rdi,r15
  e12bc8:	4c 89 f6             	mov    rsi,r14
  e12bcb:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e12bcf:	48 89 d9             	mov    rcx,rbx
  e12bd2:	e8 e9 00 f3 ff       	call   d42cc0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e12bd7:	e9 74 ff ff ff       	jmp    e12b50 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2ad0>
  e12bdc:	4c 89 ff             	mov    rdi,r15
  e12bdf:	4c 89 f6             	mov    rsi,r14
  e12be2:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e12be6:	48 89 d9             	mov    rcx,rbx
  e12be9:	e8 12 64 f3 ff       	call   d49000 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e12bee:	e9 5d ff ff ff       	jmp    e12b50 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2ad0>
  e12bf3:	4c 89 ff             	mov    rdi,r15
  e12bf6:	4c 89 f6             	mov    rsi,r14
  e12bf9:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e12bfd:	48 89 d9             	mov    rcx,rbx
  e12c00:	e8 7b 2a f3 ff       	call   d45680 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e12c05:	e9 46 ff ff ff       	jmp    e12b50 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2ad0>
  e12c0a:	4c 89 ff             	mov    rdi,r15
  e12c0d:	4c 89 f6             	mov    rsi,r14
  e12c10:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e12c14:	48 89 d9             	mov    rcx,rbx
  e12c17:	e8 24 fa f2 ff       	call   d42640 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e12c1c:	e9 2f ff ff ff       	jmp    e12b50 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2ad0>
  e12c21:	4c 89 ff             	mov    rdi,r15
  e12c24:	4c 89 f6             	mov    rsi,r14
  e12c27:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e12c2b:	48 89 d9             	mov    rcx,rbx
  e12c2e:	e8 8d fc f2 ff       	call   d428c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e12c33:	e9 18 ff ff ff       	jmp    e12b50 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2ad0>
  e12c38:	4c 89 ff             	mov    rdi,r15
  e12c3b:	4c 89 f6             	mov    rsi,r14
  e12c3e:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e12c42:	48 89 d9             	mov    rcx,rbx
  e12c45:	e8 b6 13 f3 ff       	call   d44000 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e12c4a:	e9 01 ff ff ff       	jmp    e12b50 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2ad0>
  e12c4f:	4c 89 ff             	mov    rdi,r15
  e12c52:	4c 89 f6             	mov    rsi,r14
  e12c55:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e12c59:	48 89 d9             	mov    rcx,rbx
  e12c5c:	e8 9f f7 f2 ff       	call   d42400 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e12c61:	e9 ea fe ff ff       	jmp    e12b50 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2ad0>
  e12c66:	4c 89 ff             	mov    rdi,r15
  e12c69:	4c 89 f6             	mov    rsi,r14
  e12c6c:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e12c70:	48 89 d9             	mov    rcx,rbx
  e12c73:	e8 08 05 f3 ff       	call   d43180 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e12c78:	e9 d3 fe ff ff       	jmp    e12b50 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2ad0>
  e12c7d:	4c 89 ff             	mov    rdi,r15
  e12c80:	4c 89 f6             	mov    rsi,r14
  e12c83:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e12c87:	48 89 d9             	mov    rcx,rbx
  e12c8a:	e8 31 78 f3 ff       	call   d4a4c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e12c8f:	e9 bc fe ff ff       	jmp    e12b50 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2ad0>
  e12c94:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e12c99:	0f 29 84 24 60 01 00 	movaps XMMWORD PTR [rsp+0x160],xmm0
  e12ca0:	00 
  e12ca1:	4c 89 ff             	mov    rdi,r15
  e12ca4:	4c 89 f6             	mov    rsi,r14
  e12ca7:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e12cab:	48 89 d9             	mov    rcx,rbx
  e12cae:	4c 8d 8c 24 60 01 00 	lea    r9,[rsp+0x160]
  e12cb5:	00 
  e12cb6:	e8 45 0c f3 ff       	call   d43900 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e12cbb:	e9 90 fe ff ff       	jmp    e12b50 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2ad0>
  e12cc0:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e12cc5:	0f 29 84 24 60 01 00 	movaps XMMWORD PTR [rsp+0x160],xmm0
  e12ccc:	00 
  e12ccd:	4c 89 ff             	mov    rdi,r15
  e12cd0:	4c 89 f6             	mov    rsi,r14
  e12cd3:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e12cd7:	48 89 d9             	mov    rcx,rbx
  e12cda:	4c 8d 8c 24 60 01 00 	lea    r9,[rsp+0x160]
  e12ce1:	00 
  e12ce2:	e8 59 3c f3 ff       	call   d46940 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e12ce7:	e9 64 fe ff ff       	jmp    e12b50 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2ad0>
  e12cec:	4c 89 ff             	mov    rdi,r15
  e12cef:	4c 89 f6             	mov    rsi,r14
  e12cf2:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e12cf6:	48 89 d9             	mov    rcx,rbx
  e12cf9:	e8 82 1d f3 ff       	call   d44a80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e12cfe:	e9 4d fe ff ff       	jmp    e12b50 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2ad0>
  e12d03:	4c 89 ee             	mov    rsi,r13
  e12d06:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e12d0a:	4c 89 e1             	mov    rcx,r12
  e12d0d:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  e12d12:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e12d17:	e8 64 bc ff ff       	call   e0e980 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e12d1c:	4d 89 ee             	mov    r14,r13
  e12d1f:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e12d25:	0f 82 05 02 00 00    	jb     e12f30 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2eb0>
  e12d2b:	48 8b 44 24 38       	mov    rax,QWORD PTR [rsp+0x38]
  e12d30:	48 8b 18             	mov    rbx,QWORD PTR [rax]
  e12d33:	4c 8b 64 24 68       	mov    r12,QWORD PTR [rsp+0x68]
  e12d38:	4c 8b 6c 24 48       	mov    r13,QWORD PTR [rsp+0x48]
  e12d3d:	48 8b 44 24 58       	mov    rax,QWORD PTR [rsp+0x58]
  e12d42:	4c 8b 7c 24 60       	mov    r15,QWORD PTR [rsp+0x60]
  e12d47:	eb 3b                	jmp    e12d84 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2d04>
  e12d49:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e12d4e:	0f 29 84 24 60 01 00 	movaps XMMWORD PTR [rsp+0x160],xmm0
  e12d55:	00 
  e12d56:	4c 89 ff             	mov    rdi,r15
  e12d59:	4c 89 f6             	mov    rsi,r14
  e12d5c:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e12d60:	48 89 d9             	mov    rcx,rbx
  e12d63:	4c 8d 8c 24 60 01 00 	lea    r9,[rsp+0x160]
  e12d6a:	00 
  e12d6b:	e8 d0 8c f3 ff       	call   d4ba40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e12d70:	48 0f af dd          	imul   rbx,rbp
  e12d74:	49 83 c5 18          	add    r13,0x18
  e12d78:	4c 89 f0             	mov    rax,r14
  e12d7b:	49 ff cc             	dec    r12
  e12d7e:	0f 84 ac 01 00 00    	je     e12f30 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2eb0>
  e12d84:	4d 89 fe             	mov    r14,r15
  e12d87:	49 89 c7             	mov    r15,rax
  e12d8a:	49 8b 6d f8          	mov    rbp,QWORD PTR [r13-0x8]
  e12d8e:	4d 8b 45 00          	mov    r8,QWORD PTR [r13+0x0]
  e12d92:	4c 03 44 24 30       	add    r8,QWORD PTR [rsp+0x30]
  e12d97:	48 89 ac 24 00 01 00 	mov    QWORD PTR [rsp+0x100],rbp
  e12d9e:	00 
  e12d9f:	48 8d 45 fe          	lea    rax,[rbp-0x2]
  e12da3:	48 83 f8 0e          	cmp    rax,0xe
  e12da7:	0f 87 7b 2b 00 00    	ja     e15928 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x58a8>
  e12dad:	48 8d 0d 80 0d 29 ff 	lea    rcx,[rip+0xffffffffff290d80]        # a3b34 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x30fe4>
  e12db4:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  e12db8:	48 01 c8             	add    rax,rcx
  e12dbb:	ff e0                	jmp    rax
  e12dbd:	4c 89 ff             	mov    rdi,r15
  e12dc0:	4c 89 f6             	mov    rsi,r14
  e12dc3:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e12dc7:	48 89 d9             	mov    rcx,rbx
  e12dca:	e8 b1 f4 f2 ff       	call   d42280 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e12dcf:	eb 9f                	jmp    e12d70 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2cf0>
  e12dd1:	4c 89 ff             	mov    rdi,r15
  e12dd4:	4c 89 f6             	mov    rsi,r14
  e12dd7:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e12ddb:	48 89 d9             	mov    rcx,rbx
  e12dde:	e8 5d 49 f3 ff       	call   d47740 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e12de3:	eb 8b                	jmp    e12d70 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2cf0>
  e12de5:	4c 89 ff             	mov    rdi,r15
  e12de8:	4c 89 f6             	mov    rsi,r14
  e12deb:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e12def:	48 89 d9             	mov    rcx,rbx
  e12df2:	e8 c9 fe f2 ff       	call   d42cc0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e12df7:	e9 74 ff ff ff       	jmp    e12d70 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2cf0>
  e12dfc:	4c 89 ff             	mov    rdi,r15
  e12dff:	4c 89 f6             	mov    rsi,r14
  e12e02:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e12e06:	48 89 d9             	mov    rcx,rbx
  e12e09:	e8 f2 61 f3 ff       	call   d49000 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e12e0e:	e9 5d ff ff ff       	jmp    e12d70 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2cf0>
  e12e13:	4c 89 ff             	mov    rdi,r15
  e12e16:	4c 89 f6             	mov    rsi,r14
  e12e19:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e12e1d:	48 89 d9             	mov    rcx,rbx
  e12e20:	e8 5b 28 f3 ff       	call   d45680 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e12e25:	e9 46 ff ff ff       	jmp    e12d70 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2cf0>
  e12e2a:	4c 89 ff             	mov    rdi,r15
  e12e2d:	4c 89 f6             	mov    rsi,r14
  e12e30:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e12e34:	48 89 d9             	mov    rcx,rbx
  e12e37:	e8 04 f8 f2 ff       	call   d42640 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e12e3c:	e9 2f ff ff ff       	jmp    e12d70 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2cf0>
  e12e41:	4c 89 ff             	mov    rdi,r15
  e12e44:	4c 89 f6             	mov    rsi,r14
  e12e47:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e12e4b:	48 89 d9             	mov    rcx,rbx
  e12e4e:	e8 6d fa f2 ff       	call   d428c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e12e53:	e9 18 ff ff ff       	jmp    e12d70 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2cf0>
  e12e58:	4c 89 ff             	mov    rdi,r15
  e12e5b:	4c 89 f6             	mov    rsi,r14
  e12e5e:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e12e62:	48 89 d9             	mov    rcx,rbx
  e12e65:	e8 96 11 f3 ff       	call   d44000 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e12e6a:	e9 01 ff ff ff       	jmp    e12d70 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2cf0>
  e12e6f:	4c 89 ff             	mov    rdi,r15
  e12e72:	4c 89 f6             	mov    rsi,r14
  e12e75:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e12e79:	48 89 d9             	mov    rcx,rbx
  e12e7c:	e8 7f f5 f2 ff       	call   d42400 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e12e81:	e9 ea fe ff ff       	jmp    e12d70 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2cf0>
  e12e86:	4c 89 ff             	mov    rdi,r15
  e12e89:	4c 89 f6             	mov    rsi,r14
  e12e8c:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e12e90:	48 89 d9             	mov    rcx,rbx
  e12e93:	e8 e8 02 f3 ff       	call   d43180 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e12e98:	e9 d3 fe ff ff       	jmp    e12d70 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2cf0>
  e12e9d:	4c 89 ff             	mov    rdi,r15
  e12ea0:	4c 89 f6             	mov    rsi,r14
  e12ea3:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e12ea7:	48 89 d9             	mov    rcx,rbx
  e12eaa:	e8 11 76 f3 ff       	call   d4a4c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e12eaf:	e9 bc fe ff ff       	jmp    e12d70 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2cf0>
  e12eb4:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e12eb9:	0f 29 84 24 60 01 00 	movaps XMMWORD PTR [rsp+0x160],xmm0
  e12ec0:	00 
  e12ec1:	4c 89 ff             	mov    rdi,r15
  e12ec4:	4c 89 f6             	mov    rsi,r14
  e12ec7:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e12ecb:	48 89 d9             	mov    rcx,rbx
  e12ece:	4c 8d 8c 24 60 01 00 	lea    r9,[rsp+0x160]
  e12ed5:	00 
  e12ed6:	e8 25 0a f3 ff       	call   d43900 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e12edb:	e9 90 fe ff ff       	jmp    e12d70 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2cf0>
  e12ee0:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e12ee5:	0f 29 84 24 60 01 00 	movaps XMMWORD PTR [rsp+0x160],xmm0
  e12eec:	00 
  e12eed:	4c 89 ff             	mov    rdi,r15
  e12ef0:	4c 89 f6             	mov    rsi,r14
  e12ef3:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e12ef7:	48 89 d9             	mov    rcx,rbx
  e12efa:	4c 8d 8c 24 60 01 00 	lea    r9,[rsp+0x160]
  e12f01:	00 
  e12f02:	e8 39 3a f3 ff       	call   d46940 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e12f07:	e9 64 fe ff ff       	jmp    e12d70 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2cf0>
  e12f0c:	4c 89 ff             	mov    rdi,r15
  e12f0f:	4c 89 f6             	mov    rsi,r14
  e12f12:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e12f16:	48 89 d9             	mov    rcx,rbx
  e12f19:	e8 62 1b f3 ff       	call   d44a80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e12f1e:	e9 4d fe ff ff       	jmp    e12d70 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2cf0>
  e12f23:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  e12f2a:	84 00 00 00 00 00 
  e12f30:	48 83 3c 24 00       	cmp    QWORD PTR [rsp],0x0
  e12f35:	4c 8d ac 24 80 01 00 	lea    r13,[rsp+0x180]
  e12f3c:	00 
  e12f3d:	48 8b ac 24 b8 00 00 	mov    rbp,QWORD PTR [rsp+0xb8]
  e12f44:	00 
  e12f45:	4c 8b a4 24 90 00 00 	mov    r12,QWORD PTR [rsp+0x90]
  e12f4c:	00 
  e12f4d:	0f 84 5d f2 ff ff    	je     e121b0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2130>
  e12f53:	80 7c 24 40 00       	cmp    BYTE PTR [rsp+0x40],0x0
  e12f58:	74 46                	je     e12fa0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2f20>
  e12f5a:	49 83 c6 10          	add    r14,0x10
  e12f5e:	48 8b 04 24          	mov    rax,QWORD PTR [rsp]
  e12f62:	48 8b 8c 24 c0 00 00 	mov    rcx,QWORD PTR [rsp+0xc0]
  e12f69:	00 
  e12f6a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  e12f70:	41 0f 10 46 f0       	movups xmm0,XMMWORD PTR [r14-0x10]
  e12f75:	41 0f 10 0e          	movups xmm1,XMMWORD PTR [r14]
  e12f79:	0f 28 d0             	movaps xmm2,xmm0
  e12f7c:	0f 16 d1             	movlhps xmm2,xmm1
  e12f7f:	66 0f 15 c1          	unpckhpd xmm0,xmm1
  e12f83:	66 0f 2b 11          	movntpd XMMWORD PTR [rcx],xmm2
  e12f87:	48 8d 51 10          	lea    rdx,[rcx+0x10]
  e12f8b:	66 0f 2b 02          	movntpd XMMWORD PTR [rdx],xmm0
  e12f8f:	48 01 e9             	add    rcx,rbp
  e12f92:	49 83 c6 20          	add    r14,0x20
  e12f96:	48 ff c8             	dec    rax
  e12f99:	75 d5                	jne    e12f70 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2ef0>
  e12f9b:	e9 10 f2 ff ff       	jmp    e121b0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2130>
  e12fa0:	48 c1 64 24 20 04    	shl    QWORD PTR [rsp+0x20],0x4
  e12fa6:	49 83 c6 10          	add    r14,0x10
  e12faa:	4c 8b 3c 24          	mov    r15,QWORD PTR [rsp]
  e12fae:	48 8b 9c 24 c0 00 00 	mov    rbx,QWORD PTR [rsp+0xc0]
  e12fb5:	00 
  e12fb6:	eb 1f                	jmp    e12fd7 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2f57>
  e12fb8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  e12fbf:	00 
  e12fc0:	0f 11 0b             	movups XMMWORD PTR [rbx],xmm1
  e12fc3:	0f 11 43 10          	movups XMMWORD PTR [rbx+0x10],xmm0
  e12fc7:	48 01 eb             	add    rbx,rbp
  e12fca:	49 83 c6 20          	add    r14,0x20
  e12fce:	49 ff cf             	dec    r15
  e12fd1:	0f 84 d9 f1 ff ff    	je     e121b0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2130>
  e12fd7:	41 0f 10 46 f0       	movups xmm0,XMMWORD PTR [r14-0x10]
  e12fdc:	41 0f 10 16          	movups xmm2,XMMWORD PTR [r14]
  e12fe0:	0f 28 c8             	movaps xmm1,xmm0
  e12fe3:	0f 16 ca             	movlhps xmm1,xmm2
  e12fe6:	66 0f 15 c2          	unpckhpd xmm0,xmm2
  e12fea:	49 83 fc 01          	cmp    r12,0x1
  e12fee:	77 d0                	ja     e12fc0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2f40>
  e12ff0:	0f 57 d2             	xorps  xmm2,xmm2
  e12ff3:	41 0f 29 95 d0 00 00 	movaps XMMWORD PTR [r13+0xd0],xmm2
  e12ffa:	00 
  e12ffb:	41 0f 29 95 c0 00 00 	movaps XMMWORD PTR [r13+0xc0],xmm2
  e13002:	00 
  e13003:	41 0f 29 95 b0 00 00 	movaps XMMWORD PTR [r13+0xb0],xmm2
  e1300a:	00 
  e1300b:	41 0f 29 95 a0 00 00 	movaps XMMWORD PTR [r13+0xa0],xmm2
  e13012:	00 
  e13013:	41 0f 29 95 90 00 00 	movaps XMMWORD PTR [r13+0x90],xmm2
  e1301a:	00 
  e1301b:	41 0f 29 95 80 00 00 	movaps XMMWORD PTR [r13+0x80],xmm2
  e13022:	00 
  e13023:	41 0f 29 55 70       	movaps XMMWORD PTR [r13+0x70],xmm2
  e13028:	41 0f 29 55 60       	movaps XMMWORD PTR [r13+0x60],xmm2
  e1302d:	41 0f 29 55 50       	movaps XMMWORD PTR [r13+0x50],xmm2
  e13032:	41 0f 29 55 40       	movaps XMMWORD PTR [r13+0x40],xmm2
  e13037:	41 0f 29 55 30       	movaps XMMWORD PTR [r13+0x30],xmm2
  e1303c:	41 0f 29 55 20       	movaps XMMWORD PTR [r13+0x20],xmm2
  e13041:	41 0f 29 55 10       	movaps XMMWORD PTR [r13+0x10],xmm2
  e13046:	41 0f 29 55 00       	movaps XMMWORD PTR [r13+0x0],xmm2
  e1304b:	0f 29 8c 24 60 01 00 	movaps XMMWORD PTR [rsp+0x160],xmm1
  e13052:	00 
  e13053:	0f 29 84 24 70 01 00 	movaps XMMWORD PTR [rsp+0x170],xmm0
  e1305a:	00 
  e1305b:	48 89 df             	mov    rdi,rbx
  e1305e:	48 8d b4 24 60 01 00 	lea    rsi,[rsp+0x160]
  e13065:	00 
  e13066:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e1306b:	ff 15 6f a6 43 00    	call   QWORD PTR [rip+0x43a66f]        # 124d6e0 <memcpy@GLIBC_2.14>
  e13071:	e9 51 ff ff ff       	jmp    e12fc7 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2f47>
  e13076:	c7 44 24 40 00 00 00 	mov    DWORD PTR [rsp+0x40],0x0
  e1307d:	00 
  e1307e:	4c 89 e0             	mov    rax,r12
  e13081:	48 d1 e8             	shr    rax,1
  e13084:	4d 89 e0             	mov    r8,r12
  e13087:	49 29 c0             	sub    r8,rax
  e1308a:	0f 84 16 0f 00 00    	je     e13fa6 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3f26>
  e13090:	4b 8d 04 7f          	lea    rax,[r15+r15*2]
  e13094:	48 8b 4c 24 30       	mov    rcx,QWORD PTR [rsp+0x30]
  e13099:	48 8d 14 c1          	lea    rdx,[rcx+rax*8]
  e1309d:	48 89 54 24 38       	mov    QWORD PTR [rsp+0x38],rdx
  e130a2:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e130a6:	48 01 d2             	add    rdx,rdx
  e130a9:	48 89 94 24 88 00 00 	mov    QWORD PTR [rsp+0x88],rdx
  e130b0:	00 
  e130b1:	48 8d 44 c1 20       	lea    rax,[rcx+rax*8+0x20]
  e130b6:	48 89 44 24 48       	mov    QWORD PTR [rsp+0x48],rax
  e130bb:	48 8b 44 24 50       	mov    rax,QWORD PTR [rsp+0x50]
  e130c0:	48 ff c8             	dec    rax
  e130c3:	48 89 44 24 68       	mov    QWORD PTR [rsp+0x68],rax
  e130c8:	4c 89 e0             	mov    rax,r12
  e130cb:	48 c1 e0 04          	shl    rax,0x4
  e130cf:	48 89 84 24 b8 00 00 	mov    QWORD PTR [rsp+0xb8],rax
  e130d6:	00 
  e130d7:	31 f6                	xor    esi,esi
  e130d9:	eb 32                	jmp    e1310d <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x308d>
  e130db:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  e130e0:	48 8b 74 24 70       	mov    rsi,QWORD PTR [rsp+0x70]
  e130e5:	48 83 c6 02          	add    rsi,0x2
  e130e9:	4c 8b 44 24 28       	mov    r8,QWORD PTR [rsp+0x28]
  e130ee:	49 ff c8             	dec    r8
  e130f1:	48 83 84 24 c0 00 00 	add    QWORD PTR [rsp+0xc0],0x20
  e130f8:	00 20 
  e130fa:	4d 85 c0             	test   r8,r8
  e130fd:	4c 8b 64 24 08       	mov    r12,QWORD PTR [rsp+0x8]
  e13102:	4c 8b 6c 24 58       	mov    r13,QWORD PTR [rsp+0x58]
  e13107:	0f 84 99 0e 00 00    	je     e13fa6 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3f26>
  e1310d:	4c 89 e1             	mov    rcx,r12
  e13110:	48 29 f1             	sub    rcx,rsi
  e13113:	48 83 f9 02          	cmp    rcx,0x2
  e13117:	b8 02 00 00 00       	mov    eax,0x2
  e1311c:	48 0f 42 c1          	cmovb  rax,rcx
  e13120:	48 89 44 24 20       	mov    QWORD PTR [rsp+0x20],rax
  e13125:	80 bc 24 d8 00 00 00 	cmp    BYTE PTR [rsp+0xd8],0x0
  e1312c:	00 
  e1312d:	4c 89 44 24 28       	mov    QWORD PTR [rsp+0x28],r8
  e13132:	48 89 74 24 70       	mov    QWORD PTR [rsp+0x70],rsi
  e13137:	48 89 8c 24 90 00 00 	mov    QWORD PTR [rsp+0x90],rcx
  e1313e:	00 
  e1313f:	74 6f                	je     e131b0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3130>
  e13141:	48 83 7c 24 50 00    	cmp    QWORD PTR [rsp+0x50],0x0
  e13147:	0f 84 81 28 00 00    	je     e159ce <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x594e>
  e1314d:	48 8b 44 24 38       	mov    rax,QWORD PTR [rsp+0x38]
  e13152:	48 8b 00             	mov    rax,QWORD PTR [rax]
  e13155:	48 83 c0 fe          	add    rax,0xfffffffffffffffe
  e13159:	48 83 f8 0d          	cmp    rax,0xd
  e1315d:	0f 87 2f 28 00 00    	ja     e15992 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5912>
  e13163:	48 8b 8c 24 88 00 00 	mov    rcx,QWORD PTR [rsp+0x88]
  e1316a:	00 
  e1316b:	48 0f af ce          	imul   rcx,rsi
  e1316f:	48 8b 94 24 98 00 00 	mov    rdx,QWORD PTR [rsp+0x98]
  e13176:	00 
  e13177:	48 8d 3c ca          	lea    rdi,[rdx+rcx*8]
  e1317b:	48 8d 0d 1e 0d 29 ff 	lea    rcx,[rip+0xffffffffff290d1e]        # a3ea0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x31350>
  e13182:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  e13186:	48 01 c8             	add    rax,rcx
  e13189:	ff e0                	jmp    rax
  e1318b:	4c 89 ee             	mov    rsi,r13
  e1318e:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e13192:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e13197:	e8 a4 af ff ff       	call   e0e140 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e1319c:	4d 89 ee             	mov    r14,r13
  e1319f:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e131a5:	0f 83 95 02 00 00    	jae    e13440 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x33c0>
  e131ab:	e9 b0 0c 00 00       	jmp    e13e60 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3de0>
  e131b0:	48 89 f7             	mov    rdi,rsi
  e131b3:	48 c1 e7 04          	shl    rdi,0x4
  e131b7:	48 03 bc 24 98 00 00 	add    rdi,QWORD PTR [rsp+0x98]
  e131be:	00 
  e131bf:	48 83 f9 01          	cmp    rcx,0x1
  e131c3:	76 5b                	jbe    e13220 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x31a0>
  e131c5:	48 83 7c 24 50 00    	cmp    QWORD PTR [rsp+0x50],0x0
  e131cb:	0f 84 fd 27 00 00    	je     e159ce <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x594e>
  e131d1:	48 8b 44 24 38       	mov    rax,QWORD PTR [rsp+0x38]
  e131d6:	48 8b 00             	mov    rax,QWORD PTR [rax]
  e131d9:	48 83 c0 fe          	add    rax,0xfffffffffffffffe
  e131dd:	48 83 f8 0d          	cmp    rax,0xd
  e131e1:	0f 87 ab 27 00 00    	ja     e15992 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5912>
  e131e7:	48 8d 0d 3e 0c 29 ff 	lea    rcx,[rip+0xffffffffff290c3e]        # a3e2c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x312dc>
  e131ee:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  e131f2:	48 01 c8             	add    rax,rcx
  e131f5:	ff e0                	jmp    rax
  e131f7:	4c 89 ee             	mov    rsi,r13
  e131fa:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e131fe:	4c 89 e1             	mov    rcx,r12
  e13201:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e13206:	e8 75 ae ff ff       	call   e0e080 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e1320b:	4d 89 ee             	mov    r14,r13
  e1320e:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e13214:	0f 83 1c 08 00 00    	jae    e13a36 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x39b6>
  e1321a:	e9 41 0c 00 00       	jmp    e13e60 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3de0>
  e1321f:	90                   	nop
  e13220:	48 83 7c 24 50 00    	cmp    QWORD PTR [rsp+0x50],0x0
  e13226:	0f 84 a2 27 00 00    	je     e159ce <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x594e>
  e1322c:	48 8b 44 24 38       	mov    rax,QWORD PTR [rsp+0x38]
  e13231:	48 8b 00             	mov    rax,QWORD PTR [rax]
  e13234:	48 83 c0 fe          	add    rax,0xfffffffffffffffe
  e13238:	48 83 f8 0d          	cmp    rax,0xd
  e1323c:	0f 87 50 27 00 00    	ja     e15992 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5912>
  e13242:	48 8d 0d 6f 0b 29 ff 	lea    rcx,[rip+0xffffffffff290b6f]        # a3db8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x31268>
  e13249:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  e1324d:	48 01 c8             	add    rax,rcx
  e13250:	ff e0                	jmp    rax
  e13252:	4c 89 ee             	mov    rsi,r13
  e13255:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e13259:	4c 89 e1             	mov    rcx,r12
  e1325c:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  e13261:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e13266:	e8 55 22 fd ff       	call   de54c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e1326b:	4d 89 ee             	mov    r14,r13
  e1326e:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e13274:	0f 83 e1 09 00 00    	jae    e13c5b <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3bdb>
  e1327a:	e9 e1 0b 00 00       	jmp    e13e60 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3de0>
  e1327f:	4c 89 ee             	mov    rsi,r13
  e13282:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e13286:	e8 75 7b fe ff       	call   dfae00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e1328b:	4d 89 ee             	mov    r14,r13
  e1328e:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e13294:	0f 83 a6 01 00 00    	jae    e13440 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x33c0>
  e1329a:	e9 c1 0b 00 00       	jmp    e13e60 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3de0>
  e1329f:	4c 89 ee             	mov    rsi,r13
  e132a2:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e132a6:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e132ab:	e8 50 f4 fd ff       	call   df2700 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e132b0:	4d 89 ee             	mov    r14,r13
  e132b3:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e132b9:	0f 83 81 01 00 00    	jae    e13440 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x33c0>
  e132bf:	e9 9c 0b 00 00       	jmp    e13e60 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3de0>
  e132c4:	4c 89 ee             	mov    rsi,r13
  e132c7:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e132cb:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e132d0:	e8 2b 35 ff ff       	call   e06800 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e132d5:	4d 89 ee             	mov    r14,r13
  e132d8:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e132de:	0f 83 5c 01 00 00    	jae    e13440 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x33c0>
  e132e4:	e9 77 0b 00 00       	jmp    e13e60 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3de0>
  e132e9:	4c 89 ee             	mov    rsi,r13
  e132ec:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e132f0:	e8 cb f6 fd ff       	call   df29c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e132f5:	4d 89 ee             	mov    r14,r13
  e132f8:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e132fe:	0f 83 3c 01 00 00    	jae    e13440 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x33c0>
  e13304:	e9 57 0b 00 00       	jmp    e13e60 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3de0>
  e13309:	4c 89 ee             	mov    rsi,r13
  e1330c:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e13310:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e13315:	e8 66 8f fe ff       	call   dfc280 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e1331a:	4d 89 ee             	mov    r14,r13
  e1331d:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e13323:	0f 83 17 01 00 00    	jae    e13440 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x33c0>
  e13329:	e9 32 0b 00 00       	jmp    e13e60 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3de0>
  e1332e:	4c 89 ee             	mov    rsi,r13
  e13331:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e13335:	e8 86 58 ff ff       	call   e08bc0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e1333a:	4d 89 ee             	mov    r14,r13
  e1333d:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e13343:	0f 83 f7 00 00 00    	jae    e13440 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x33c0>
  e13349:	e9 12 0b 00 00       	jmp    e13e60 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3de0>
  e1334e:	4c 89 ee             	mov    rsi,r13
  e13351:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e13355:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e1335a:	e8 21 86 fd ff       	call   deb980 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e1335f:	4d 89 ee             	mov    r14,r13
  e13362:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e13368:	0f 83 d2 00 00 00    	jae    e13440 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x33c0>
  e1336e:	e9 ed 0a 00 00       	jmp    e13e60 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3de0>
  e13373:	4c 89 ee             	mov    rsi,r13
  e13376:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e1337a:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e1337f:	e8 bc 8d fe ff       	call   dfc140 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e13384:	4d 89 ee             	mov    r14,r13
  e13387:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e1338d:	0f 83 ad 00 00 00    	jae    e13440 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x33c0>
  e13393:	e9 c8 0a 00 00       	jmp    e13e60 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3de0>
  e13398:	4c 89 ee             	mov    rsi,r13
  e1339b:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e1339f:	e8 5c a7 ff ff       	call   e0db00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e133a4:	4d 89 ee             	mov    r14,r13
  e133a7:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e133ad:	0f 83 8d 00 00 00    	jae    e13440 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x33c0>
  e133b3:	e9 a8 0a 00 00       	jmp    e13e60 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3de0>
  e133b8:	4c 89 ee             	mov    rsi,r13
  e133bb:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e133bf:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e133c4:	e8 f7 38 fd ff       	call   de6cc0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e133c9:	4d 89 ee             	mov    r14,r13
  e133cc:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e133d2:	73 6c                	jae    e13440 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x33c0>
  e133d4:	e9 87 0a 00 00       	jmp    e13e60 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3de0>
  e133d9:	4c 89 ee             	mov    rsi,r13
  e133dc:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e133e0:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e133e5:	e8 96 9a fe ff       	call   dfce80 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e133ea:	4d 89 ee             	mov    r14,r13
  e133ed:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e133f3:	73 4b                	jae    e13440 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x33c0>
  e133f5:	e9 66 0a 00 00       	jmp    e13e60 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3de0>
  e133fa:	4c 89 ee             	mov    rsi,r13
  e133fd:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e13401:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e13406:	e8 75 47 fd ff       	call   de7b80 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e1340b:	4d 89 ee             	mov    r14,r13
  e1340e:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e13414:	73 2a                	jae    e13440 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x33c0>
  e13416:	e9 45 0a 00 00       	jmp    e13e60 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3de0>
  e1341b:	4c 89 ee             	mov    rsi,r13
  e1341e:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e13422:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e13427:	e8 94 e6 fd ff       	call   df1ac0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e1342c:	4d 89 ee             	mov    r14,r13
  e1342f:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e13435:	0f 82 25 0a 00 00    	jb     e13e60 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3de0>
  e1343b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  e13440:	48 8b 44 24 38       	mov    rax,QWORD PTR [rsp+0x38]
  e13445:	48 8b 18             	mov    rbx,QWORD PTR [rax]
  e13448:	4c 8b 64 24 68       	mov    r12,QWORD PTR [rsp+0x68]
  e1344d:	4c 8b 6c 24 48       	mov    r13,QWORD PTR [rsp+0x48]
  e13452:	48 8b 44 24 58       	mov    rax,QWORD PTR [rsp+0x58]
  e13457:	4c 8b 7c 24 60       	mov    r15,QWORD PTR [rsp+0x60]
  e1345c:	eb 46                	jmp    e134a4 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3424>
  e1345e:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e13463:	0f 29 84 24 60 01 00 	movaps XMMWORD PTR [rsp+0x160],xmm0
  e1346a:	00 
  e1346b:	4c 89 ff             	mov    rdi,r15
  e1346e:	4c 89 f6             	mov    rsi,r14
  e13471:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e13475:	48 89 d9             	mov    rcx,rbx
  e13478:	4c 8d 8c 24 60 01 00 	lea    r9,[rsp+0x160]
  e1347f:	00 
  e13480:	e8 bb 85 f3 ff       	call   d4ba40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e13485:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  e1348c:	00 00 00 00 
  e13490:	48 0f af dd          	imul   rbx,rbp
  e13494:	49 83 c5 18          	add    r13,0x18
  e13498:	4c 89 f0             	mov    rax,r14
  e1349b:	49 ff cc             	dec    r12
  e1349e:	0f 84 bc 09 00 00    	je     e13e60 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3de0>
  e134a4:	4d 89 fe             	mov    r14,r15
  e134a7:	49 89 c7             	mov    r15,rax
  e134aa:	49 8b 6d f8          	mov    rbp,QWORD PTR [r13-0x8]
  e134ae:	4d 8b 45 00          	mov    r8,QWORD PTR [r13+0x0]
  e134b2:	4c 03 44 24 30       	add    r8,QWORD PTR [rsp+0x30]
  e134b7:	48 89 ac 24 00 01 00 	mov    QWORD PTR [rsp+0x100],rbp
  e134be:	00 
  e134bf:	48 8d 45 fe          	lea    rax,[rbp-0x2]
  e134c3:	48 83 f8 0e          	cmp    rax,0xe
  e134c7:	0f 87 5b 24 00 00    	ja     e15928 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x58a8>
  e134cd:	48 8d 0d 04 0a 29 ff 	lea    rcx,[rip+0xffffffffff290a04]        # a3ed8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x31388>
  e134d4:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  e134d8:	48 01 c8             	add    rax,rcx
  e134db:	ff e0                	jmp    rax
  e134dd:	4c 89 ff             	mov    rdi,r15
  e134e0:	4c 89 f6             	mov    rsi,r14
  e134e3:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e134e7:	48 89 d9             	mov    rcx,rbx
  e134ea:	e8 91 ed f2 ff       	call   d42280 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e134ef:	eb 9f                	jmp    e13490 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3410>
  e134f1:	4c 89 ff             	mov    rdi,r15
  e134f4:	4c 89 f6             	mov    rsi,r14
  e134f7:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e134fb:	48 89 d9             	mov    rcx,rbx
  e134fe:	e8 3d 42 f3 ff       	call   d47740 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e13503:	eb 8b                	jmp    e13490 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3410>
  e13505:	4c 89 ff             	mov    rdi,r15
  e13508:	4c 89 f6             	mov    rsi,r14
  e1350b:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e1350f:	48 89 d9             	mov    rcx,rbx
  e13512:	e8 a9 f7 f2 ff       	call   d42cc0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e13517:	e9 74 ff ff ff       	jmp    e13490 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3410>
  e1351c:	4c 89 ff             	mov    rdi,r15
  e1351f:	4c 89 f6             	mov    rsi,r14
  e13522:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e13526:	48 89 d9             	mov    rcx,rbx
  e13529:	e8 d2 5a f3 ff       	call   d49000 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e1352e:	e9 5d ff ff ff       	jmp    e13490 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3410>
  e13533:	4c 89 ff             	mov    rdi,r15
  e13536:	4c 89 f6             	mov    rsi,r14
  e13539:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e1353d:	48 89 d9             	mov    rcx,rbx
  e13540:	e8 3b 21 f3 ff       	call   d45680 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e13545:	e9 46 ff ff ff       	jmp    e13490 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3410>
  e1354a:	4c 89 ff             	mov    rdi,r15
  e1354d:	4c 89 f6             	mov    rsi,r14
  e13550:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e13554:	48 89 d9             	mov    rcx,rbx
  e13557:	e8 e4 f0 f2 ff       	call   d42640 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e1355c:	e9 2f ff ff ff       	jmp    e13490 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3410>
  e13561:	4c 89 ff             	mov    rdi,r15
  e13564:	4c 89 f6             	mov    rsi,r14
  e13567:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e1356b:	48 89 d9             	mov    rcx,rbx
  e1356e:	e8 4d f3 f2 ff       	call   d428c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e13573:	e9 18 ff ff ff       	jmp    e13490 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3410>
  e13578:	4c 89 ff             	mov    rdi,r15
  e1357b:	4c 89 f6             	mov    rsi,r14
  e1357e:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e13582:	48 89 d9             	mov    rcx,rbx
  e13585:	e8 76 0a f3 ff       	call   d44000 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e1358a:	e9 01 ff ff ff       	jmp    e13490 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3410>
  e1358f:	4c 89 ff             	mov    rdi,r15
  e13592:	4c 89 f6             	mov    rsi,r14
  e13595:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e13599:	48 89 d9             	mov    rcx,rbx
  e1359c:	e8 5f ee f2 ff       	call   d42400 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e135a1:	e9 ea fe ff ff       	jmp    e13490 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3410>
  e135a6:	4c 89 ff             	mov    rdi,r15
  e135a9:	4c 89 f6             	mov    rsi,r14
  e135ac:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e135b0:	48 89 d9             	mov    rcx,rbx
  e135b3:	e8 c8 fb f2 ff       	call   d43180 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e135b8:	e9 d3 fe ff ff       	jmp    e13490 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3410>
  e135bd:	4c 89 ff             	mov    rdi,r15
  e135c0:	4c 89 f6             	mov    rsi,r14
  e135c3:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e135c7:	48 89 d9             	mov    rcx,rbx
  e135ca:	e8 f1 6e f3 ff       	call   d4a4c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e135cf:	e9 bc fe ff ff       	jmp    e13490 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3410>
  e135d4:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e135d9:	0f 29 84 24 60 01 00 	movaps XMMWORD PTR [rsp+0x160],xmm0
  e135e0:	00 
  e135e1:	4c 89 ff             	mov    rdi,r15
  e135e4:	4c 89 f6             	mov    rsi,r14
  e135e7:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e135eb:	48 89 d9             	mov    rcx,rbx
  e135ee:	4c 8d 8c 24 60 01 00 	lea    r9,[rsp+0x160]
  e135f5:	00 
  e135f6:	e8 05 03 f3 ff       	call   d43900 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e135fb:	e9 90 fe ff ff       	jmp    e13490 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3410>
  e13600:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e13605:	0f 29 84 24 60 01 00 	movaps XMMWORD PTR [rsp+0x160],xmm0
  e1360c:	00 
  e1360d:	4c 89 ff             	mov    rdi,r15
  e13610:	4c 89 f6             	mov    rsi,r14
  e13613:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e13617:	48 89 d9             	mov    rcx,rbx
  e1361a:	4c 8d 8c 24 60 01 00 	lea    r9,[rsp+0x160]
  e13621:	00 
  e13622:	e8 19 33 f3 ff       	call   d46940 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e13627:	e9 64 fe ff ff       	jmp    e13490 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3410>
  e1362c:	4c 89 ff             	mov    rdi,r15
  e1362f:	4c 89 f6             	mov    rsi,r14
  e13632:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e13636:	48 89 d9             	mov    rcx,rbx
  e13639:	e8 42 14 f3 ff       	call   d44a80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e1363e:	e9 4d fe ff ff       	jmp    e13490 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3410>
  e13643:	4c 89 ee             	mov    rsi,r13
  e13646:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e1364a:	4c 89 e1             	mov    rcx,r12
  e1364d:	e8 ae 76 ff ff       	call   e0ad00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e13652:	4d 89 ee             	mov    r14,r13
  e13655:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e1365b:	0f 83 d5 03 00 00    	jae    e13a36 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x39b6>
  e13661:	e9 fa 07 00 00       	jmp    e13e60 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3de0>
  e13666:	4c 89 ee             	mov    rsi,r13
  e13669:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e1366d:	4c 89 e1             	mov    rcx,r12
  e13670:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  e13675:	e8 86 a2 fe ff       	call   dfd900 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e1367a:	4d 89 ee             	mov    r14,r13
  e1367d:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e13683:	0f 83 d2 05 00 00    	jae    e13c5b <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3bdb>
  e13689:	e9 d2 07 00 00       	jmp    e13e60 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3de0>
  e1368e:	4c 89 ee             	mov    rsi,r13
  e13691:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e13695:	4c 89 e1             	mov    rcx,r12
  e13698:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e1369d:	e8 1e 13 fe ff       	call   df49c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e136a2:	4d 89 ee             	mov    r14,r13
  e136a5:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e136ab:	0f 83 85 03 00 00    	jae    e13a36 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x39b6>
  e136b1:	e9 aa 07 00 00       	jmp    e13e60 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3de0>
  e136b6:	4c 89 ee             	mov    rsi,r13
  e136b9:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e136bd:	4c 89 e1             	mov    rcx,r12
  e136c0:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  e136c5:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e136ca:	e8 31 90 fe ff       	call   dfc700 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e136cf:	4d 89 ee             	mov    r14,r13
  e136d2:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e136d8:	0f 83 7d 05 00 00    	jae    e13c5b <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3bdb>
  e136de:	e9 7d 07 00 00       	jmp    e13e60 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3de0>
  e136e3:	4c 89 ee             	mov    rsi,r13
  e136e6:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e136ea:	4c 89 e1             	mov    rcx,r12
  e136ed:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e136f2:	e8 89 be fe ff       	call   dff580 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e136f7:	4d 89 ee             	mov    r14,r13
  e136fa:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e13700:	0f 83 30 03 00 00    	jae    e13a36 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x39b6>
  e13706:	e9 55 07 00 00       	jmp    e13e60 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3de0>
  e1370b:	4c 89 ee             	mov    rsi,r13
  e1370e:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e13712:	4c 89 e1             	mov    rcx,r12
  e13715:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  e1371a:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e1371f:	e8 1c c8 fd ff       	call   deff40 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e13724:	4d 89 ee             	mov    r14,r13
  e13727:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e1372d:	0f 83 28 05 00 00    	jae    e13c5b <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3bdb>
  e13733:	e9 28 07 00 00       	jmp    e13e60 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3de0>
  e13738:	4c 89 ee             	mov    rsi,r13
  e1373b:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e1373f:	4c 89 e1             	mov    rcx,r12
  e13742:	e8 f9 2e fe ff       	call   df6640 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e13747:	4d 89 ee             	mov    r14,r13
  e1374a:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e13750:	0f 83 e0 02 00 00    	jae    e13a36 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x39b6>
  e13756:	e9 05 07 00 00       	jmp    e13e60 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3de0>
  e1375b:	4c 89 ee             	mov    rsi,r13
  e1375e:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e13762:	4c 89 e1             	mov    rcx,r12
  e13765:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  e1376a:	e8 d1 98 fd ff       	call   ded040 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e1376f:	4d 89 ee             	mov    r14,r13
  e13772:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e13778:	0f 83 dd 04 00 00    	jae    e13c5b <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3bdb>
  e1377e:	e9 dd 06 00 00       	jmp    e13e60 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3de0>
  e13783:	4c 89 ee             	mov    rsi,r13
  e13786:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e1378a:	4c 89 e1             	mov    rcx,r12
  e1378d:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e13792:	e8 e9 cc fe ff       	call   e00480 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e13797:	4d 89 ee             	mov    r14,r13
  e1379a:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e137a0:	0f 83 90 02 00 00    	jae    e13a36 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x39b6>
  e137a6:	e9 b5 06 00 00       	jmp    e13e60 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3de0>
  e137ab:	4c 89 ee             	mov    rsi,r13
  e137ae:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e137b2:	4c 89 e1             	mov    rcx,r12
  e137b5:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  e137ba:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e137bf:	e8 fc 9a fe ff       	call   dfd2c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e137c4:	4d 89 ee             	mov    r14,r13
  e137c7:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e137cd:	0f 83 88 04 00 00    	jae    e13c5b <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3bdb>
  e137d3:	e9 88 06 00 00       	jmp    e13e60 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3de0>
  e137d8:	4c 89 ee             	mov    rsi,r13
  e137db:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e137df:	4c 89 e1             	mov    rcx,r12
  e137e2:	e8 99 7e fd ff       	call   deb680 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e137e7:	4d 89 ee             	mov    r14,r13
  e137ea:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e137f0:	0f 83 40 02 00 00    	jae    e13a36 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x39b6>
  e137f6:	e9 65 06 00 00       	jmp    e13e60 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3de0>
  e137fb:	4c 89 ee             	mov    rsi,r13
  e137fe:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e13802:	4c 89 e1             	mov    rcx,r12
  e13805:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  e1380a:	e8 f1 fe fd ff       	call   df3700 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e1380f:	4d 89 ee             	mov    r14,r13
  e13812:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e13818:	0f 83 3d 04 00 00    	jae    e13c5b <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3bdb>
  e1381e:	e9 3d 06 00 00       	jmp    e13e60 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3de0>
  e13823:	4c 89 ee             	mov    rsi,r13
  e13826:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e1382a:	4c 89 e1             	mov    rcx,r12
  e1382d:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e13832:	e8 c9 c0 ff ff       	call   e0f900 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e13837:	4d 89 ee             	mov    r14,r13
  e1383a:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e13840:	0f 83 f0 01 00 00    	jae    e13a36 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x39b6>
  e13846:	e9 15 06 00 00       	jmp    e13e60 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3de0>
  e1384b:	4c 89 ee             	mov    rsi,r13
  e1384e:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e13852:	4c 89 e1             	mov    rcx,r12
  e13855:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  e1385a:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e1385f:	e8 dc 21 ff ff       	call   e05a40 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e13864:	4d 89 ee             	mov    r14,r13
  e13867:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e1386d:	0f 83 e8 03 00 00    	jae    e13c5b <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3bdb>
  e13873:	e9 e8 05 00 00       	jmp    e13e60 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3de0>
  e13878:	4c 89 ee             	mov    rsi,r13
  e1387b:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e1387f:	4c 89 e1             	mov    rcx,r12
  e13882:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e13887:	e8 f4 9e fe ff       	call   dfd780 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e1388c:	4d 89 ee             	mov    r14,r13
  e1388f:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e13895:	0f 83 9b 01 00 00    	jae    e13a36 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x39b6>
  e1389b:	e9 c0 05 00 00       	jmp    e13e60 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3de0>
  e138a0:	4c 89 ee             	mov    rsi,r13
  e138a3:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e138a7:	4c 89 e1             	mov    rcx,r12
  e138aa:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  e138af:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e138b4:	e8 07 27 fe ff       	call   df5fc0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e138b9:	4d 89 ee             	mov    r14,r13
  e138bc:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e138c2:	0f 83 93 03 00 00    	jae    e13c5b <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3bdb>
  e138c8:	e9 93 05 00 00       	jmp    e13e60 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3de0>
  e138cd:	4c 89 ee             	mov    rsi,r13
  e138d0:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e138d4:	4c 89 e1             	mov    rcx,r12
  e138d7:	e8 e4 77 fd ff       	call   deb0c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e138dc:	4d 89 ee             	mov    r14,r13
  e138df:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e138e5:	0f 83 4b 01 00 00    	jae    e13a36 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x39b6>
  e138eb:	e9 70 05 00 00       	jmp    e13e60 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3de0>
  e138f0:	4c 89 ee             	mov    rsi,r13
  e138f3:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e138f7:	4c 89 e1             	mov    rcx,r12
  e138fa:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  e138ff:	e8 fc 28 fd ff       	call   de6200 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e13904:	4d 89 ee             	mov    r14,r13
  e13907:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e1390d:	0f 83 48 03 00 00    	jae    e13c5b <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3bdb>
  e13913:	e9 48 05 00 00       	jmp    e13e60 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3de0>
  e13918:	4c 89 ee             	mov    rsi,r13
  e1391b:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e1391f:	4c 89 e1             	mov    rcx,r12
  e13922:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e13927:	e8 14 55 ff ff       	call   e08e40 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e1392c:	4d 89 ee             	mov    r14,r13
  e1392f:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e13935:	0f 83 fb 00 00 00    	jae    e13a36 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x39b6>
  e1393b:	e9 20 05 00 00       	jmp    e13e60 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3de0>
  e13940:	4c 89 ee             	mov    rsi,r13
  e13943:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e13947:	4c 89 e1             	mov    rcx,r12
  e1394a:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  e1394f:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e13954:	e8 67 87 ff ff       	call   e0c0c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e13959:	4d 89 ee             	mov    r14,r13
  e1395c:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e13962:	0f 83 f3 02 00 00    	jae    e13c5b <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3bdb>
  e13968:	e9 f3 04 00 00       	jmp    e13e60 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3de0>
  e1396d:	4c 89 ee             	mov    rsi,r13
  e13970:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e13974:	4c 89 e1             	mov    rcx,r12
  e13977:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e1397c:	e8 3f 64 ff ff       	call   e09dc0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e13981:	4d 89 ee             	mov    r14,r13
  e13984:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e1398a:	0f 83 a6 00 00 00    	jae    e13a36 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x39b6>
  e13990:	e9 cb 04 00 00       	jmp    e13e60 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3de0>
  e13995:	4c 89 ee             	mov    rsi,r13
  e13998:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e1399c:	4c 89 e1             	mov    rcx,r12
  e1399f:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  e139a4:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e139a9:	e8 92 16 ff ff       	call   e05040 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e139ae:	4d 89 ee             	mov    r14,r13
  e139b1:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e139b7:	0f 83 9e 02 00 00    	jae    e13c5b <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3bdb>
  e139bd:	e9 9e 04 00 00       	jmp    e13e60 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3de0>
  e139c2:	4c 89 ee             	mov    rsi,r13
  e139c5:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e139c9:	4c 89 e1             	mov    rcx,r12
  e139cc:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e139d1:	e8 2a bc fd ff       	call   def600 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e139d6:	4d 89 ee             	mov    r14,r13
  e139d9:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e139df:	73 55                	jae    e13a36 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x39b6>
  e139e1:	e9 7a 04 00 00       	jmp    e13e60 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3de0>
  e139e6:	4c 89 ee             	mov    rsi,r13
  e139e9:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e139ed:	4c 89 e1             	mov    rcx,r12
  e139f0:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  e139f5:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e139fa:	e8 81 14 fe ff       	call   df4e80 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e139ff:	4d 89 ee             	mov    r14,r13
  e13a02:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e13a08:	0f 83 4d 02 00 00    	jae    e13c5b <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3bdb>
  e13a0e:	e9 4d 04 00 00       	jmp    e13e60 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3de0>
  e13a13:	4c 89 ee             	mov    rsi,r13
  e13a16:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e13a1a:	4c 89 e1             	mov    rcx,r12
  e13a1d:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e13a22:	e8 d9 b3 fd ff       	call   deee00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e13a27:	4d 89 ee             	mov    r14,r13
  e13a2a:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e13a30:	0f 82 2a 04 00 00    	jb     e13e60 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3de0>
  e13a36:	48 8b 44 24 38       	mov    rax,QWORD PTR [rsp+0x38]
  e13a3b:	48 8b 18             	mov    rbx,QWORD PTR [rax]
  e13a3e:	4c 8b 64 24 68       	mov    r12,QWORD PTR [rsp+0x68]
  e13a43:	4c 8b 6c 24 48       	mov    r13,QWORD PTR [rsp+0x48]
  e13a48:	48 8b 44 24 58       	mov    rax,QWORD PTR [rsp+0x58]
  e13a4d:	4c 8b 7c 24 60       	mov    r15,QWORD PTR [rsp+0x60]
  e13a52:	eb 40                	jmp    e13a94 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3a14>
  e13a54:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e13a59:	0f 29 84 24 60 01 00 	movaps XMMWORD PTR [rsp+0x160],xmm0
  e13a60:	00 
  e13a61:	4c 89 ff             	mov    rdi,r15
  e13a64:	4c 89 f6             	mov    rsi,r14
  e13a67:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e13a6b:	48 89 d9             	mov    rcx,rbx
  e13a6e:	4c 8d 8c 24 60 01 00 	lea    r9,[rsp+0x160]
  e13a75:	00 
  e13a76:	e8 c5 7f f3 ff       	call   d4ba40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e13a7b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  e13a80:	48 0f af dd          	imul   rbx,rbp
  e13a84:	49 83 c5 18          	add    r13,0x18
  e13a88:	4c 89 f0             	mov    rax,r14
  e13a8b:	49 ff cc             	dec    r12
  e13a8e:	0f 84 cc 03 00 00    	je     e13e60 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3de0>
  e13a94:	4d 89 fe             	mov    r14,r15
  e13a97:	49 89 c7             	mov    r15,rax
  e13a9a:	49 8b 6d f8          	mov    rbp,QWORD PTR [r13-0x8]
  e13a9e:	4d 8b 45 00          	mov    r8,QWORD PTR [r13+0x0]
  e13aa2:	4c 03 44 24 30       	add    r8,QWORD PTR [rsp+0x30]
  e13aa7:	48 89 ac 24 00 01 00 	mov    QWORD PTR [rsp+0x100],rbp
  e13aae:	00 
  e13aaf:	48 8d 45 fe          	lea    rax,[rbp-0x2]
  e13ab3:	48 83 f8 0e          	cmp    rax,0xe
  e13ab7:	0f 87 6b 1e 00 00    	ja     e15928 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x58a8>
  e13abd:	48 8d 0d a0 03 29 ff 	lea    rcx,[rip+0xffffffffff2903a0]        # a3e64 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x31314>
  e13ac4:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  e13ac8:	48 01 c8             	add    rax,rcx
  e13acb:	ff e0                	jmp    rax
  e13acd:	4c 89 ff             	mov    rdi,r15
  e13ad0:	4c 89 f6             	mov    rsi,r14
  e13ad3:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e13ad7:	48 89 d9             	mov    rcx,rbx
  e13ada:	e8 a1 e7 f2 ff       	call   d42280 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e13adf:	eb 9f                	jmp    e13a80 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3a00>
  e13ae1:	4c 89 ff             	mov    rdi,r15
  e13ae4:	4c 89 f6             	mov    rsi,r14
  e13ae7:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e13aeb:	48 89 d9             	mov    rcx,rbx
  e13aee:	e8 4d 3c f3 ff       	call   d47740 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e13af3:	eb 8b                	jmp    e13a80 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3a00>
  e13af5:	4c 89 ff             	mov    rdi,r15
  e13af8:	4c 89 f6             	mov    rsi,r14
  e13afb:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e13aff:	48 89 d9             	mov    rcx,rbx
  e13b02:	e8 b9 f1 f2 ff       	call   d42cc0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e13b07:	e9 74 ff ff ff       	jmp    e13a80 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3a00>
  e13b0c:	4c 89 ff             	mov    rdi,r15
  e13b0f:	4c 89 f6             	mov    rsi,r14
  e13b12:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e13b16:	48 89 d9             	mov    rcx,rbx
  e13b19:	e8 e2 54 f3 ff       	call   d49000 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e13b1e:	e9 5d ff ff ff       	jmp    e13a80 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3a00>
  e13b23:	4c 89 ff             	mov    rdi,r15
  e13b26:	4c 89 f6             	mov    rsi,r14
  e13b29:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e13b2d:	48 89 d9             	mov    rcx,rbx
  e13b30:	e8 4b 1b f3 ff       	call   d45680 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e13b35:	e9 46 ff ff ff       	jmp    e13a80 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3a00>
  e13b3a:	4c 89 ff             	mov    rdi,r15
  e13b3d:	4c 89 f6             	mov    rsi,r14
  e13b40:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e13b44:	48 89 d9             	mov    rcx,rbx
  e13b47:	e8 f4 ea f2 ff       	call   d42640 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e13b4c:	e9 2f ff ff ff       	jmp    e13a80 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3a00>
  e13b51:	4c 89 ff             	mov    rdi,r15
  e13b54:	4c 89 f6             	mov    rsi,r14
  e13b57:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e13b5b:	48 89 d9             	mov    rcx,rbx
  e13b5e:	e8 5d ed f2 ff       	call   d428c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e13b63:	e9 18 ff ff ff       	jmp    e13a80 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3a00>
  e13b68:	4c 89 ff             	mov    rdi,r15
  e13b6b:	4c 89 f6             	mov    rsi,r14
  e13b6e:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e13b72:	48 89 d9             	mov    rcx,rbx
  e13b75:	e8 86 04 f3 ff       	call   d44000 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e13b7a:	e9 01 ff ff ff       	jmp    e13a80 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3a00>
  e13b7f:	4c 89 ff             	mov    rdi,r15
  e13b82:	4c 89 f6             	mov    rsi,r14
  e13b85:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e13b89:	48 89 d9             	mov    rcx,rbx
  e13b8c:	e8 6f e8 f2 ff       	call   d42400 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e13b91:	e9 ea fe ff ff       	jmp    e13a80 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3a00>
  e13b96:	4c 89 ff             	mov    rdi,r15
  e13b99:	4c 89 f6             	mov    rsi,r14
  e13b9c:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e13ba0:	48 89 d9             	mov    rcx,rbx
  e13ba3:	e8 d8 f5 f2 ff       	call   d43180 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e13ba8:	e9 d3 fe ff ff       	jmp    e13a80 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3a00>
  e13bad:	4c 89 ff             	mov    rdi,r15
  e13bb0:	4c 89 f6             	mov    rsi,r14
  e13bb3:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e13bb7:	48 89 d9             	mov    rcx,rbx
  e13bba:	e8 01 69 f3 ff       	call   d4a4c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e13bbf:	e9 bc fe ff ff       	jmp    e13a80 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3a00>
  e13bc4:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e13bc9:	0f 29 84 24 60 01 00 	movaps XMMWORD PTR [rsp+0x160],xmm0
  e13bd0:	00 
  e13bd1:	4c 89 ff             	mov    rdi,r15
  e13bd4:	4c 89 f6             	mov    rsi,r14
  e13bd7:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e13bdb:	48 89 d9             	mov    rcx,rbx
  e13bde:	4c 8d 8c 24 60 01 00 	lea    r9,[rsp+0x160]
  e13be5:	00 
  e13be6:	e8 15 fd f2 ff       	call   d43900 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e13beb:	e9 90 fe ff ff       	jmp    e13a80 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3a00>
  e13bf0:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e13bf5:	0f 29 84 24 60 01 00 	movaps XMMWORD PTR [rsp+0x160],xmm0
  e13bfc:	00 
  e13bfd:	4c 89 ff             	mov    rdi,r15
  e13c00:	4c 89 f6             	mov    rsi,r14
  e13c03:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e13c07:	48 89 d9             	mov    rcx,rbx
  e13c0a:	4c 8d 8c 24 60 01 00 	lea    r9,[rsp+0x160]
  e13c11:	00 
  e13c12:	e8 29 2d f3 ff       	call   d46940 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e13c17:	e9 64 fe ff ff       	jmp    e13a80 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3a00>
  e13c1c:	4c 89 ff             	mov    rdi,r15
  e13c1f:	4c 89 f6             	mov    rsi,r14
  e13c22:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e13c26:	48 89 d9             	mov    rcx,rbx
  e13c29:	e8 52 0e f3 ff       	call   d44a80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e13c2e:	e9 4d fe ff ff       	jmp    e13a80 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3a00>
  e13c33:	4c 89 ee             	mov    rsi,r13
  e13c36:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e13c3a:	4c 89 e1             	mov    rcx,r12
  e13c3d:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  e13c42:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e13c47:	e8 34 ad ff ff       	call   e0e980 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e13c4c:	4d 89 ee             	mov    r14,r13
  e13c4f:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  e13c55:	0f 82 05 02 00 00    	jb     e13e60 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3de0>
  e13c5b:	48 8b 44 24 38       	mov    rax,QWORD PTR [rsp+0x38]
  e13c60:	48 8b 18             	mov    rbx,QWORD PTR [rax]
  e13c63:	4c 8b 64 24 68       	mov    r12,QWORD PTR [rsp+0x68]
  e13c68:	4c 8b 6c 24 48       	mov    r13,QWORD PTR [rsp+0x48]
  e13c6d:	48 8b 44 24 58       	mov    rax,QWORD PTR [rsp+0x58]
  e13c72:	4c 8b 7c 24 60       	mov    r15,QWORD PTR [rsp+0x60]
  e13c77:	eb 3b                	jmp    e13cb4 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3c34>
  e13c79:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e13c7e:	0f 29 84 24 60 01 00 	movaps XMMWORD PTR [rsp+0x160],xmm0
  e13c85:	00 
  e13c86:	4c 89 ff             	mov    rdi,r15
  e13c89:	4c 89 f6             	mov    rsi,r14
  e13c8c:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e13c90:	48 89 d9             	mov    rcx,rbx
  e13c93:	4c 8d 8c 24 60 01 00 	lea    r9,[rsp+0x160]
  e13c9a:	00 
  e13c9b:	e8 a0 7d f3 ff       	call   d4ba40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e13ca0:	48 0f af dd          	imul   rbx,rbp
  e13ca4:	49 83 c5 18          	add    r13,0x18
  e13ca8:	4c 89 f0             	mov    rax,r14
  e13cab:	49 ff cc             	dec    r12
  e13cae:	0f 84 ac 01 00 00    	je     e13e60 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3de0>
  e13cb4:	4d 89 fe             	mov    r14,r15
  e13cb7:	49 89 c7             	mov    r15,rax
  e13cba:	49 8b 6d f8          	mov    rbp,QWORD PTR [r13-0x8]
  e13cbe:	4d 8b 45 00          	mov    r8,QWORD PTR [r13+0x0]
  e13cc2:	4c 03 44 24 30       	add    r8,QWORD PTR [rsp+0x30]
  e13cc7:	48 89 ac 24 00 01 00 	mov    QWORD PTR [rsp+0x100],rbp
  e13cce:	00 
  e13ccf:	48 8d 45 fe          	lea    rax,[rbp-0x2]
  e13cd3:	48 83 f8 0e          	cmp    rax,0xe
  e13cd7:	0f 87 4b 1c 00 00    	ja     e15928 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x58a8>
  e13cdd:	48 8d 0d 0c 01 29 ff 	lea    rcx,[rip+0xffffffffff29010c]        # a3df0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x312a0>
  e13ce4:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  e13ce8:	48 01 c8             	add    rax,rcx
  e13ceb:	ff e0                	jmp    rax
  e13ced:	4c 89 ff             	mov    rdi,r15
  e13cf0:	4c 89 f6             	mov    rsi,r14
  e13cf3:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e13cf7:	48 89 d9             	mov    rcx,rbx
  e13cfa:	e8 81 e5 f2 ff       	call   d42280 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e13cff:	eb 9f                	jmp    e13ca0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3c20>
  e13d01:	4c 89 ff             	mov    rdi,r15
  e13d04:	4c 89 f6             	mov    rsi,r14
  e13d07:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e13d0b:	48 89 d9             	mov    rcx,rbx
  e13d0e:	e8 2d 3a f3 ff       	call   d47740 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e13d13:	eb 8b                	jmp    e13ca0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3c20>
  e13d15:	4c 89 ff             	mov    rdi,r15
  e13d18:	4c 89 f6             	mov    rsi,r14
  e13d1b:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e13d1f:	48 89 d9             	mov    rcx,rbx
  e13d22:	e8 99 ef f2 ff       	call   d42cc0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e13d27:	e9 74 ff ff ff       	jmp    e13ca0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3c20>
  e13d2c:	4c 89 ff             	mov    rdi,r15
  e13d2f:	4c 89 f6             	mov    rsi,r14
  e13d32:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e13d36:	48 89 d9             	mov    rcx,rbx
  e13d39:	e8 c2 52 f3 ff       	call   d49000 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e13d3e:	e9 5d ff ff ff       	jmp    e13ca0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3c20>
  e13d43:	4c 89 ff             	mov    rdi,r15
  e13d46:	4c 89 f6             	mov    rsi,r14
  e13d49:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e13d4d:	48 89 d9             	mov    rcx,rbx
  e13d50:	e8 2b 19 f3 ff       	call   d45680 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e13d55:	e9 46 ff ff ff       	jmp    e13ca0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3c20>
  e13d5a:	4c 89 ff             	mov    rdi,r15
  e13d5d:	4c 89 f6             	mov    rsi,r14
  e13d60:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e13d64:	48 89 d9             	mov    rcx,rbx
  e13d67:	e8 d4 e8 f2 ff       	call   d42640 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e13d6c:	e9 2f ff ff ff       	jmp    e13ca0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3c20>
  e13d71:	4c 89 ff             	mov    rdi,r15
  e13d74:	4c 89 f6             	mov    rsi,r14
  e13d77:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e13d7b:	48 89 d9             	mov    rcx,rbx
  e13d7e:	e8 3d eb f2 ff       	call   d428c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e13d83:	e9 18 ff ff ff       	jmp    e13ca0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3c20>
  e13d88:	4c 89 ff             	mov    rdi,r15
  e13d8b:	4c 89 f6             	mov    rsi,r14
  e13d8e:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e13d92:	48 89 d9             	mov    rcx,rbx
  e13d95:	e8 66 02 f3 ff       	call   d44000 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e13d9a:	e9 01 ff ff ff       	jmp    e13ca0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3c20>
  e13d9f:	4c 89 ff             	mov    rdi,r15
  e13da2:	4c 89 f6             	mov    rsi,r14
  e13da5:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e13da9:	48 89 d9             	mov    rcx,rbx
  e13dac:	e8 4f e6 f2 ff       	call   d42400 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e13db1:	e9 ea fe ff ff       	jmp    e13ca0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3c20>
  e13db6:	4c 89 ff             	mov    rdi,r15
  e13db9:	4c 89 f6             	mov    rsi,r14
  e13dbc:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e13dc0:	48 89 d9             	mov    rcx,rbx
  e13dc3:	e8 b8 f3 f2 ff       	call   d43180 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e13dc8:	e9 d3 fe ff ff       	jmp    e13ca0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3c20>
  e13dcd:	4c 89 ff             	mov    rdi,r15
  e13dd0:	4c 89 f6             	mov    rsi,r14
  e13dd3:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e13dd7:	48 89 d9             	mov    rcx,rbx
  e13dda:	e8 e1 66 f3 ff       	call   d4a4c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e13ddf:	e9 bc fe ff ff       	jmp    e13ca0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3c20>
  e13de4:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e13de9:	0f 29 84 24 60 01 00 	movaps XMMWORD PTR [rsp+0x160],xmm0
  e13df0:	00 
  e13df1:	4c 89 ff             	mov    rdi,r15
  e13df4:	4c 89 f6             	mov    rsi,r14
  e13df7:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e13dfb:	48 89 d9             	mov    rcx,rbx
  e13dfe:	4c 8d 8c 24 60 01 00 	lea    r9,[rsp+0x160]
  e13e05:	00 
  e13e06:	e8 f5 fa f2 ff       	call   d43900 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e13e0b:	e9 90 fe ff ff       	jmp    e13ca0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3c20>
  e13e10:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  e13e15:	0f 29 84 24 60 01 00 	movaps XMMWORD PTR [rsp+0x160],xmm0
  e13e1c:	00 
  e13e1d:	4c 89 ff             	mov    rdi,r15
  e13e20:	4c 89 f6             	mov    rsi,r14
  e13e23:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e13e27:	48 89 d9             	mov    rcx,rbx
  e13e2a:	4c 8d 8c 24 60 01 00 	lea    r9,[rsp+0x160]
  e13e31:	00 
  e13e32:	e8 09 2b f3 ff       	call   d46940 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e13e37:	e9 64 fe ff ff       	jmp    e13ca0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3c20>
  e13e3c:	4c 89 ff             	mov    rdi,r15
  e13e3f:	4c 89 f6             	mov    rsi,r14
  e13e42:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e13e46:	48 89 d9             	mov    rcx,rbx
  e13e49:	e8 32 0c f3 ff       	call   d44a80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e13e4e:	e9 4d fe ff ff       	jmp    e13ca0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3c20>
  e13e53:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  e13e5a:	84 00 00 00 00 00 
  e13e60:	48 83 3c 24 00       	cmp    QWORD PTR [rsp],0x0
  e13e65:	4c 8d ac 24 80 01 00 	lea    r13,[rsp+0x180]
  e13e6c:	00 
  e13e6d:	48 8b ac 24 b8 00 00 	mov    rbp,QWORD PTR [rsp+0xb8]
  e13e74:	00 
  e13e75:	4c 8b a4 24 90 00 00 	mov    r12,QWORD PTR [rsp+0x90]
  e13e7c:	00 
  e13e7d:	0f 84 5d f2 ff ff    	je     e130e0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3060>
  e13e83:	80 7c 24 40 00       	cmp    BYTE PTR [rsp+0x40],0x0
  e13e88:	74 46                	je     e13ed0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3e50>
  e13e8a:	49 83 c6 10          	add    r14,0x10
  e13e8e:	48 8b 04 24          	mov    rax,QWORD PTR [rsp]
  e13e92:	48 8b 8c 24 c0 00 00 	mov    rcx,QWORD PTR [rsp+0xc0]
  e13e99:	00 
  e13e9a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  e13ea0:	41 0f 10 46 f0       	movups xmm0,XMMWORD PTR [r14-0x10]
  e13ea5:	41 0f 10 0e          	movups xmm1,XMMWORD PTR [r14]
  e13ea9:	0f 28 d1             	movaps xmm2,xmm1
  e13eac:	0f 16 d0             	movlhps xmm2,xmm0
  e13eaf:	66 0f 15 c8          	unpckhpd xmm1,xmm0
  e13eb3:	66 0f 2b 11          	movntpd XMMWORD PTR [rcx],xmm2
  e13eb7:	48 8d 51 10          	lea    rdx,[rcx+0x10]
  e13ebb:	66 0f 2b 0a          	movntpd XMMWORD PTR [rdx],xmm1
  e13ebf:	48 01 e9             	add    rcx,rbp
  e13ec2:	49 83 c6 20          	add    r14,0x20
  e13ec6:	48 ff c8             	dec    rax
  e13ec9:	75 d5                	jne    e13ea0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3e20>
  e13ecb:	e9 10 f2 ff ff       	jmp    e130e0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3060>
  e13ed0:	48 c1 64 24 20 04    	shl    QWORD PTR [rsp+0x20],0x4
  e13ed6:	49 83 c6 10          	add    r14,0x10
  e13eda:	4c 8b 3c 24          	mov    r15,QWORD PTR [rsp]
  e13ede:	48 8b 9c 24 c0 00 00 	mov    rbx,QWORD PTR [rsp+0xc0]
  e13ee5:	00 
  e13ee6:	eb 1f                	jmp    e13f07 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3e87>
  e13ee8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  e13eef:	00 
  e13ef0:	0f 11 0b             	movups XMMWORD PTR [rbx],xmm1
  e13ef3:	0f 11 43 10          	movups XMMWORD PTR [rbx+0x10],xmm0
  e13ef7:	48 01 eb             	add    rbx,rbp
  e13efa:	49 83 c6 20          	add    r14,0x20
  e13efe:	49 ff cf             	dec    r15
  e13f01:	0f 84 d9 f1 ff ff    	je     e130e0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3060>
  e13f07:	41 0f 10 56 f0       	movups xmm2,XMMWORD PTR [r14-0x10]
  e13f0c:	41 0f 10 06          	movups xmm0,XMMWORD PTR [r14]
  e13f10:	0f 28 c8             	movaps xmm1,xmm0
  e13f13:	0f 16 ca             	movlhps xmm1,xmm2
  e13f16:	66 0f 15 c2          	unpckhpd xmm0,xmm2
  e13f1a:	49 83 fc 01          	cmp    r12,0x1
  e13f1e:	77 d0                	ja     e13ef0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3e70>
  e13f20:	0f 57 d2             	xorps  xmm2,xmm2
  e13f23:	41 0f 29 95 d0 00 00 	movaps XMMWORD PTR [r13+0xd0],xmm2
  e13f2a:	00 
  e13f2b:	41 0f 29 95 c0 00 00 	movaps XMMWORD PTR [r13+0xc0],xmm2
  e13f32:	00 
  e13f33:	41 0f 29 95 b0 00 00 	movaps XMMWORD PTR [r13+0xb0],xmm2
  e13f3a:	00 
  e13f3b:	41 0f 29 95 a0 00 00 	movaps XMMWORD PTR [r13+0xa0],xmm2
  e13f42:	00 
  e13f43:	41 0f 29 95 90 00 00 	movaps XMMWORD PTR [r13+0x90],xmm2
  e13f4a:	00 
  e13f4b:	41 0f 29 95 80 00 00 	movaps XMMWORD PTR [r13+0x80],xmm2
  e13f52:	00 
  e13f53:	41 0f 29 55 70       	movaps XMMWORD PTR [r13+0x70],xmm2
  e13f58:	41 0f 29 55 60       	movaps XMMWORD PTR [r13+0x60],xmm2
  e13f5d:	41 0f 29 55 50       	movaps XMMWORD PTR [r13+0x50],xmm2
  e13f62:	41 0f 29 55 40       	movaps XMMWORD PTR [r13+0x40],xmm2
  e13f67:	41 0f 29 55 30       	movaps XMMWORD PTR [r13+0x30],xmm2
  e13f6c:	41 0f 29 55 20       	movaps XMMWORD PTR [r13+0x20],xmm2
  e13f71:	41 0f 29 55 10       	movaps XMMWORD PTR [r13+0x10],xmm2
  e13f76:	41 0f 29 55 00       	movaps XMMWORD PTR [r13+0x0],xmm2
  e13f7b:	0f 29 8c 24 60 01 00 	movaps XMMWORD PTR [rsp+0x160],xmm1
  e13f82:	00 
  e13f83:	0f 29 84 24 70 01 00 	movaps XMMWORD PTR [rsp+0x170],xmm0
  e13f8a:	00 
  e13f8b:	48 89 df             	mov    rdi,rbx
  e13f8e:	48 8d b4 24 60 01 00 	lea    rsi,[rsp+0x160]
  e13f95:	00 
  e13f96:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e13f9b:	ff 15 3f 97 43 00    	call   QWORD PTR [rip+0x43973f]        # 124d6e0 <memcpy@GLIBC_2.14>
  e13fa1:	e9 51 ff ff ff       	jmp    e13ef7 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3e77>
  e13fa6:	80 7c 24 40 00       	cmp    BYTE PTR [rsp+0x40],0x0
  e13fab:	74 03                	je     e13fb0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3f30>
  e13fad:	0f ae f8             	sfence
  e13fb0:	48 81 c4 88 02 00 00 	add    rsp,0x288
  e13fb7:	5b                   	pop    rbx
  e13fb8:	41 5c                	pop    r12
  e13fba:	41 5d                	pop    r13
  e13fbc:	41 5e                	pop    r14
  e13fbe:	41 5f                	pop    r15
  e13fc0:	5d                   	pop    rbp
  e13fc1:	c3                   	ret
  e13fc2:	89 d8                	mov    eax,ebx
  e13fc4:	31 d2                	xor    edx,edx
  e13fc6:	f7 f6                	div    esi
  e13fc8:	48 8b 74 24 38       	mov    rsi,QWORD PTR [rsp+0x38]
  e13fcd:	48 03 b4 24 d8 00 00 	add    rsi,QWORD PTR [rsp+0xd8]
  e13fd4:	00 
  e13fd5:	48 89 74 24 38       	mov    QWORD PTR [rsp+0x38],rsi
  e13fda:	0f 28 44 24 70       	movaps xmm0,XMMWORD PTR [rsp+0x70]
  e13fdf:	0f 16 c0             	movlhps xmm0,xmm0
  e13fe2:	0f 29 44 24 70       	movaps XMMWORD PTR [rsp+0x70],xmm0
  e13fe7:	45 31 e4             	xor    r12d,r12d
  e13fea:	48 85 d2             	test   rdx,rdx
  e13fed:	41 0f 95 c4          	setne  r12b
  e13ff1:	49 01 c4             	add    r12,rax
  e13ff4:	4c 89 84 24 b8 00 00 	mov    QWORD PTR [rsp+0xb8],r8
  e13ffb:	00 
  e13ffc:	48 89 ca             	mov    rdx,rcx
  e13fff:	48 89 0c 24          	mov    QWORD PTR [rsp],rcx
  e14003:	48 89 5c 24 28       	mov    QWORD PTR [rsp+0x28],rbx
  e14008:	4c 89 b4 24 40 01 00 	mov    QWORD PTR [rsp+0x140],r14
  e1400f:	00 
  e14010:	0f 84 22 06 00 00    	je     e14638 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x45b8>
  e14016:	4d 85 ff             	test   r15,r15
  e14019:	48 8b 84 24 20 01 00 	mov    rax,QWORD PTR [rsp+0x120]
  e14020:	00 
  e14021:	0f 84 c3 19 00 00    	je     e159ea <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x596a>
  e14027:	4c 8b 68 70          	mov    r13,QWORD PTR [rax+0x70]
  e1402b:	48 8b 80 90 00 00 00 	mov    rax,QWORD PTR [rax+0x90]
  e14032:	48 89 44 24 48       	mov    QWORD PTR [rsp+0x48],rax
  e14037:	48 89 d1             	mov    rcx,rdx
  e1403a:	48 d1 e9             	shr    rcx,1
  e1403d:	48 89 d0             	mov    rax,rdx
  e14040:	48 29 c8             	sub    rax,rcx
  e14043:	48 89 84 24 e0 00 00 	mov    QWORD PTR [rsp+0xe0],rax
  e1404a:	00 
  e1404b:	f3 49 0f bc c5       	tzcnt  rax,r13
  e14050:	48 89 44 24 58       	mov    QWORD PTR [rsp+0x58],rax
  e14055:	48 b8 ff ff ff ff ff 	movabs rax,0x7ffffffffffffff
  e1405c:	ff ff 07 
  e1405f:	4c 01 e8             	add    rax,r13
  e14062:	48 89 44 24 50       	mov    QWORD PTR [rsp+0x50],rax
  e14067:	48 8b 44 24 20       	mov    rax,QWORD PTR [rsp+0x20]
  e1406c:	48 83 c0 20          	add    rax,0x20
  e14070:	48 89 84 24 d0 00 00 	mov    QWORD PTR [rsp+0xd0],rax
  e14077:	00 
  e14078:	49 8d 47 ff          	lea    rax,[r15-0x1]
  e1407c:	48 89 44 24 60       	mov    QWORD PTR [rsp+0x60],rax
  e14081:	48 29 d1             	sub    rcx,rdx
  e14084:	48 89 8c 24 a0 00 00 	mov    QWORD PTR [rsp+0xa0],rcx
  e1408b:	00 
  e1408c:	48 8b 84 24 98 00 00 	mov    rax,QWORD PTR [rsp+0x98]
  e14093:	00 
  e14094:	48 83 c0 20          	add    rax,0x20
  e14098:	48 89 84 24 38 01 00 	mov    QWORD PTR [rsp+0x138],rax
  e1409f:	00 
  e140a0:	4c 89 c0             	mov    rax,r8
  e140a3:	48 c1 e0 06          	shl    rax,0x6
  e140a7:	48 89 84 24 28 01 00 	mov    QWORD PTR [rsp+0x128],rax
  e140ae:	00 
  e140af:	48 89 d8             	mov    rax,rbx
  e140b2:	48 c1 e0 05          	shl    rax,0x5
  e140b6:	48 89 44 24 30       	mov    QWORD PTR [rsp+0x30],rax
  e140bb:	31 c9                	xor    ecx,ecx
  e140bd:	4c 89 bc 24 f8 00 00 	mov    QWORD PTR [rsp+0xf8],r15
  e140c4:	00 
  e140c5:	40 88 6c 24 10       	mov    BYTE PTR [rsp+0x10],bpl
  e140ca:	4c 89 6c 24 68       	mov    QWORD PTR [rsp+0x68],r13
  e140cf:	eb 45                	jmp    e14116 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4096>
  e140d1:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  e140d8:	0f 1f 84 00 00 00 00 
  e140df:	00 
  e140e0:	48 8b 84 24 28 01 00 	mov    rax,QWORD PTR [rsp+0x128]
  e140e7:	00 
  e140e8:	48 01 84 24 38 01 00 	add    QWORD PTR [rsp+0x138],rax
  e140ef:	00 
  e140f0:	48 8b 8c 24 30 01 00 	mov    rcx,QWORD PTR [rsp+0x130]
  e140f7:	00 
  e140f8:	4c 8b a4 24 58 01 00 	mov    r12,QWORD PTR [rsp+0x158]
  e140ff:	00 
  e14100:	4d 85 e4             	test   r12,r12
  e14103:	48 8b 5c 24 28       	mov    rbx,QWORD PTR [rsp+0x28]
  e14108:	4c 8b b4 24 40 01 00 	mov    r14,QWORD PTR [rsp+0x140]
  e1410f:	00 
  e14110:	0f 84 22 05 00 00    	je     e14638 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x45b8>
  e14116:	48 8b 44 24 20       	mov    rax,QWORD PTR [rsp+0x20]
  e1411b:	48 8b 00             	mov    rax,QWORD PTR [rax]
  e1411e:	48 83 f8 02          	cmp    rax,0x2
  e14122:	74 6c                	je     e14190 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4110>
  e14124:	48 83 f8 04          	cmp    rax,0x4
  e14128:	74 36                	je     e14160 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x40e0>
  e1412a:	48 83 f8 08          	cmp    rax,0x8
  e1412e:	0f 85 46 18 00 00    	jne    e1597a <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x58fa>
  e14134:	48 89 cf             	mov    rdi,rcx
  e14137:	48 c1 e7 04          	shl    rdi,0x4
  e1413b:	48 03 bc 24 48 01 00 	add    rdi,QWORD PTR [rsp+0x148]
  e14142:	00 
  e14143:	48 8b 74 24 38       	mov    rsi,QWORD PTR [rsp+0x38]
  e14148:	49 89 ce             	mov    r14,rcx
  e1414b:	48 89 d9             	mov    rcx,rbx
  e1414e:	4c 8b 4c 24 48       	mov    r9,QWORD PTR [rsp+0x48]
  e14153:	0f 28 44 24 70       	movaps xmm0,XMMWORD PTR [rsp+0x70]
  e14158:	e8 a3 ed fc ff       	call   de2f00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first_group>
  e1415d:	eb 5a                	jmp    e141b9 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4139>
  e1415f:	90                   	nop
  e14160:	48 89 cf             	mov    rdi,rcx
  e14163:	48 c1 e7 04          	shl    rdi,0x4
  e14167:	48 03 bc 24 48 01 00 	add    rdi,QWORD PTR [rsp+0x148]
  e1416e:	00 
  e1416f:	48 8b 74 24 38       	mov    rsi,QWORD PTR [rsp+0x38]
  e14174:	49 89 ce             	mov    r14,rcx
  e14177:	48 89 d9             	mov    rcx,rbx
  e1417a:	4c 8b 4c 24 48       	mov    r9,QWORD PTR [rsp+0x48]
  e1417f:	0f 28 44 24 70       	movaps xmm0,XMMWORD PTR [rsp+0x70]
  e14184:	e8 f7 f8 fc ff       	call   de3a80 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first_group>
  e14189:	eb 2e                	jmp    e141b9 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4139>
  e1418b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  e14190:	48 89 cf             	mov    rdi,rcx
  e14193:	48 c1 e7 04          	shl    rdi,0x4
  e14197:	48 03 bc 24 48 01 00 	add    rdi,QWORD PTR [rsp+0x148]
  e1419e:	00 
  e1419f:	48 8b 74 24 38       	mov    rsi,QWORD PTR [rsp+0x38]
  e141a4:	49 89 ce             	mov    r14,rcx
  e141a7:	48 89 d9             	mov    rcx,rbx
  e141aa:	4c 8b 4c 24 48       	mov    r9,QWORD PTR [rsp+0x48]
  e141af:	0f 28 44 24 70       	movaps xmm0,XMMWORD PTR [rsp+0x70]
  e141b4:	e8 07 f2 fc ff       	call   de33c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first_group>
  e141b9:	48 8b 84 24 c8 00 00 	mov    rax,QWORD PTR [rsp+0xc8]
  e141c0:	00 
  e141c1:	4c 89 b4 24 f0 00 00 	mov    QWORD PTR [rsp+0xf0],r14
  e141c8:	00 
  e141c9:	4c 01 f0             	add    rax,r14
  e141cc:	48 89 84 24 30 01 00 	mov    QWORD PTR [rsp+0x130],rax
  e141d3:	00 
  e141d4:	49 ff cc             	dec    r12
  e141d7:	4c 89 a4 24 58 01 00 	mov    QWORD PTR [rsp+0x158],r12
  e141de:	00 
  e141df:	48 8b 84 24 38 01 00 	mov    rax,QWORD PTR [rsp+0x138]
  e141e6:	00 
  e141e7:	48 89 44 24 40       	mov    QWORD PTR [rsp+0x40],rax
  e141ec:	31 c0                	xor    eax,eax
  e141ee:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e141f2:	eb 2a                	jmp    e1421e <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x419e>
  e141f4:	66 66 66 2e 0f 1f 84 	data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  e141fb:	00 00 00 00 00 
  e14200:	48 8b 84 24 90 00 00 	mov    rax,QWORD PTR [rsp+0x90]
  e14207:	00 
  e14208:	48 ff c0             	inc    rax
  e1420b:	48 83 44 24 40 40    	add    QWORD PTR [rsp+0x40],0x40
  e14211:	4c 39 c0             	cmp    rax,r8
  e14214:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e14218:	0f 84 c2 fe ff ff    	je     e140e0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4060>
  e1421e:	48 89 84 24 90 00 00 	mov    QWORD PTR [rsp+0x90],rax
  e14225:	00 
  e14226:	48 8d 0c 00          	lea    rcx,[rax+rax*1]
  e1422a:	48 8b 44 24 48       	mov    rax,QWORD PTR [rsp+0x48]
  e1422f:	48 89 8c 24 88 00 00 	mov    QWORD PTR [rsp+0x88],rcx
  e14236:	00 
  e14237:	48 0f af c1          	imul   rax,rcx
  e1423b:	48 8b 4c 24 38       	mov    rcx,QWORD PTR [rsp+0x38]
  e14240:	48 8d 0c c1          	lea    rcx,[rcx+rax*8]
  e14244:	49 83 ff 02          	cmp    r15,0x2
  e14248:	0f 82 e2 01 00 00    	jb     e14430 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x43b0>
  e1424e:	48 8b 44 24 20       	mov    rax,QWORD PTR [rsp+0x20]
  e14253:	4c 8b 30             	mov    r14,QWORD PTR [rax]
  e14256:	48 8b 5c 24 60       	mov    rbx,QWORD PTR [rsp+0x60]
  e1425b:	4c 8b ac 24 d0 00 00 	mov    r13,QWORD PTR [rsp+0xd0]
  e14262:	00 
  e14263:	49 89 cc             	mov    r12,rcx
  e14266:	4c 8b bc 24 d8 00 00 	mov    r15,QWORD PTR [rsp+0xd8]
  e1426d:	00 
  e1426e:	48 89 4c 24 08       	mov    QWORD PTR [rsp+0x8],rcx
  e14273:	eb 45                	jmp    e142ba <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x423a>
  e14275:	0f 28 44 24 70       	movaps xmm0,XMMWORD PTR [rsp+0x70]
  e1427a:	0f 29 84 24 60 01 00 	movaps XMMWORD PTR [rsp+0x160],xmm0
  e14281:	00 
  e14282:	4c 89 ff             	mov    rdi,r15
  e14285:	4c 89 e6             	mov    rsi,r12
  e14288:	4c 89 f1             	mov    rcx,r14
  e1428b:	4c 8d 8c 24 60 01 00 	lea    r9,[rsp+0x160]
  e14292:	00 
  e14293:	e8 a8 77 f3 ff       	call   d4ba40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e14298:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  e1429f:	00 
  e142a0:	4c 0f af f5          	imul   r14,rbp
  e142a4:	49 83 c5 18          	add    r13,0x18
  e142a8:	48 ff cb             	dec    rbx
  e142ab:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e142af:	48 8b 4c 24 08       	mov    rcx,QWORD PTR [rsp+0x8]
  e142b4:	0f 84 79 01 00 00    	je     e14433 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x43b3>
  e142ba:	4c 89 f8             	mov    rax,r15
  e142bd:	4d 89 e7             	mov    r15,r12
  e142c0:	49 8b 6d f8          	mov    rbp,QWORD PTR [r13-0x8]
  e142c4:	48 83 fb 01          	cmp    rbx,0x1
  e142c8:	49 89 c4             	mov    r12,rax
  e142cb:	4c 0f 44 e1          	cmove  r12,rcx
  e142cf:	4d 8b 45 00          	mov    r8,QWORD PTR [r13+0x0]
  e142d3:	4c 03 44 24 20       	add    r8,QWORD PTR [rsp+0x20]
  e142d8:	48 89 ac 24 00 01 00 	mov    QWORD PTR [rsp+0x100],rbp
  e142df:	00 
  e142e0:	48 8d 45 fe          	lea    rax,[rbp-0x2]
  e142e4:	48 83 f8 0e          	cmp    rax,0xe
  e142e8:	0f 87 3a 16 00 00    	ja     e15928 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x58a8>
  e142ee:	48 8d 0d 1f fc 28 ff 	lea    rcx,[rip+0xffffffffff28fc1f]        # a3f14 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x313c4>
  e142f5:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  e142f9:	48 01 c8             	add    rax,rcx
  e142fc:	ff e0                	jmp    rax
  e142fe:	4c 89 ff             	mov    rdi,r15
  e14301:	4c 89 e6             	mov    rsi,r12
  e14304:	4c 89 f1             	mov    rcx,r14
  e14307:	e8 74 df f2 ff       	call   d42280 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e1430c:	eb 92                	jmp    e142a0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4220>
  e1430e:	4c 89 ff             	mov    rdi,r15
  e14311:	4c 89 e6             	mov    rsi,r12
  e14314:	4c 89 f1             	mov    rcx,r14
  e14317:	e8 24 34 f3 ff       	call   d47740 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e1431c:	eb 82                	jmp    e142a0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4220>
  e1431e:	4c 89 ff             	mov    rdi,r15
  e14321:	4c 89 e6             	mov    rsi,r12
  e14324:	4c 89 f1             	mov    rcx,r14
  e14327:	e8 94 e9 f2 ff       	call   d42cc0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e1432c:	e9 6f ff ff ff       	jmp    e142a0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4220>
  e14331:	4c 89 ff             	mov    rdi,r15
  e14334:	4c 89 e6             	mov    rsi,r12
  e14337:	4c 89 f1             	mov    rcx,r14
  e1433a:	e8 c1 4c f3 ff       	call   d49000 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e1433f:	e9 5c ff ff ff       	jmp    e142a0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4220>
  e14344:	4c 89 ff             	mov    rdi,r15
  e14347:	4c 89 e6             	mov    rsi,r12
  e1434a:	4c 89 f1             	mov    rcx,r14
  e1434d:	e8 2e 13 f3 ff       	call   d45680 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e14352:	e9 49 ff ff ff       	jmp    e142a0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4220>
  e14357:	4c 89 ff             	mov    rdi,r15
  e1435a:	4c 89 e6             	mov    rsi,r12
  e1435d:	4c 89 f1             	mov    rcx,r14
  e14360:	e8 db e2 f2 ff       	call   d42640 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e14365:	e9 36 ff ff ff       	jmp    e142a0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4220>
  e1436a:	4c 89 ff             	mov    rdi,r15
  e1436d:	4c 89 e6             	mov    rsi,r12
  e14370:	4c 89 f1             	mov    rcx,r14
  e14373:	e8 48 e5 f2 ff       	call   d428c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e14378:	e9 23 ff ff ff       	jmp    e142a0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4220>
  e1437d:	4c 89 ff             	mov    rdi,r15
  e14380:	4c 89 e6             	mov    rsi,r12
  e14383:	4c 89 f1             	mov    rcx,r14
  e14386:	e8 75 fc f2 ff       	call   d44000 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e1438b:	e9 10 ff ff ff       	jmp    e142a0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4220>
  e14390:	4c 89 ff             	mov    rdi,r15
  e14393:	4c 89 e6             	mov    rsi,r12
  e14396:	4c 89 f1             	mov    rcx,r14
  e14399:	e8 62 e0 f2 ff       	call   d42400 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e1439e:	e9 fd fe ff ff       	jmp    e142a0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4220>
  e143a3:	4c 89 ff             	mov    rdi,r15
  e143a6:	4c 89 e6             	mov    rsi,r12
  e143a9:	4c 89 f1             	mov    rcx,r14
  e143ac:	e8 cf ed f2 ff       	call   d43180 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e143b1:	e9 ea fe ff ff       	jmp    e142a0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4220>
  e143b6:	4c 89 ff             	mov    rdi,r15
  e143b9:	4c 89 e6             	mov    rsi,r12
  e143bc:	4c 89 f1             	mov    rcx,r14
  e143bf:	e8 fc 60 f3 ff       	call   d4a4c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e143c4:	e9 d7 fe ff ff       	jmp    e142a0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4220>
  e143c9:	0f 28 44 24 70       	movaps xmm0,XMMWORD PTR [rsp+0x70]
  e143ce:	0f 29 84 24 60 01 00 	movaps XMMWORD PTR [rsp+0x160],xmm0
  e143d5:	00 
  e143d6:	4c 89 ff             	mov    rdi,r15
  e143d9:	4c 89 e6             	mov    rsi,r12
  e143dc:	4c 89 f1             	mov    rcx,r14
  e143df:	4c 8d 8c 24 60 01 00 	lea    r9,[rsp+0x160]
  e143e6:	00 
  e143e7:	e8 14 f5 f2 ff       	call   d43900 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e143ec:	e9 af fe ff ff       	jmp    e142a0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4220>
  e143f1:	0f 28 44 24 70       	movaps xmm0,XMMWORD PTR [rsp+0x70]
  e143f6:	0f 29 84 24 60 01 00 	movaps XMMWORD PTR [rsp+0x160],xmm0
  e143fd:	00 
  e143fe:	4c 89 ff             	mov    rdi,r15
  e14401:	4c 89 e6             	mov    rsi,r12
  e14404:	4c 89 f1             	mov    rcx,r14
  e14407:	4c 8d 8c 24 60 01 00 	lea    r9,[rsp+0x160]
  e1440e:	00 
  e1440f:	e8 2c 25 f3 ff       	call   d46940 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e14414:	e9 87 fe ff ff       	jmp    e142a0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4220>
  e14419:	4c 89 ff             	mov    rdi,r15
  e1441c:	4c 89 e6             	mov    rsi,r12
  e1441f:	4c 89 f1             	mov    rcx,r14
  e14422:	e8 59 06 f3 ff       	call   d44a80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e14427:	e9 74 fe ff ff       	jmp    e142a0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4220>
  e1442c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  e14430:	49 89 cc             	mov    r12,rcx
  e14433:	4c 8b 6c 24 68       	mov    r13,QWORD PTR [rsp+0x68]
  e14438:	4d 85 ed             	test   r13,r13
  e1443b:	0f 84 81 15 00 00    	je     e159c2 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5942>
  e14441:	48 89 d0             	mov    rax,rdx
  e14444:	4c 09 e8             	or     rax,r13
  e14447:	48 c1 e8 20          	shr    rax,0x20
  e1444b:	4c 8b 84 24 b8 00 00 	mov    r8,QWORD PTR [rsp+0xb8]
  e14452:	00 
  e14453:	4c 8b bc 24 f8 00 00 	mov    r15,QWORD PTR [rsp+0xf8]
  e1445a:	00 
  e1445b:	0f b6 6c 24 10       	movzx  ebp,BYTE PTR [rsp+0x10]
  e14460:	48 8b 5c 24 58       	mov    rbx,QWORD PTR [rsp+0x58]
  e14465:	4c 8b 74 24 50       	mov    r14,QWORD PTR [rsp+0x50]
  e1446a:	74 24                	je     e14490 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4410>
  e1446c:	48 89 d0             	mov    rax,rdx
  e1446f:	31 d2                	xor    edx,edx
  e14471:	49 f7 f5             	div    r13
  e14474:	48 83 bc 24 e0 00 00 	cmp    QWORD PTR [rsp+0xe0],0x0
  e1447b:	00 00 
  e1447d:	75 27                	jne    e144a6 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4426>
  e1447f:	e9 7c fd ff ff       	jmp    e14200 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4180>
  e14484:	66 66 66 2e 0f 1f 84 	data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  e1448b:	00 00 00 00 00 
  e14490:	89 d0                	mov    eax,edx
  e14492:	31 d2                	xor    edx,edx
  e14494:	41 f7 f5             	div    r13d
  e14497:	48 83 bc 24 e0 00 00 	cmp    QWORD PTR [rsp+0xe0],0x0
  e1449e:	00 00 
  e144a0:	0f 84 5a fd ff ff    	je     e14200 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4180>
  e144a6:	48 8b 94 24 88 00 00 	mov    rdx,QWORD PTR [rsp+0x88]
  e144ad:	00 
  e144ae:	48 03 94 24 f0 00 00 	add    rdx,QWORD PTR [rsp+0xf0]
  e144b5:	00 
  e144b6:	48 01 d2             	add    rdx,rdx
  e144b9:	48 0f af c2          	imul   rax,rdx
  e144bd:	49 0f af d5          	imul   rdx,r13
  e144c1:	48 8b 8c 24 b0 00 00 	mov    rcx,QWORD PTR [rsp+0xb0]
  e144c8:	00 
  e144c9:	48 8d 04 c1          	lea    rax,[rcx+rax*8]
  e144cd:	48 8b 8c 24 a8 00 00 	mov    rcx,QWORD PTR [rsp+0xa8]
  e144d4:	00 
  e144d5:	48 8d 14 d1          	lea    rdx,[rcx+rdx*8]
  e144d9:	49 83 c4 30          	add    r12,0x30
  e144dd:	48 8b 74 24 40       	mov    rsi,QWORD PTR [rsp+0x40]
  e144e2:	48 8b bc 24 a0 00 00 	mov    rdi,QWORD PTR [rsp+0xa0]
  e144e9:	00 
  e144ea:	45 31 db             	xor    r11d,r11d
  e144ed:	eb 35                	jmp    e14524 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x44a4>
  e144ef:	90                   	nop
  e144f0:	48 8d 4e e0          	lea    rcx,[rsi-0x20]
  e144f4:	4c 8d 4e f0          	lea    r9,[rsi-0x10]
  e144f8:	4c 8d 56 10          	lea    r10,[rsi+0x10]
  e144fc:	66 0f 2b 21          	movntpd XMMWORD PTR [rcx],xmm4
  e14500:	66 41 0f 2b 19       	movntpd XMMWORD PTR [r9],xmm3
  e14505:	66 0f 2b 16          	movntpd XMMWORD PTR [rsi],xmm2
  e14509:	66 41 0f 2b 02       	movntpd XMMWORD PTR [r10],xmm0
  e1450e:	48 03 74 24 30       	add    rsi,QWORD PTR [rsp+0x30]
  e14513:	49 83 c4 40          	add    r12,0x40
  e14517:	49 83 c3 02          	add    r11,0x2
  e1451b:	48 ff c7             	inc    rdi
  e1451e:	0f 84 dc fc ff ff    	je     e14200 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4180>
  e14524:	4d 89 d9             	mov    r9,r11
  e14527:	89 d9                	mov    ecx,ebx
  e14529:	49 d3 e9             	shr    r9,cl
  e1452c:	49 c1 e1 05          	shl    r9,0x5
  e14530:	66 42 0f 10 04 08    	movupd xmm0,XMMWORD PTR [rax+r9*1]
  e14536:	66 42 0f 10 54 08 10 	movupd xmm2,XMMWORD PTR [rax+r9*1+0x10]
  e1453d:	4c 89 d9             	mov    rcx,r11
  e14540:	4c 21 f1             	and    rcx,r14
  e14543:	48 c1 e1 05          	shl    rcx,0x5
  e14547:	66 0f 10 1c 0a       	movupd xmm3,XMMWORD PTR [rdx+rcx*1]
  e1454c:	66 0f 10 4c 0a 10    	movupd xmm1,XMMWORD PTR [rdx+rcx*1+0x10]
  e14552:	66 0f 10 74 0a 20    	movupd xmm6,XMMWORD PTR [rdx+rcx*1+0x20]
  e14558:	66 0f 10 64 0a 30    	movupd xmm4,XMMWORD PTR [rdx+rcx*1+0x30]
  e1455e:	66 0f 28 ea          	movapd xmm5,xmm2
  e14562:	66 0f 59 e9          	mulpd  xmm5,xmm1
  e14566:	66 44 0f 28 c0       	movapd xmm8,xmm0
  e1456b:	66 44 0f 59 c3       	mulpd  xmm8,xmm3
  e14570:	66 44 0f 5c c5       	subpd  xmm8,xmm5
  e14575:	66 0f 59 da          	mulpd  xmm3,xmm2
  e14579:	66 0f 59 c8          	mulpd  xmm1,xmm0
  e1457d:	66 0f 58 cb          	addpd  xmm1,xmm3
  e14581:	66 45 0f 10 4c 24 d0 	movupd xmm9,XMMWORD PTR [r12-0x30]
  e14588:	66 45 0f 10 54 24 e0 	movupd xmm10,XMMWORD PTR [r12-0x20]
  e1458f:	66 41 0f 10 6c 24 f0 	movupd xmm5,XMMWORD PTR [r12-0x10]
  e14596:	66 41 0f 10 3c 24    	movupd xmm7,XMMWORD PTR [r12]
  e1459c:	66 41 0f 28 d9       	movapd xmm3,xmm9
  e145a1:	66 41 0f 59 d8       	mulpd  xmm3,xmm8
  e145a6:	66 45 0f 59 c2       	mulpd  xmm8,xmm10
  e145ab:	66 44 0f 59 d1       	mulpd  xmm10,xmm1
  e145b0:	66 41 0f 5c da       	subpd  xmm3,xmm10
  e145b5:	66 41 0f 59 c9       	mulpd  xmm1,xmm9
  e145ba:	66 41 0f 58 c8       	addpd  xmm1,xmm8
  e145bf:	66 44 0f 28 c2       	movapd xmm8,xmm2
  e145c4:	66 44 0f 59 c4       	mulpd  xmm8,xmm4
  e145c9:	66 44 0f 28 c8       	movapd xmm9,xmm0
  e145ce:	66 44 0f 59 ce       	mulpd  xmm9,xmm6
  e145d3:	66 45 0f 5c c8       	subpd  xmm9,xmm8
  e145d8:	66 0f 59 d6          	mulpd  xmm2,xmm6
  e145dc:	66 0f 59 c4          	mulpd  xmm0,xmm4
  e145e0:	66 0f 58 c2          	addpd  xmm0,xmm2
  e145e4:	66 0f 28 d5          	movapd xmm2,xmm5
  e145e8:	66 41 0f 59 d1       	mulpd  xmm2,xmm9
  e145ed:	66 44 0f 59 cf       	mulpd  xmm9,xmm7
  e145f2:	66 0f 59 f8          	mulpd  xmm7,xmm0
  e145f6:	66 0f 5c d7          	subpd  xmm2,xmm7
  e145fa:	66 0f 59 c5          	mulpd  xmm0,xmm5
  e145fe:	66 41 0f 58 c1       	addpd  xmm0,xmm9
  e14603:	66 0f 28 e3          	movapd xmm4,xmm3
  e14607:	66 0f 14 e2          	unpcklpd xmm4,xmm2
  e1460b:	0f 12 d3             	movhlps xmm2,xmm3
  e1460e:	66 0f 28 d9          	movapd xmm3,xmm1
  e14612:	66 0f 14 d8          	unpcklpd xmm3,xmm0
  e14616:	0f 12 c1             	movhlps xmm0,xmm1
  e14619:	40 84 ed             	test   bpl,bpl
  e1461c:	0f 85 ce fe ff ff    	jne    e144f0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4470>
  e14622:	66 0f 11 66 e0       	movupd XMMWORD PTR [rsi-0x20],xmm4
  e14627:	66 0f 11 5e f0       	movupd XMMWORD PTR [rsi-0x10],xmm3
  e1462c:	0f 11 16             	movups XMMWORD PTR [rsi],xmm2
  e1462f:	0f 11 46 10          	movups XMMWORD PTR [rsi+0x10],xmm0
  e14633:	e9 d6 fe ff ff       	jmp    e1450e <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x448e>
  e14638:	40 84 ed             	test   bpl,bpl
  e1463b:	74 03                	je     e14640 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x45c0>
  e1463d:	0f ae f8             	sfence
  e14640:	48 89 d0             	mov    rax,rdx
  e14643:	48 8b 8c 24 c8 00 00 	mov    rcx,QWORD PTR [rsp+0xc8]
  e1464a:	00 
  e1464b:	48 09 c8             	or     rax,rcx
  e1464e:	48 c1 e8 20          	shr    rax,0x20
  e14652:	0f 84 ad 0c 00 00    	je     e15305 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5285>
  e14658:	48 89 d0             	mov    rax,rdx
  e1465b:	31 d2                	xor    edx,edx
  e1465d:	48 f7 f1             	div    rcx
  e14660:	e9 a6 0c 00 00       	jmp    e1530b <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x528b>
  e14665:	89 d8                	mov    eax,ebx
  e14667:	31 d2                	xor    edx,edx
  e14669:	f7 f6                	div    esi
  e1466b:	48 8b 74 24 38       	mov    rsi,QWORD PTR [rsp+0x38]
  e14670:	48 03 b4 24 d8 00 00 	add    rsi,QWORD PTR [rsp+0xd8]
  e14677:	00 
  e14678:	48 89 74 24 38       	mov    QWORD PTR [rsp+0x38],rsi
  e1467d:	0f 28 44 24 70       	movaps xmm0,XMMWORD PTR [rsp+0x70]
  e14682:	0f 16 c0             	movlhps xmm0,xmm0
  e14685:	0f 29 44 24 70       	movaps XMMWORD PTR [rsp+0x70],xmm0
  e1468a:	45 31 e4             	xor    r12d,r12d
  e1468d:	48 85 d2             	test   rdx,rdx
  e14690:	41 0f 95 c4          	setne  r12b
  e14694:	49 01 c4             	add    r12,rax
  e14697:	4c 89 84 24 b8 00 00 	mov    QWORD PTR [rsp+0xb8],r8
  e1469e:	00 
  e1469f:	48 89 ca             	mov    rdx,rcx
  e146a2:	48 89 0c 24          	mov    QWORD PTR [rsp],rcx
  e146a6:	48 89 5c 24 28       	mov    QWORD PTR [rsp+0x28],rbx
  e146ab:	4c 89 b4 24 40 01 00 	mov    QWORD PTR [rsp+0x140],r14
  e146b2:	00 
  e146b3:	0f 84 1f 06 00 00    	je     e14cd8 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4c58>
  e146b9:	4d 85 ff             	test   r15,r15
  e146bc:	48 8b 84 24 20 01 00 	mov    rax,QWORD PTR [rsp+0x120]
  e146c3:	00 
  e146c4:	0f 84 20 13 00 00    	je     e159ea <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x596a>
  e146ca:	4c 8b 68 70          	mov    r13,QWORD PTR [rax+0x70]
  e146ce:	48 8b 80 90 00 00 00 	mov    rax,QWORD PTR [rax+0x90]
  e146d5:	48 89 44 24 48       	mov    QWORD PTR [rsp+0x48],rax
  e146da:	48 89 d1             	mov    rcx,rdx
  e146dd:	48 d1 e9             	shr    rcx,1
  e146e0:	48 89 d0             	mov    rax,rdx
  e146e3:	48 29 c8             	sub    rax,rcx
  e146e6:	48 89 84 24 e0 00 00 	mov    QWORD PTR [rsp+0xe0],rax
  e146ed:	00 
  e146ee:	f3 49 0f bc c5       	tzcnt  rax,r13
  e146f3:	48 89 44 24 58       	mov    QWORD PTR [rsp+0x58],rax
  e146f8:	48 b8 ff ff ff ff ff 	movabs rax,0x7ffffffffffffff
  e146ff:	ff ff 07 
  e14702:	4c 01 e8             	add    rax,r13
  e14705:	48 89 44 24 50       	mov    QWORD PTR [rsp+0x50],rax
  e1470a:	48 8b 44 24 20       	mov    rax,QWORD PTR [rsp+0x20]
  e1470f:	48 83 c0 20          	add    rax,0x20
  e14713:	48 89 84 24 d0 00 00 	mov    QWORD PTR [rsp+0xd0],rax
  e1471a:	00 
  e1471b:	49 8d 47 ff          	lea    rax,[r15-0x1]
  e1471f:	48 89 44 24 60       	mov    QWORD PTR [rsp+0x60],rax
  e14724:	48 29 d1             	sub    rcx,rdx
  e14727:	48 89 8c 24 a0 00 00 	mov    QWORD PTR [rsp+0xa0],rcx
  e1472e:	00 
  e1472f:	48 8b 84 24 98 00 00 	mov    rax,QWORD PTR [rsp+0x98]
  e14736:	00 
  e14737:	48 83 c0 20          	add    rax,0x20
  e1473b:	48 89 84 24 38 01 00 	mov    QWORD PTR [rsp+0x138],rax
  e14742:	00 
  e14743:	4c 89 c0             	mov    rax,r8
  e14746:	48 c1 e0 06          	shl    rax,0x6
  e1474a:	48 89 84 24 28 01 00 	mov    QWORD PTR [rsp+0x128],rax
  e14751:	00 
  e14752:	48 89 d8             	mov    rax,rbx
  e14755:	48 c1 e0 05          	shl    rax,0x5
  e14759:	48 89 44 24 30       	mov    QWORD PTR [rsp+0x30],rax
  e1475e:	31 c9                	xor    ecx,ecx
  e14760:	4c 89 bc 24 f8 00 00 	mov    QWORD PTR [rsp+0xf8],r15
  e14767:	00 
  e14768:	40 88 6c 24 10       	mov    BYTE PTR [rsp+0x10],bpl
  e1476d:	4c 89 6c 24 68       	mov    QWORD PTR [rsp+0x68],r13
  e14772:	eb 42                	jmp    e147b6 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4736>
  e14774:	66 66 66 2e 0f 1f 84 	data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  e1477b:	00 00 00 00 00 
  e14780:	48 8b 84 24 28 01 00 	mov    rax,QWORD PTR [rsp+0x128]
  e14787:	00 
  e14788:	48 01 84 24 38 01 00 	add    QWORD PTR [rsp+0x138],rax
  e1478f:	00 
  e14790:	48 8b 8c 24 30 01 00 	mov    rcx,QWORD PTR [rsp+0x130]
  e14797:	00 
  e14798:	4c 8b a4 24 58 01 00 	mov    r12,QWORD PTR [rsp+0x158]
  e1479f:	00 
  e147a0:	4d 85 e4             	test   r12,r12
  e147a3:	48 8b 5c 24 28       	mov    rbx,QWORD PTR [rsp+0x28]
  e147a8:	4c 8b b4 24 40 01 00 	mov    r14,QWORD PTR [rsp+0x140]
  e147af:	00 
  e147b0:	0f 84 22 05 00 00    	je     e14cd8 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4c58>
  e147b6:	48 8b 44 24 20       	mov    rax,QWORD PTR [rsp+0x20]
  e147bb:	48 8b 00             	mov    rax,QWORD PTR [rax]
  e147be:	48 83 f8 02          	cmp    rax,0x2
  e147c2:	74 6c                	je     e14830 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x47b0>
  e147c4:	48 83 f8 04          	cmp    rax,0x4
  e147c8:	74 36                	je     e14800 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4780>
  e147ca:	48 83 f8 08          	cmp    rax,0x8
  e147ce:	0f 85 a6 11 00 00    	jne    e1597a <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x58fa>
  e147d4:	48 89 cf             	mov    rdi,rcx
  e147d7:	48 c1 e7 04          	shl    rdi,0x4
  e147db:	48 03 bc 24 48 01 00 	add    rdi,QWORD PTR [rsp+0x148]
  e147e2:	00 
  e147e3:	48 8b 74 24 38       	mov    rsi,QWORD PTR [rsp+0x38]
  e147e8:	49 89 ce             	mov    r14,rcx
  e147eb:	48 89 d9             	mov    rcx,rbx
  e147ee:	4c 8b 4c 24 48       	mov    r9,QWORD PTR [rsp+0x48]
  e147f3:	0f 28 44 24 70       	movaps xmm0,XMMWORD PTR [rsp+0x70]
  e147f8:	e8 c3 ec fc ff       	call   de34c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first_group>
  e147fd:	eb 5a                	jmp    e14859 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x47d9>
  e147ff:	90                   	nop
  e14800:	48 89 cf             	mov    rdi,rcx
  e14803:	48 c1 e7 04          	shl    rdi,0x4
  e14807:	48 03 bc 24 48 01 00 	add    rdi,QWORD PTR [rsp+0x148]
  e1480e:	00 
  e1480f:	48 8b 74 24 38       	mov    rsi,QWORD PTR [rsp+0x38]
  e14814:	49 89 ce             	mov    r14,rcx
  e14817:	48 89 d9             	mov    rcx,rbx
  e1481a:	4c 8b 4c 24 48       	mov    r9,QWORD PTR [rsp+0x48]
  e1481f:	0f 28 44 24 70       	movaps xmm0,XMMWORD PTR [rsp+0x70]
  e14824:	e8 d7 e4 fc ff       	call   de2d00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first_group>
  e14829:	eb 2e                	jmp    e14859 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x47d9>
  e1482b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  e14830:	48 89 cf             	mov    rdi,rcx
  e14833:	48 c1 e7 04          	shl    rdi,0x4
  e14837:	48 03 bc 24 48 01 00 	add    rdi,QWORD PTR [rsp+0x148]
  e1483e:	00 
  e1483f:	48 8b 74 24 38       	mov    rsi,QWORD PTR [rsp+0x38]
  e14844:	49 89 ce             	mov    r14,rcx
  e14847:	48 89 d9             	mov    rcx,rbx
  e1484a:	4c 8b 4c 24 48       	mov    r9,QWORD PTR [rsp+0x48]
  e1484f:	0f 28 44 24 70       	movaps xmm0,XMMWORD PTR [rsp+0x70]
  e14854:	e8 27 f1 fc ff       	call   de3980 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first_group>
  e14859:	48 8b 84 24 c8 00 00 	mov    rax,QWORD PTR [rsp+0xc8]
  e14860:	00 
  e14861:	4c 89 b4 24 f0 00 00 	mov    QWORD PTR [rsp+0xf0],r14
  e14868:	00 
  e14869:	4c 01 f0             	add    rax,r14
  e1486c:	48 89 84 24 30 01 00 	mov    QWORD PTR [rsp+0x130],rax
  e14873:	00 
  e14874:	49 ff cc             	dec    r12
  e14877:	4c 89 a4 24 58 01 00 	mov    QWORD PTR [rsp+0x158],r12
  e1487e:	00 
  e1487f:	48 8b 84 24 38 01 00 	mov    rax,QWORD PTR [rsp+0x138]
  e14886:	00 
  e14887:	48 89 44 24 40       	mov    QWORD PTR [rsp+0x40],rax
  e1488c:	31 c0                	xor    eax,eax
  e1488e:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e14892:	eb 2a                	jmp    e148be <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x483e>
  e14894:	66 66 66 2e 0f 1f 84 	data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  e1489b:	00 00 00 00 00 
  e148a0:	48 8b 84 24 90 00 00 	mov    rax,QWORD PTR [rsp+0x90]
  e148a7:	00 
  e148a8:	48 ff c0             	inc    rax
  e148ab:	48 83 44 24 40 40    	add    QWORD PTR [rsp+0x40],0x40
  e148b1:	4c 39 c0             	cmp    rax,r8
  e148b4:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e148b8:	0f 84 c2 fe ff ff    	je     e14780 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4700>
  e148be:	48 89 84 24 90 00 00 	mov    QWORD PTR [rsp+0x90],rax
  e148c5:	00 
  e148c6:	48 8d 0c 00          	lea    rcx,[rax+rax*1]
  e148ca:	48 8b 44 24 48       	mov    rax,QWORD PTR [rsp+0x48]
  e148cf:	48 89 8c 24 88 00 00 	mov    QWORD PTR [rsp+0x88],rcx
  e148d6:	00 
  e148d7:	48 0f af c1          	imul   rax,rcx
  e148db:	48 8b 4c 24 38       	mov    rcx,QWORD PTR [rsp+0x38]
  e148e0:	48 8d 0c c1          	lea    rcx,[rcx+rax*8]
  e148e4:	49 83 ff 02          	cmp    r15,0x2
  e148e8:	0f 82 e2 01 00 00    	jb     e14ad0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4a50>
  e148ee:	48 8b 44 24 20       	mov    rax,QWORD PTR [rsp+0x20]
  e148f3:	4c 8b 30             	mov    r14,QWORD PTR [rax]
  e148f6:	48 8b 5c 24 60       	mov    rbx,QWORD PTR [rsp+0x60]
  e148fb:	4c 8b ac 24 d0 00 00 	mov    r13,QWORD PTR [rsp+0xd0]
  e14902:	00 
  e14903:	49 89 cc             	mov    r12,rcx
  e14906:	4c 8b bc 24 d8 00 00 	mov    r15,QWORD PTR [rsp+0xd8]
  e1490d:	00 
  e1490e:	48 89 4c 24 08       	mov    QWORD PTR [rsp+0x8],rcx
  e14913:	eb 45                	jmp    e1495a <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x48da>
  e14915:	0f 28 44 24 70       	movaps xmm0,XMMWORD PTR [rsp+0x70]
  e1491a:	0f 29 84 24 60 01 00 	movaps XMMWORD PTR [rsp+0x160],xmm0
  e14921:	00 
  e14922:	4c 89 ff             	mov    rdi,r15
  e14925:	4c 89 e6             	mov    rsi,r12
  e14928:	4c 89 f1             	mov    rcx,r14
  e1492b:	4c 8d 8c 24 60 01 00 	lea    r9,[rsp+0x160]
  e14932:	00 
  e14933:	e8 08 71 f3 ff       	call   d4ba40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e14938:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  e1493f:	00 
  e14940:	4c 0f af f5          	imul   r14,rbp
  e14944:	49 83 c5 18          	add    r13,0x18
  e14948:	48 ff cb             	dec    rbx
  e1494b:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  e1494f:	48 8b 4c 24 08       	mov    rcx,QWORD PTR [rsp+0x8]
  e14954:	0f 84 79 01 00 00    	je     e14ad3 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4a53>
  e1495a:	4c 89 f8             	mov    rax,r15
  e1495d:	4d 89 e7             	mov    r15,r12
  e14960:	49 8b 6d f8          	mov    rbp,QWORD PTR [r13-0x8]
  e14964:	48 83 fb 01          	cmp    rbx,0x1
  e14968:	49 89 c4             	mov    r12,rax
  e1496b:	4c 0f 44 e1          	cmove  r12,rcx
  e1496f:	4d 8b 45 00          	mov    r8,QWORD PTR [r13+0x0]
  e14973:	4c 03 44 24 20       	add    r8,QWORD PTR [rsp+0x20]
  e14978:	48 89 ac 24 00 01 00 	mov    QWORD PTR [rsp+0x100],rbp
  e1497f:	00 
  e14980:	48 8d 45 fe          	lea    rax,[rbp-0x2]
  e14984:	48 83 f8 0e          	cmp    rax,0xe
  e14988:	0f 87 9a 0f 00 00    	ja     e15928 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x58a8>
  e1498e:	48 8d 0d c3 f2 28 ff 	lea    rcx,[rip+0xffffffffff28f2c3]        # a3c58 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x31108>
  e14995:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  e14999:	48 01 c8             	add    rax,rcx
  e1499c:	ff e0                	jmp    rax
  e1499e:	4c 89 ff             	mov    rdi,r15
  e149a1:	4c 89 e6             	mov    rsi,r12
  e149a4:	4c 89 f1             	mov    rcx,r14
  e149a7:	e8 d4 d8 f2 ff       	call   d42280 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e149ac:	eb 92                	jmp    e14940 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x48c0>
  e149ae:	4c 89 ff             	mov    rdi,r15
  e149b1:	4c 89 e6             	mov    rsi,r12
  e149b4:	4c 89 f1             	mov    rcx,r14
  e149b7:	e8 84 2d f3 ff       	call   d47740 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e149bc:	eb 82                	jmp    e14940 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x48c0>
  e149be:	4c 89 ff             	mov    rdi,r15
  e149c1:	4c 89 e6             	mov    rsi,r12
  e149c4:	4c 89 f1             	mov    rcx,r14
  e149c7:	e8 f4 e2 f2 ff       	call   d42cc0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e149cc:	e9 6f ff ff ff       	jmp    e14940 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x48c0>
  e149d1:	4c 89 ff             	mov    rdi,r15
  e149d4:	4c 89 e6             	mov    rsi,r12
  e149d7:	4c 89 f1             	mov    rcx,r14
  e149da:	e8 21 46 f3 ff       	call   d49000 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e149df:	e9 5c ff ff ff       	jmp    e14940 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x48c0>
  e149e4:	4c 89 ff             	mov    rdi,r15
  e149e7:	4c 89 e6             	mov    rsi,r12
  e149ea:	4c 89 f1             	mov    rcx,r14
  e149ed:	e8 8e 0c f3 ff       	call   d45680 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e149f2:	e9 49 ff ff ff       	jmp    e14940 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x48c0>
  e149f7:	4c 89 ff             	mov    rdi,r15
  e149fa:	4c 89 e6             	mov    rsi,r12
  e149fd:	4c 89 f1             	mov    rcx,r14
  e14a00:	e8 3b dc f2 ff       	call   d42640 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e14a05:	e9 36 ff ff ff       	jmp    e14940 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x48c0>
  e14a0a:	4c 89 ff             	mov    rdi,r15
  e14a0d:	4c 89 e6             	mov    rsi,r12
  e14a10:	4c 89 f1             	mov    rcx,r14
  e14a13:	e8 a8 de f2 ff       	call   d428c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e14a18:	e9 23 ff ff ff       	jmp    e14940 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x48c0>
  e14a1d:	4c 89 ff             	mov    rdi,r15
  e14a20:	4c 89 e6             	mov    rsi,r12
  e14a23:	4c 89 f1             	mov    rcx,r14
  e14a26:	e8 d5 f5 f2 ff       	call   d44000 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e14a2b:	e9 10 ff ff ff       	jmp    e14940 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x48c0>
  e14a30:	4c 89 ff             	mov    rdi,r15
  e14a33:	4c 89 e6             	mov    rsi,r12
  e14a36:	4c 89 f1             	mov    rcx,r14
  e14a39:	e8 c2 d9 f2 ff       	call   d42400 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e14a3e:	e9 fd fe ff ff       	jmp    e14940 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x48c0>
  e14a43:	4c 89 ff             	mov    rdi,r15
  e14a46:	4c 89 e6             	mov    rsi,r12
  e14a49:	4c 89 f1             	mov    rcx,r14
  e14a4c:	e8 2f e7 f2 ff       	call   d43180 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e14a51:	e9 ea fe ff ff       	jmp    e14940 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x48c0>
  e14a56:	4c 89 ff             	mov    rdi,r15
  e14a59:	4c 89 e6             	mov    rsi,r12
  e14a5c:	4c 89 f1             	mov    rcx,r14
  e14a5f:	e8 5c 5a f3 ff       	call   d4a4c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e14a64:	e9 d7 fe ff ff       	jmp    e14940 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x48c0>
  e14a69:	0f 28 44 24 70       	movaps xmm0,XMMWORD PTR [rsp+0x70]
  e14a6e:	0f 29 84 24 60 01 00 	movaps XMMWORD PTR [rsp+0x160],xmm0
  e14a75:	00 
  e14a76:	4c 89 ff             	mov    rdi,r15
  e14a79:	4c 89 e6             	mov    rsi,r12
  e14a7c:	4c 89 f1             	mov    rcx,r14
  e14a7f:	4c 8d 8c 24 60 01 00 	lea    r9,[rsp+0x160]
  e14a86:	00 
  e14a87:	e8 74 ee f2 ff       	call   d43900 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e14a8c:	e9 af fe ff ff       	jmp    e14940 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x48c0>
  e14a91:	0f 28 44 24 70       	movaps xmm0,XMMWORD PTR [rsp+0x70]
  e14a96:	0f 29 84 24 60 01 00 	movaps XMMWORD PTR [rsp+0x160],xmm0
  e14a9d:	00 
  e14a9e:	4c 89 ff             	mov    rdi,r15
  e14aa1:	4c 89 e6             	mov    rsi,r12
  e14aa4:	4c 89 f1             	mov    rcx,r14
  e14aa7:	4c 8d 8c 24 60 01 00 	lea    r9,[rsp+0x160]
  e14aae:	00 
  e14aaf:	e8 8c 1e f3 ff       	call   d46940 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e14ab4:	e9 87 fe ff ff       	jmp    e14940 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x48c0>
  e14ab9:	4c 89 ff             	mov    rdi,r15
  e14abc:	4c 89 e6             	mov    rsi,r12
  e14abf:	4c 89 f1             	mov    rcx,r14
  e14ac2:	e8 b9 ff f2 ff       	call   d44a80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e14ac7:	e9 74 fe ff ff       	jmp    e14940 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x48c0>
  e14acc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  e14ad0:	49 89 cc             	mov    r12,rcx
  e14ad3:	4c 8b 6c 24 68       	mov    r13,QWORD PTR [rsp+0x68]
  e14ad8:	4d 85 ed             	test   r13,r13
  e14adb:	0f 84 e1 0e 00 00    	je     e159c2 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5942>
  e14ae1:	48 89 d0             	mov    rax,rdx
  e14ae4:	4c 09 e8             	or     rax,r13
  e14ae7:	48 c1 e8 20          	shr    rax,0x20
  e14aeb:	4c 8b 84 24 b8 00 00 	mov    r8,QWORD PTR [rsp+0xb8]
  e14af2:	00 
  e14af3:	4c 8b bc 24 f8 00 00 	mov    r15,QWORD PTR [rsp+0xf8]
  e14afa:	00 
  e14afb:	0f b6 6c 24 10       	movzx  ebp,BYTE PTR [rsp+0x10]
  e14b00:	48 8b 5c 24 58       	mov    rbx,QWORD PTR [rsp+0x58]
  e14b05:	4c 8b 74 24 50       	mov    r14,QWORD PTR [rsp+0x50]
  e14b0a:	74 24                	je     e14b30 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4ab0>
  e14b0c:	48 89 d0             	mov    rax,rdx
  e14b0f:	31 d2                	xor    edx,edx
  e14b11:	49 f7 f5             	div    r13
  e14b14:	48 83 bc 24 e0 00 00 	cmp    QWORD PTR [rsp+0xe0],0x0
  e14b1b:	00 00 
  e14b1d:	75 27                	jne    e14b46 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4ac6>
  e14b1f:	e9 7c fd ff ff       	jmp    e148a0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4820>
  e14b24:	66 66 66 2e 0f 1f 84 	data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  e14b2b:	00 00 00 00 00 
  e14b30:	89 d0                	mov    eax,edx
  e14b32:	31 d2                	xor    edx,edx
  e14b34:	41 f7 f5             	div    r13d
  e14b37:	48 83 bc 24 e0 00 00 	cmp    QWORD PTR [rsp+0xe0],0x0
  e14b3e:	00 00 
  e14b40:	0f 84 5a fd ff ff    	je     e148a0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4820>
  e14b46:	48 8b 94 24 88 00 00 	mov    rdx,QWORD PTR [rsp+0x88]
  e14b4d:	00 
  e14b4e:	48 03 94 24 f0 00 00 	add    rdx,QWORD PTR [rsp+0xf0]
  e14b55:	00 
  e14b56:	48 01 d2             	add    rdx,rdx
  e14b59:	48 0f af c2          	imul   rax,rdx
  e14b5d:	49 0f af d5          	imul   rdx,r13
  e14b61:	48 8b 8c 24 b0 00 00 	mov    rcx,QWORD PTR [rsp+0xb0]
  e14b68:	00 
  e14b69:	48 8d 04 c1          	lea    rax,[rcx+rax*8]
  e14b6d:	48 8b 8c 24 a8 00 00 	mov    rcx,QWORD PTR [rsp+0xa8]
  e14b74:	00 
  e14b75:	48 8d 14 d1          	lea    rdx,[rcx+rdx*8]
  e14b79:	49 83 c4 30          	add    r12,0x30
  e14b7d:	48 8b 74 24 40       	mov    rsi,QWORD PTR [rsp+0x40]
  e14b82:	48 8b bc 24 a0 00 00 	mov    rdi,QWORD PTR [rsp+0xa0]
  e14b89:	00 
  e14b8a:	45 31 db             	xor    r11d,r11d
  e14b8d:	eb 35                	jmp    e14bc4 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4b44>
  e14b8f:	90                   	nop
  e14b90:	48 8d 4e e0          	lea    rcx,[rsi-0x20]
  e14b94:	4c 8d 4e f0          	lea    r9,[rsi-0x10]
  e14b98:	4c 8d 56 10          	lea    r10,[rsi+0x10]
  e14b9c:	66 0f 2b 21          	movntpd XMMWORD PTR [rcx],xmm4
  e14ba0:	66 41 0f 2b 19       	movntpd XMMWORD PTR [r9],xmm3
  e14ba5:	66 0f 2b 16          	movntpd XMMWORD PTR [rsi],xmm2
  e14ba9:	66 41 0f 2b 02       	movntpd XMMWORD PTR [r10],xmm0
  e14bae:	48 03 74 24 30       	add    rsi,QWORD PTR [rsp+0x30]
  e14bb3:	49 83 c4 40          	add    r12,0x40
  e14bb7:	49 83 c3 02          	add    r11,0x2
  e14bbb:	48 ff c7             	inc    rdi
  e14bbe:	0f 84 dc fc ff ff    	je     e148a0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4820>
  e14bc4:	4d 89 d9             	mov    r9,r11
  e14bc7:	89 d9                	mov    ecx,ebx
  e14bc9:	49 d3 e9             	shr    r9,cl
  e14bcc:	49 c1 e1 05          	shl    r9,0x5
  e14bd0:	66 42 0f 10 04 08    	movupd xmm0,XMMWORD PTR [rax+r9*1]
  e14bd6:	66 42 0f 10 54 08 10 	movupd xmm2,XMMWORD PTR [rax+r9*1+0x10]
  e14bdd:	4c 89 d9             	mov    rcx,r11
  e14be0:	4c 21 f1             	and    rcx,r14
  e14be3:	48 c1 e1 05          	shl    rcx,0x5
  e14be7:	66 0f 10 1c 0a       	movupd xmm3,XMMWORD PTR [rdx+rcx*1]
  e14bec:	66 0f 10 4c 0a 10    	movupd xmm1,XMMWORD PTR [rdx+rcx*1+0x10]
  e14bf2:	66 0f 10 74 0a 20    	movupd xmm6,XMMWORD PTR [rdx+rcx*1+0x20]
  e14bf8:	66 0f 10 64 0a 30    	movupd xmm4,XMMWORD PTR [rdx+rcx*1+0x30]
  e14bfe:	66 0f 28 ea          	movapd xmm5,xmm2
  e14c02:	66 0f 59 e9          	mulpd  xmm5,xmm1
  e14c06:	66 44 0f 28 c0       	movapd xmm8,xmm0
  e14c0b:	66 44 0f 59 c3       	mulpd  xmm8,xmm3
  e14c10:	66 44 0f 5c c5       	subpd  xmm8,xmm5
  e14c15:	66 0f 59 da          	mulpd  xmm3,xmm2
  e14c19:	66 0f 59 c8          	mulpd  xmm1,xmm0
  e14c1d:	66 0f 58 cb          	addpd  xmm1,xmm3
  e14c21:	66 45 0f 10 4c 24 d0 	movupd xmm9,XMMWORD PTR [r12-0x30]
  e14c28:	66 45 0f 10 54 24 e0 	movupd xmm10,XMMWORD PTR [r12-0x20]
  e14c2f:	66 41 0f 10 6c 24 f0 	movupd xmm5,XMMWORD PTR [r12-0x10]
  e14c36:	66 41 0f 10 3c 24    	movupd xmm7,XMMWORD PTR [r12]
  e14c3c:	66 41 0f 28 d9       	movapd xmm3,xmm9
  e14c41:	66 41 0f 59 d8       	mulpd  xmm3,xmm8
  e14c46:	66 45 0f 59 c2       	mulpd  xmm8,xmm10
  e14c4b:	66 44 0f 59 d1       	mulpd  xmm10,xmm1
  e14c50:	66 41 0f 5c da       	subpd  xmm3,xmm10
  e14c55:	66 41 0f 59 c9       	mulpd  xmm1,xmm9
  e14c5a:	66 41 0f 58 c8       	addpd  xmm1,xmm8
  e14c5f:	66 44 0f 28 c2       	movapd xmm8,xmm2
  e14c64:	66 44 0f 59 c4       	mulpd  xmm8,xmm4
  e14c69:	66 44 0f 28 c8       	movapd xmm9,xmm0
  e14c6e:	66 44 0f 59 ce       	mulpd  xmm9,xmm6
  e14c73:	66 45 0f 5c c8       	subpd  xmm9,xmm8
  e14c78:	66 0f 59 d6          	mulpd  xmm2,xmm6
  e14c7c:	66 0f 59 c4          	mulpd  xmm0,xmm4
  e14c80:	66 0f 58 c2          	addpd  xmm0,xmm2
  e14c84:	66 0f 28 d5          	movapd xmm2,xmm5
  e14c88:	66 41 0f 59 d1       	mulpd  xmm2,xmm9
  e14c8d:	66 44 0f 59 cf       	mulpd  xmm9,xmm7
  e14c92:	66 0f 59 f8          	mulpd  xmm7,xmm0
  e14c96:	66 0f 5c d7          	subpd  xmm2,xmm7
  e14c9a:	66 0f 59 c5          	mulpd  xmm0,xmm5
  e14c9e:	66 41 0f 58 c1       	addpd  xmm0,xmm9
  e14ca3:	66 0f 28 e3          	movapd xmm4,xmm3
  e14ca7:	66 0f 14 e2          	unpcklpd xmm4,xmm2
  e14cab:	0f 12 d3             	movhlps xmm2,xmm3
  e14cae:	66 0f 28 d9          	movapd xmm3,xmm1
  e14cb2:	66 0f 14 d8          	unpcklpd xmm3,xmm0
  e14cb6:	0f 12 c1             	movhlps xmm0,xmm1
  e14cb9:	40 84 ed             	test   bpl,bpl
  e14cbc:	0f 85 ce fe ff ff    	jne    e14b90 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4b10>
  e14cc2:	66 0f 11 66 e0       	movupd XMMWORD PTR [rsi-0x20],xmm4
  e14cc7:	66 0f 11 5e f0       	movupd XMMWORD PTR [rsi-0x10],xmm3
  e14ccc:	0f 11 16             	movups XMMWORD PTR [rsi],xmm2
  e14ccf:	0f 11 46 10          	movups XMMWORD PTR [rsi+0x10],xmm0
  e14cd3:	e9 d6 fe ff ff       	jmp    e14bae <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4b2e>
  e14cd8:	40 84 ed             	test   bpl,bpl
  e14cdb:	74 03                	je     e14ce0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4c60>
  e14cdd:	0f ae f8             	sfence
  e14ce0:	48 89 d0             	mov    rax,rdx
  e14ce3:	48 8b 8c 24 c8 00 00 	mov    rcx,QWORD PTR [rsp+0xc8]
  e14cea:	00 
  e14ceb:	48 09 c8             	or     rax,rcx
  e14cee:	48 c1 e8 20          	shr    rax,0x20
  e14cf2:	74 0a                	je     e14cfe <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4c7e>
  e14cf4:	48 89 d0             	mov    rax,rdx
  e14cf7:	31 d2                	xor    edx,edx
  e14cf9:	48 f7 f1             	div    rcx
  e14cfc:	eb 06                	jmp    e14d04 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4c84>
  e14cfe:	89 d0                	mov    eax,edx
  e14d00:	31 d2                	xor    edx,edx
  e14d02:	f7 f1                	div    ecx
  e14d04:	40 20 ac 24 e8 00 00 	and    BYTE PTR [rsp+0xe8],bpl
  e14d0b:	00 
  e14d0c:	31 f6                	xor    esi,esi
  e14d0e:	48 85 d2             	test   rdx,rdx
  e14d11:	40 0f 95 c6          	setne  sil
  e14d15:	48 01 c6             	add    rsi,rax
  e14d18:	0f 84 f7 0b 00 00    	je     e15915 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5895>
  e14d1e:	4d 85 f6             	test   r14,r14
  e14d21:	0f 84 d3 0c 00 00    	je     e159fa <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x597a>
  e14d27:	4b 8d 04 7f          	lea    rax,[r15+r15*2]
  e14d2b:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e14d30:	48 8d 0c c2          	lea    rcx,[rdx+rax*8]
  e14d34:	48 89 8c 24 90 00 00 	mov    QWORD PTR [rsp+0x90],rcx
  e14d3b:	00 
  e14d3c:	48 8b 8c 24 20 01 00 	mov    rcx,QWORD PTR [rsp+0x120]
  e14d43:	00 
  e14d44:	48 8b b9 90 00 00 00 	mov    rdi,QWORD PTR [rcx+0x90]
  e14d4b:	48 8d 0c 1b          	lea    rcx,[rbx+rbx*1]
  e14d4f:	48 89 4c 24 48       	mov    QWORD PTR [rsp+0x48],rcx
  e14d54:	48 89 f9             	mov    rcx,rdi
  e14d57:	48 c1 e1 04          	shl    rcx,0x4
  e14d5b:	48 89 4c 24 68       	mov    QWORD PTR [rsp+0x68],rcx
  e14d60:	4c 89 c1             	mov    rcx,r8
  e14d63:	48 83 e1 fe          	and    rcx,0xfffffffffffffffe
  e14d67:	48 89 8c 24 f8 00 00 	mov    QWORD PTR [rsp+0xf8],rcx
  e14d6e:	00 
  e14d6f:	48 8d 04 c2          	lea    rax,[rdx+rax*8]
  e14d73:	48 83 c0 20          	add    rax,0x20
  e14d77:	48 89 44 24 58       	mov    QWORD PTR [rsp+0x58],rax
  e14d7c:	49 8d 46 ff          	lea    rax,[r14-0x1]
  e14d80:	48 89 44 24 50       	mov    QWORD PTR [rsp+0x50],rax
  e14d85:	48 8b 8c 24 80 02 00 	mov    rcx,QWORD PTR [rsp+0x280]
  e14d8c:	00 
  e14d8d:	48 c1 e1 05          	shl    rcx,0x5
  e14d91:	48 03 8c 24 50 01 00 	add    rcx,QWORD PTR [rsp+0x150]
  e14d98:	00 
  e14d99:	48 8b 84 24 98 00 00 	mov    rax,QWORD PTR [rsp+0x98]
  e14da0:	00 
  e14da1:	48 01 c8             	add    rax,rcx
  e14da4:	48 83 c0 10          	add    rax,0x10
  e14da8:	48 89 44 24 60       	mov    QWORD PTR [rsp+0x60],rax
  e14dad:	48 89 bc 24 88 00 00 	mov    QWORD PTR [rsp+0x88],rdi
  e14db4:	00 
  e14db5:	48 c1 e7 05          	shl    rdi,0x5
  e14db9:	48 89 7c 24 10       	mov    QWORD PTR [rsp+0x10],rdi
  e14dbe:	48 8b 84 24 c0 00 00 	mov    rax,QWORD PTR [rsp+0xc0]
  e14dc5:	00 
  e14dc6:	48 8d 48 30          	lea    rcx,[rax+0x30]
  e14dca:	48 89 8c 24 a8 00 00 	mov    QWORD PTR [rsp+0xa8],rcx
  e14dd1:	00 
  e14dd2:	49 c1 e0 05          	shl    r8,0x5
  e14dd6:	4c 89 84 24 d0 00 00 	mov    QWORD PTR [rsp+0xd0],r8
  e14ddd:	00 
  e14dde:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e14de2:	48 c1 e1 04          	shl    rcx,0x4
  e14de6:	48 89 8c 24 e0 00 00 	mov    QWORD PTR [rsp+0xe0],rcx
  e14ded:	00 
  e14dee:	31 c9                	xor    ecx,ecx
  e14df0:	48 89 84 24 a0 00 00 	mov    QWORD PTR [rsp+0xa0],rax
  e14df7:	00 
  e14df8:	eb 37                	jmp    e14e31 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4db1>
  e14dfa:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  e14e00:	48 8b 84 24 d0 00 00 	mov    rax,QWORD PTR [rsp+0xd0]
  e14e07:	00 
  e14e08:	48 01 84 24 a8 00 00 	add    QWORD PTR [rsp+0xa8],rax
  e14e0f:	00 
  e14e10:	48 01 84 24 a0 00 00 	add    QWORD PTR [rsp+0xa0],rax
  e14e17:	00 
  e14e18:	48 8b b4 24 f0 00 00 	mov    rsi,QWORD PTR [rsp+0xf0]
  e14e1f:	00 
  e14e20:	48 85 f6             	test   rsi,rsi
  e14e23:	48 8b 8c 24 b0 00 00 	mov    rcx,QWORD PTR [rsp+0xb0]
  e14e2a:	00 
  e14e2b:	0f 84 e4 0a 00 00    	je     e15915 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5895>
  e14e31:	48 8b 84 24 c8 00 00 	mov    rax,QWORD PTR [rsp+0xc8]
  e14e38:	00 
  e14e39:	48 89 4c 24 40       	mov    QWORD PTR [rsp+0x40],rcx
  e14e3e:	48 01 c8             	add    rax,rcx
  e14e41:	48 89 84 24 b0 00 00 	mov    QWORD PTR [rsp+0xb0],rax
  e14e48:	00 
  e14e49:	48 ff ce             	dec    rsi
  e14e4c:	48 89 b4 24 f0 00 00 	mov    QWORD PTR [rsp+0xf0],rsi
  e14e53:	00 
  e14e54:	31 d2                	xor    edx,edx
  e14e56:	eb 40                	jmp    e14e98 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4e18>
  e14e58:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  e14e5f:	00 
  e14e60:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e14e65:	48 ff c2             	inc    rdx
  e14e68:	4c 8b 9c 24 b8 00 00 	mov    r11,QWORD PTR [rsp+0xb8]
  e14e6f:	00 
  e14e70:	4c 39 da             	cmp    rdx,r11
  e14e73:	48 8b 5c 24 28       	mov    rbx,QWORD PTR [rsp+0x28]
  e14e78:	4c 8b b4 24 40 01 00 	mov    r14,QWORD PTR [rsp+0x140]
  e14e7f:	00 
  e14e80:	4c 8b 7c 24 68       	mov    r15,QWORD PTR [rsp+0x68]
  e14e85:	4c 8b a4 24 f8 00 00 	mov    r12,QWORD PTR [rsp+0xf8]
  e14e8c:	00 
  e14e8d:	4c 8b 6c 24 10       	mov    r13,QWORD PTR [rsp+0x10]
  e14e92:	0f 84 e8 02 00 00    	je     e15180 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5100>
  e14e98:	48 8d 04 12          	lea    rax,[rdx+rdx*1]
  e14e9c:	48 0f af 84 24 88 00 	imul   rax,QWORD PTR [rsp+0x88]
  e14ea3:	00 00 
  e14ea5:	48 8b 4c 24 38       	mov    rcx,QWORD PTR [rsp+0x38]
  e14eaa:	48 8d 04 c1          	lea    rax,[rcx+rax*8]
  e14eae:	48 89 44 24 30       	mov    QWORD PTR [rsp+0x30],rax
  e14eb3:	48 8b 44 24 40       	mov    rax,QWORD PTR [rsp+0x40]
  e14eb8:	48 8d 04 50          	lea    rax,[rax+rdx*2]
  e14ebc:	48 0f af 44 24 48    	imul   rax,QWORD PTR [rsp+0x48]
  e14ec2:	48 8b 8c 24 98 00 00 	mov    rcx,QWORD PTR [rsp+0x98]
  e14ec9:	00 
  e14eca:	48 8d 3c c1          	lea    rdi,[rcx+rax*8]
  e14ece:	48 8b 84 24 90 00 00 	mov    rax,QWORD PTR [rsp+0x90]
  e14ed5:	00 
  e14ed6:	48 8b 00             	mov    rax,QWORD PTR [rax]
  e14ed9:	48 83 f8 02          	cmp    rax,0x2
  e14edd:	48 89 54 24 08       	mov    QWORD PTR [rsp+0x8],rdx
  e14ee2:	74 5c                	je     e14f40 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4ec0>
  e14ee4:	48 83 f8 04          	cmp    rax,0x4
  e14ee8:	74 36                	je     e14f20 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4ea0>
  e14eea:	48 83 f8 08          	cmp    rax,0x8
  e14eee:	0f 85 6e 0a 00 00    	jne    e15962 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x58e2>
  e14ef4:	48 8b 74 24 30       	mov    rsi,QWORD PTR [rsp+0x30]
  e14ef9:	48 89 da             	mov    rdx,rbx
  e14efc:	0f 28 44 24 70       	movaps xmm0,XMMWORD PTR [rsp+0x70]
  e14f01:	e8 7a 7f fe ff       	call   dfce80 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e14f06:	49 83 fe 02          	cmp    r14,0x2
  e14f0a:	0f 82 50 ff ff ff    	jb     e14e60 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4de0>
  e14f10:	eb 4a                	jmp    e14f5c <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4edc>
  e14f12:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  e14f19:	1f 84 00 00 00 00 00 
  e14f20:	48 8b 74 24 30       	mov    rsi,QWORD PTR [rsp+0x30]
  e14f25:	48 89 da             	mov    rdx,rbx
  e14f28:	0f 28 44 24 70       	movaps xmm0,XMMWORD PTR [rsp+0x70]
  e14f2d:	e8 4e 73 fe ff       	call   dfc280 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e14f32:	49 83 fe 02          	cmp    r14,0x2
  e14f36:	0f 82 24 ff ff ff    	jb     e14e60 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4de0>
  e14f3c:	eb 1e                	jmp    e14f5c <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4edc>
  e14f3e:	66 90                	xchg   ax,ax
  e14f40:	48 8b 74 24 30       	mov    rsi,QWORD PTR [rsp+0x30]
  e14f45:	48 89 da             	mov    rdx,rbx
  e14f48:	0f 28 44 24 70       	movaps xmm0,XMMWORD PTR [rsp+0x70]
  e14f4d:	e8 ee 91 ff ff       	call   e0e140 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e14f52:	49 83 fe 02          	cmp    r14,0x2
  e14f56:	0f 82 04 ff ff ff    	jb     e14e60 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4de0>
  e14f5c:	48 8b 84 24 90 00 00 	mov    rax,QWORD PTR [rsp+0x90]
  e14f63:	00 
  e14f64:	4c 8b 38             	mov    r15,QWORD PTR [rax]
  e14f67:	48 8b 6c 24 50       	mov    rbp,QWORD PTR [rsp+0x50]
  e14f6c:	4c 8b 6c 24 58       	mov    r13,QWORD PTR [rsp+0x58]
  e14f71:	4c 8b 64 24 30       	mov    r12,QWORD PTR [rsp+0x30]
  e14f76:	48 8b 9c 24 d8 00 00 	mov    rbx,QWORD PTR [rsp+0xd8]
  e14f7d:	00 
  e14f7e:	eb 41                	jmp    e14fc1 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4f41>
  e14f80:	0f 28 44 24 70       	movaps xmm0,XMMWORD PTR [rsp+0x70]
  e14f85:	0f 29 84 24 60 01 00 	movaps XMMWORD PTR [rsp+0x160],xmm0
  e14f8c:	00 
  e14f8d:	48 89 df             	mov    rdi,rbx
  e14f90:	4c 89 e6             	mov    rsi,r12
  e14f93:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e14f98:	4c 89 f9             	mov    rcx,r15
  e14f9b:	4c 8d 8c 24 60 01 00 	lea    r9,[rsp+0x160]
  e14fa2:	00 
  e14fa3:	e8 98 6a f3 ff       	call   d4ba40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e14fa8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  e14faf:	00 
  e14fb0:	4d 0f af fe          	imul   r15,r14
  e14fb4:	49 83 c5 18          	add    r13,0x18
  e14fb8:	48 ff cd             	dec    rbp
  e14fbb:	0f 84 9f fe ff ff    	je     e14e60 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4de0>
  e14fc1:	48 89 d8             	mov    rax,rbx
  e14fc4:	4c 89 e3             	mov    rbx,r12
  e14fc7:	4d 8b 75 f8          	mov    r14,QWORD PTR [r13-0x8]
  e14fcb:	48 83 fd 01          	cmp    rbp,0x1
  e14fcf:	49 89 c4             	mov    r12,rax
  e14fd2:	4c 0f 44 64 24 30    	cmove  r12,QWORD PTR [rsp+0x30]
  e14fd8:	4d 8b 45 00          	mov    r8,QWORD PTR [r13+0x0]
  e14fdc:	4c 03 44 24 20       	add    r8,QWORD PTR [rsp+0x20]
  e14fe1:	4c 89 b4 24 00 01 00 	mov    QWORD PTR [rsp+0x100],r14
  e14fe8:	00 
  e14fe9:	49 8d 46 fe          	lea    rax,[r14-0x2]
  e14fed:	48 83 f8 0e          	cmp    rax,0xe
  e14ff1:	0f 87 31 09 00 00    	ja     e15928 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x58a8>
  e14ff7:	48 8d 0d 96 ec 28 ff 	lea    rcx,[rip+0xffffffffff28ec96]        # a3c94 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x31144>
  e14ffe:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  e15002:	48 01 c8             	add    rax,rcx
  e15005:	ff e0                	jmp    rax
  e15007:	48 89 df             	mov    rdi,rbx
  e1500a:	4c 89 e6             	mov    rsi,r12
  e1500d:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e15012:	4c 89 f9             	mov    rcx,r15
  e15015:	e8 66 d2 f2 ff       	call   d42280 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e1501a:	eb 94                	jmp    e14fb0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4f30>
  e1501c:	48 89 df             	mov    rdi,rbx
  e1501f:	4c 89 e6             	mov    rsi,r12
  e15022:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e15027:	4c 89 f9             	mov    rcx,r15
  e1502a:	e8 11 27 f3 ff       	call   d47740 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e1502f:	e9 7c ff ff ff       	jmp    e14fb0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4f30>
  e15034:	48 89 df             	mov    rdi,rbx
  e15037:	4c 89 e6             	mov    rsi,r12
  e1503a:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e1503f:	4c 89 f9             	mov    rcx,r15
  e15042:	e8 79 dc f2 ff       	call   d42cc0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e15047:	e9 64 ff ff ff       	jmp    e14fb0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4f30>
  e1504c:	48 89 df             	mov    rdi,rbx
  e1504f:	4c 89 e6             	mov    rsi,r12
  e15052:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e15057:	4c 89 f9             	mov    rcx,r15
  e1505a:	e8 a1 3f f3 ff       	call   d49000 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e1505f:	e9 4c ff ff ff       	jmp    e14fb0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4f30>
  e15064:	48 89 df             	mov    rdi,rbx
  e15067:	4c 89 e6             	mov    rsi,r12
  e1506a:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e1506f:	4c 89 f9             	mov    rcx,r15
  e15072:	e8 09 06 f3 ff       	call   d45680 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e15077:	e9 34 ff ff ff       	jmp    e14fb0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4f30>
  e1507c:	48 89 df             	mov    rdi,rbx
  e1507f:	4c 89 e6             	mov    rsi,r12
  e15082:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e15087:	4c 89 f9             	mov    rcx,r15
  e1508a:	e8 b1 d5 f2 ff       	call   d42640 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e1508f:	e9 1c ff ff ff       	jmp    e14fb0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4f30>
  e15094:	48 89 df             	mov    rdi,rbx
  e15097:	4c 89 e6             	mov    rsi,r12
  e1509a:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e1509f:	4c 89 f9             	mov    rcx,r15
  e150a2:	e8 19 d8 f2 ff       	call   d428c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e150a7:	e9 04 ff ff ff       	jmp    e14fb0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4f30>
  e150ac:	48 89 df             	mov    rdi,rbx
  e150af:	4c 89 e6             	mov    rsi,r12
  e150b2:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e150b7:	4c 89 f9             	mov    rcx,r15
  e150ba:	e8 41 ef f2 ff       	call   d44000 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e150bf:	e9 ec fe ff ff       	jmp    e14fb0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4f30>
  e150c4:	48 89 df             	mov    rdi,rbx
  e150c7:	4c 89 e6             	mov    rsi,r12
  e150ca:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e150cf:	4c 89 f9             	mov    rcx,r15
  e150d2:	e8 29 d3 f2 ff       	call   d42400 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e150d7:	e9 d4 fe ff ff       	jmp    e14fb0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4f30>
  e150dc:	48 89 df             	mov    rdi,rbx
  e150df:	4c 89 e6             	mov    rsi,r12
  e150e2:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e150e7:	4c 89 f9             	mov    rcx,r15
  e150ea:	e8 91 e0 f2 ff       	call   d43180 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e150ef:	e9 bc fe ff ff       	jmp    e14fb0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4f30>
  e150f4:	48 89 df             	mov    rdi,rbx
  e150f7:	4c 89 e6             	mov    rsi,r12
  e150fa:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e150ff:	4c 89 f9             	mov    rcx,r15
  e15102:	e8 b9 53 f3 ff       	call   d4a4c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e15107:	e9 a4 fe ff ff       	jmp    e14fb0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4f30>
  e1510c:	0f 28 44 24 70       	movaps xmm0,XMMWORD PTR [rsp+0x70]
  e15111:	0f 29 84 24 60 01 00 	movaps XMMWORD PTR [rsp+0x160],xmm0
  e15118:	00 
  e15119:	48 89 df             	mov    rdi,rbx
  e1511c:	4c 89 e6             	mov    rsi,r12
  e1511f:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e15124:	4c 89 f9             	mov    rcx,r15
  e15127:	4c 8d 8c 24 60 01 00 	lea    r9,[rsp+0x160]
  e1512e:	00 
  e1512f:	e8 cc e7 f2 ff       	call   d43900 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e15134:	e9 77 fe ff ff       	jmp    e14fb0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4f30>
  e15139:	0f 28 44 24 70       	movaps xmm0,XMMWORD PTR [rsp+0x70]
  e1513e:	0f 29 84 24 60 01 00 	movaps XMMWORD PTR [rsp+0x160],xmm0
  e15145:	00 
  e15146:	48 89 df             	mov    rdi,rbx
  e15149:	4c 89 e6             	mov    rsi,r12
  e1514c:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e15151:	4c 89 f9             	mov    rcx,r15
  e15154:	4c 8d 8c 24 60 01 00 	lea    r9,[rsp+0x160]
  e1515b:	00 
  e1515c:	e8 df 17 f3 ff       	call   d46940 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e15161:	e9 4a fe ff ff       	jmp    e14fb0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4f30>
  e15166:	48 89 df             	mov    rdi,rbx
  e15169:	4c 89 e6             	mov    rsi,r12
  e1516c:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e15171:	4c 89 f9             	mov    rcx,r15
  e15174:	e8 07 f9 f2 ff       	call   d44a80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e15179:	e9 32 fe ff ff       	jmp    e14fb0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4f30>
  e1517e:	66 90                	xchg   ax,ax
  e15180:	48 85 db             	test   rbx,rbx
  e15183:	0f 84 77 fc ff ff    	je     e14e00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4d80>
  e15189:	80 bc 24 e8 00 00 00 	cmp    BYTE PTR [rsp+0xe8],0x0
  e15190:	00 
  e15191:	74 7d                	je     e15210 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5190>
  e15193:	48 8b 44 24 60       	mov    rax,QWORD PTR [rsp+0x60]
  e15198:	48 8b 8c 24 a0 00 00 	mov    rcx,QWORD PTR [rsp+0xa0]
  e1519f:	00 
  e151a0:	31 d2                	xor    edx,edx
  e151a2:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  e151a9:	1f 84 00 00 00 00 00 
  e151b0:	4c 89 de             	mov    rsi,r11
  e151b3:	48 89 c7             	mov    rdi,rax
  e151b6:	49 89 c8             	mov    r8,rcx
  e151b9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  e151c0:	0f 10 47 f0          	movups xmm0,XMMWORD PTR [rdi-0x10]
  e151c4:	0f 10 0f             	movups xmm1,XMMWORD PTR [rdi]
  e151c7:	0f 28 d0             	movaps xmm2,xmm0
  e151ca:	0f 16 d1             	movlhps xmm2,xmm1
  e151cd:	66 0f 15 c1          	unpckhpd xmm0,xmm1
  e151d1:	66 41 0f 2b 10       	movntpd XMMWORD PTR [r8],xmm2
  e151d6:	4d 8d 48 10          	lea    r9,[r8+0x10]
  e151da:	66 41 0f 2b 01       	movntpd XMMWORD PTR [r9],xmm0
  e151df:	49 83 c0 20          	add    r8,0x20
  e151e3:	4c 01 ff             	add    rdi,r15
  e151e6:	48 ff ce             	dec    rsi
  e151e9:	75 d5                	jne    e151c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5140>
  e151eb:	48 ff c2             	inc    rdx
  e151ee:	48 03 8c 24 e0 00 00 	add    rcx,QWORD PTR [rsp+0xe0]
  e151f5:	00 
  e151f6:	48 83 c0 20          	add    rax,0x20
  e151fa:	48 39 da             	cmp    rdx,rbx
  e151fd:	75 b1                	jne    e151b0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5130>
  e151ff:	e9 fc fb ff ff       	jmp    e14e00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4d80>
  e15204:	66 66 66 2e 0f 1f 84 	data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  e1520b:	00 00 00 00 00 
  e15210:	48 8b 84 24 a8 00 00 	mov    rax,QWORD PTR [rsp+0xa8]
  e15217:	00 
  e15218:	48 8b 4c 24 60       	mov    rcx,QWORD PTR [rsp+0x60]
  e1521d:	31 d2                	xor    edx,edx
  e1521f:	eb 27                	jmp    e15248 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x51c8>
  e15221:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  e15228:	0f 1f 84 00 00 00 00 
  e1522f:	00 
  e15230:	48 ff c2             	inc    rdx
  e15233:	48 83 c1 20          	add    rcx,0x20
  e15237:	48 03 84 24 e0 00 00 	add    rax,QWORD PTR [rsp+0xe0]
  e1523e:	00 
  e1523f:	48 39 da             	cmp    rdx,rbx
  e15242:	0f 84 b8 fb ff ff    	je     e14e00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4d80>
  e15248:	48 89 d7             	mov    rdi,rdx
  e1524b:	48 c1 e7 05          	shl    rdi,0x5
  e1524f:	48 03 7c 24 38       	add    rdi,QWORD PTR [rsp+0x38]
  e15254:	48 89 d6             	mov    rsi,rdx
  e15257:	48 0f af 34 24       	imul   rsi,QWORD PTR [rsp]
  e1525c:	48 03 74 24 40       	add    rsi,QWORD PTR [rsp+0x40]
  e15261:	48 c1 e6 04          	shl    rsi,0x4
  e15265:	48 03 b4 24 c0 00 00 	add    rsi,QWORD PTR [rsp+0xc0]
  e1526c:	00 
  e1526d:	49 89 c1             	mov    r9,rax
  e15270:	49 89 ca             	mov    r10,rcx
  e15273:	45 31 c0             	xor    r8d,r8d
  e15276:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  e1527d:	00 00 00 
  e15280:	41 0f 10 42 f0       	movups xmm0,XMMWORD PTR [r10-0x10]
  e15285:	41 0f 10 0a          	movups xmm1,XMMWORD PTR [r10]
  e15289:	0f 28 d0             	movaps xmm2,xmm0
  e1528c:	0f 16 d1             	movlhps xmm2,xmm1
  e1528f:	66 0f 15 c1          	unpckhpd xmm0,xmm1
  e15293:	41 0f 11 51 d0       	movups XMMWORD PTR [r9-0x30],xmm2
  e15298:	41 0f 11 41 e0       	movups XMMWORD PTR [r9-0x20],xmm0
  e1529d:	49 83 c0 02          	add    r8,0x2
  e152a1:	43 0f 10 44 3a f0    	movups xmm0,XMMWORD PTR [r10+r15*1-0x10]
  e152a7:	43 0f 10 0c 3a       	movups xmm1,XMMWORD PTR [r10+r15*1]
  e152ac:	0f 28 d0             	movaps xmm2,xmm0
  e152af:	0f 16 d1             	movlhps xmm2,xmm1
  e152b2:	66 0f 15 c1          	unpckhpd xmm0,xmm1
  e152b6:	41 0f 11 51 f0       	movups XMMWORD PTR [r9-0x10],xmm2
  e152bb:	41 0f 11 01          	movups XMMWORD PTR [r9],xmm0
  e152bf:	4d 01 ea             	add    r10,r13
  e152c2:	49 83 c1 40          	add    r9,0x40
  e152c6:	4d 39 c4             	cmp    r12,r8
  e152c9:	75 b5                	jne    e15280 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5200>
  e152cb:	41 f6 c3 01          	test   r11b,0x1
  e152cf:	0f 84 5b ff ff ff    	je     e15230 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x51b0>
  e152d5:	4d 89 c1             	mov    r9,r8
  e152d8:	4d 0f af cf          	imul   r9,r15
  e152dc:	42 0f 10 04 0f       	movups xmm0,XMMWORD PTR [rdi+r9*1]
  e152e1:	42 0f 10 4c 0f 10    	movups xmm1,XMMWORD PTR [rdi+r9*1+0x10]
  e152e7:	0f 28 d0             	movaps xmm2,xmm0
  e152ea:	0f 16 d1             	movlhps xmm2,xmm1
  e152ed:	66 0f 15 c1          	unpckhpd xmm0,xmm1
  e152f1:	49 c1 e0 05          	shl    r8,0x5
  e152f5:	42 0f 11 14 06       	movups XMMWORD PTR [rsi+r8*1],xmm2
  e152fa:	42 0f 11 44 06 10    	movups XMMWORD PTR [rsi+r8*1+0x10],xmm0
  e15300:	e9 2b ff ff ff       	jmp    e15230 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x51b0>
  e15305:	89 d0                	mov    eax,edx
  e15307:	31 d2                	xor    edx,edx
  e15309:	f7 f1                	div    ecx
  e1530b:	40 20 ac 24 e8 00 00 	and    BYTE PTR [rsp+0xe8],bpl
  e15312:	00 
  e15313:	31 f6                	xor    esi,esi
  e15315:	48 85 d2             	test   rdx,rdx
  e15318:	40 0f 95 c6          	setne  sil
  e1531c:	48 01 c6             	add    rsi,rax
  e1531f:	0f 84 f0 05 00 00    	je     e15915 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5895>
  e15325:	4d 85 f6             	test   r14,r14
  e15328:	0f 84 cc 06 00 00    	je     e159fa <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x597a>
  e1532e:	4b 8d 04 7f          	lea    rax,[r15+r15*2]
  e15332:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e15337:	48 8d 0c c2          	lea    rcx,[rdx+rax*8]
  e1533b:	48 89 8c 24 90 00 00 	mov    QWORD PTR [rsp+0x90],rcx
  e15342:	00 
  e15343:	48 8b 8c 24 20 01 00 	mov    rcx,QWORD PTR [rsp+0x120]
  e1534a:	00 
  e1534b:	48 8b b9 90 00 00 00 	mov    rdi,QWORD PTR [rcx+0x90]
  e15352:	48 8d 0c 1b          	lea    rcx,[rbx+rbx*1]
  e15356:	48 89 4c 24 48       	mov    QWORD PTR [rsp+0x48],rcx
  e1535b:	48 89 f9             	mov    rcx,rdi
  e1535e:	48 c1 e1 04          	shl    rcx,0x4
  e15362:	48 89 4c 24 68       	mov    QWORD PTR [rsp+0x68],rcx
  e15367:	4c 89 c1             	mov    rcx,r8
  e1536a:	48 83 e1 fe          	and    rcx,0xfffffffffffffffe
  e1536e:	48 89 8c 24 f8 00 00 	mov    QWORD PTR [rsp+0xf8],rcx
  e15375:	00 
  e15376:	48 8d 04 c2          	lea    rax,[rdx+rax*8]
  e1537a:	48 83 c0 20          	add    rax,0x20
  e1537e:	48 89 44 24 58       	mov    QWORD PTR [rsp+0x58],rax
  e15383:	49 8d 46 ff          	lea    rax,[r14-0x1]
  e15387:	48 89 44 24 50       	mov    QWORD PTR [rsp+0x50],rax
  e1538c:	48 8b 8c 24 80 02 00 	mov    rcx,QWORD PTR [rsp+0x280]
  e15393:	00 
  e15394:	48 c1 e1 05          	shl    rcx,0x5
  e15398:	48 03 8c 24 50 01 00 	add    rcx,QWORD PTR [rsp+0x150]
  e1539f:	00 
  e153a0:	48 8b 84 24 98 00 00 	mov    rax,QWORD PTR [rsp+0x98]
  e153a7:	00 
  e153a8:	48 01 c8             	add    rax,rcx
  e153ab:	48 83 c0 10          	add    rax,0x10
  e153af:	48 89 44 24 60       	mov    QWORD PTR [rsp+0x60],rax
  e153b4:	48 89 bc 24 88 00 00 	mov    QWORD PTR [rsp+0x88],rdi
  e153bb:	00 
  e153bc:	48 c1 e7 05          	shl    rdi,0x5
  e153c0:	48 89 7c 24 10       	mov    QWORD PTR [rsp+0x10],rdi
  e153c5:	48 8b 84 24 c0 00 00 	mov    rax,QWORD PTR [rsp+0xc0]
  e153cc:	00 
  e153cd:	48 8d 48 30          	lea    rcx,[rax+0x30]
  e153d1:	48 89 8c 24 a8 00 00 	mov    QWORD PTR [rsp+0xa8],rcx
  e153d8:	00 
  e153d9:	49 c1 e0 05          	shl    r8,0x5
  e153dd:	4c 89 84 24 d0 00 00 	mov    QWORD PTR [rsp+0xd0],r8
  e153e4:	00 
  e153e5:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  e153e9:	48 c1 e1 04          	shl    rcx,0x4
  e153ed:	48 89 8c 24 e0 00 00 	mov    QWORD PTR [rsp+0xe0],rcx
  e153f4:	00 
  e153f5:	31 c9                	xor    ecx,ecx
  e153f7:	48 89 84 24 a0 00 00 	mov    QWORD PTR [rsp+0xa0],rax
  e153fe:	00 
  e153ff:	eb 40                	jmp    e15441 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x53c1>
  e15401:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  e15408:	0f 1f 84 00 00 00 00 
  e1540f:	00 
  e15410:	48 8b 84 24 d0 00 00 	mov    rax,QWORD PTR [rsp+0xd0]
  e15417:	00 
  e15418:	48 01 84 24 a8 00 00 	add    QWORD PTR [rsp+0xa8],rax
  e1541f:	00 
  e15420:	48 01 84 24 a0 00 00 	add    QWORD PTR [rsp+0xa0],rax
  e15427:	00 
  e15428:	48 8b b4 24 f0 00 00 	mov    rsi,QWORD PTR [rsp+0xf0]
  e1542f:	00 
  e15430:	48 85 f6             	test   rsi,rsi
  e15433:	48 8b 8c 24 b0 00 00 	mov    rcx,QWORD PTR [rsp+0xb0]
  e1543a:	00 
  e1543b:	0f 84 d4 04 00 00    	je     e15915 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5895>
  e15441:	48 8b 84 24 c8 00 00 	mov    rax,QWORD PTR [rsp+0xc8]
  e15448:	00 
  e15449:	48 89 4c 24 40       	mov    QWORD PTR [rsp+0x40],rcx
  e1544e:	48 01 c8             	add    rax,rcx
  e15451:	48 89 84 24 b0 00 00 	mov    QWORD PTR [rsp+0xb0],rax
  e15458:	00 
  e15459:	48 ff ce             	dec    rsi
  e1545c:	48 89 b4 24 f0 00 00 	mov    QWORD PTR [rsp+0xf0],rsi
  e15463:	00 
  e15464:	31 d2                	xor    edx,edx
  e15466:	eb 40                	jmp    e154a8 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5428>
  e15468:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  e1546f:	00 
  e15470:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  e15475:	48 ff c2             	inc    rdx
  e15478:	4c 8b 9c 24 b8 00 00 	mov    r11,QWORD PTR [rsp+0xb8]
  e1547f:	00 
  e15480:	4c 39 da             	cmp    rdx,r11
  e15483:	48 8b 5c 24 28       	mov    rbx,QWORD PTR [rsp+0x28]
  e15488:	4c 8b b4 24 40 01 00 	mov    r14,QWORD PTR [rsp+0x140]
  e1548f:	00 
  e15490:	4c 8b 7c 24 68       	mov    r15,QWORD PTR [rsp+0x68]
  e15495:	4c 8b a4 24 f8 00 00 	mov    r12,QWORD PTR [rsp+0xf8]
  e1549c:	00 
  e1549d:	4c 8b 6c 24 10       	mov    r13,QWORD PTR [rsp+0x10]
  e154a2:	0f 84 e8 02 00 00    	je     e15790 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5710>
  e154a8:	48 8d 04 12          	lea    rax,[rdx+rdx*1]
  e154ac:	48 0f af 84 24 88 00 	imul   rax,QWORD PTR [rsp+0x88]
  e154b3:	00 00 
  e154b5:	48 8b 4c 24 38       	mov    rcx,QWORD PTR [rsp+0x38]
  e154ba:	48 8d 04 c1          	lea    rax,[rcx+rax*8]
  e154be:	48 89 44 24 30       	mov    QWORD PTR [rsp+0x30],rax
  e154c3:	48 8b 44 24 40       	mov    rax,QWORD PTR [rsp+0x40]
  e154c8:	48 8d 04 50          	lea    rax,[rax+rdx*2]
  e154cc:	48 0f af 44 24 48    	imul   rax,QWORD PTR [rsp+0x48]
  e154d2:	48 8b 8c 24 98 00 00 	mov    rcx,QWORD PTR [rsp+0x98]
  e154d9:	00 
  e154da:	48 8d 3c c1          	lea    rdi,[rcx+rax*8]
  e154de:	48 8b 84 24 90 00 00 	mov    rax,QWORD PTR [rsp+0x90]
  e154e5:	00 
  e154e6:	48 8b 00             	mov    rax,QWORD PTR [rax]
  e154e9:	48 83 f8 02          	cmp    rax,0x2
  e154ed:	48 89 54 24 08       	mov    QWORD PTR [rsp+0x8],rdx
  e154f2:	74 5c                	je     e15550 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x54d0>
  e154f4:	48 83 f8 04          	cmp    rax,0x4
  e154f8:	74 36                	je     e15530 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x54b0>
  e154fa:	48 83 f8 08          	cmp    rax,0x8
  e154fe:	0f 85 5e 04 00 00    	jne    e15962 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x58e2>
  e15504:	48 8b 74 24 30       	mov    rsi,QWORD PTR [rsp+0x30]
  e15509:	48 89 da             	mov    rdx,rbx
  e1550c:	0f 28 44 24 70       	movaps xmm0,XMMWORD PTR [rsp+0x70]
  e15511:	e8 6a 79 fe ff       	call   dfce80 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e15516:	49 83 fe 02          	cmp    r14,0x2
  e1551a:	0f 82 50 ff ff ff    	jb     e15470 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x53f0>
  e15520:	eb 4a                	jmp    e1556c <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x54ec>
  e15522:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  e15529:	1f 84 00 00 00 00 00 
  e15530:	48 8b 74 24 30       	mov    rsi,QWORD PTR [rsp+0x30]
  e15535:	48 89 da             	mov    rdx,rbx
  e15538:	0f 28 44 24 70       	movaps xmm0,XMMWORD PTR [rsp+0x70]
  e1553d:	e8 3e 6d fe ff       	call   dfc280 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e15542:	49 83 fe 02          	cmp    r14,0x2
  e15546:	0f 82 24 ff ff ff    	jb     e15470 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x53f0>
  e1554c:	eb 1e                	jmp    e1556c <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x54ec>
  e1554e:	66 90                	xchg   ax,ax
  e15550:	48 8b 74 24 30       	mov    rsi,QWORD PTR [rsp+0x30]
  e15555:	48 89 da             	mov    rdx,rbx
  e15558:	0f 28 44 24 70       	movaps xmm0,XMMWORD PTR [rsp+0x70]
  e1555d:	e8 de 8b ff ff       	call   e0e140 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e15562:	49 83 fe 02          	cmp    r14,0x2
  e15566:	0f 82 04 ff ff ff    	jb     e15470 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x53f0>
  e1556c:	48 8b 84 24 90 00 00 	mov    rax,QWORD PTR [rsp+0x90]
  e15573:	00 
  e15574:	4c 8b 38             	mov    r15,QWORD PTR [rax]
  e15577:	48 8b 6c 24 50       	mov    rbp,QWORD PTR [rsp+0x50]
  e1557c:	4c 8b 6c 24 58       	mov    r13,QWORD PTR [rsp+0x58]
  e15581:	4c 8b 64 24 30       	mov    r12,QWORD PTR [rsp+0x30]
  e15586:	48 8b 9c 24 d8 00 00 	mov    rbx,QWORD PTR [rsp+0xd8]
  e1558d:	00 
  e1558e:	eb 41                	jmp    e155d1 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5551>
  e15590:	0f 28 44 24 70       	movaps xmm0,XMMWORD PTR [rsp+0x70]
  e15595:	0f 29 84 24 60 01 00 	movaps XMMWORD PTR [rsp+0x160],xmm0
  e1559c:	00 
  e1559d:	48 89 df             	mov    rdi,rbx
  e155a0:	4c 89 e6             	mov    rsi,r12
  e155a3:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e155a8:	4c 89 f9             	mov    rcx,r15
  e155ab:	4c 8d 8c 24 60 01 00 	lea    r9,[rsp+0x160]
  e155b2:	00 
  e155b3:	e8 88 64 f3 ff       	call   d4ba40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e155b8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  e155bf:	00 
  e155c0:	4d 0f af fe          	imul   r15,r14
  e155c4:	49 83 c5 18          	add    r13,0x18
  e155c8:	48 ff cd             	dec    rbp
  e155cb:	0f 84 9f fe ff ff    	je     e15470 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x53f0>
  e155d1:	48 89 d8             	mov    rax,rbx
  e155d4:	4c 89 e3             	mov    rbx,r12
  e155d7:	4d 8b 75 f8          	mov    r14,QWORD PTR [r13-0x8]
  e155db:	48 83 fd 01          	cmp    rbp,0x1
  e155df:	49 89 c4             	mov    r12,rax
  e155e2:	4c 0f 44 64 24 30    	cmove  r12,QWORD PTR [rsp+0x30]
  e155e8:	4d 8b 45 00          	mov    r8,QWORD PTR [r13+0x0]
  e155ec:	4c 03 44 24 20       	add    r8,QWORD PTR [rsp+0x20]
  e155f1:	4c 89 b4 24 00 01 00 	mov    QWORD PTR [rsp+0x100],r14
  e155f8:	00 
  e155f9:	49 8d 46 fe          	lea    rax,[r14-0x2]
  e155fd:	48 83 f8 0e          	cmp    rax,0xe
  e15601:	0f 87 21 03 00 00    	ja     e15928 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x58a8>
  e15607:	48 8d 0d 42 e9 28 ff 	lea    rcx,[rip+0xffffffffff28e942]        # a3f50 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x31400>
  e1560e:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  e15612:	48 01 c8             	add    rax,rcx
  e15615:	ff e0                	jmp    rax
  e15617:	48 89 df             	mov    rdi,rbx
  e1561a:	4c 89 e6             	mov    rsi,r12
  e1561d:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e15622:	4c 89 f9             	mov    rcx,r15
  e15625:	e8 56 cc f2 ff       	call   d42280 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e1562a:	eb 94                	jmp    e155c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5540>
  e1562c:	48 89 df             	mov    rdi,rbx
  e1562f:	4c 89 e6             	mov    rsi,r12
  e15632:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e15637:	4c 89 f9             	mov    rcx,r15
  e1563a:	e8 01 21 f3 ff       	call   d47740 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e1563f:	e9 7c ff ff ff       	jmp    e155c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5540>
  e15644:	48 89 df             	mov    rdi,rbx
  e15647:	4c 89 e6             	mov    rsi,r12
  e1564a:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e1564f:	4c 89 f9             	mov    rcx,r15
  e15652:	e8 69 d6 f2 ff       	call   d42cc0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e15657:	e9 64 ff ff ff       	jmp    e155c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5540>
  e1565c:	48 89 df             	mov    rdi,rbx
  e1565f:	4c 89 e6             	mov    rsi,r12
  e15662:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e15667:	4c 89 f9             	mov    rcx,r15
  e1566a:	e8 91 39 f3 ff       	call   d49000 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e1566f:	e9 4c ff ff ff       	jmp    e155c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5540>
  e15674:	48 89 df             	mov    rdi,rbx
  e15677:	4c 89 e6             	mov    rsi,r12
  e1567a:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e1567f:	4c 89 f9             	mov    rcx,r15
  e15682:	e8 f9 ff f2 ff       	call   d45680 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e15687:	e9 34 ff ff ff       	jmp    e155c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5540>
  e1568c:	48 89 df             	mov    rdi,rbx
  e1568f:	4c 89 e6             	mov    rsi,r12
  e15692:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e15697:	4c 89 f9             	mov    rcx,r15
  e1569a:	e8 a1 cf f2 ff       	call   d42640 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e1569f:	e9 1c ff ff ff       	jmp    e155c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5540>
  e156a4:	48 89 df             	mov    rdi,rbx
  e156a7:	4c 89 e6             	mov    rsi,r12
  e156aa:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e156af:	4c 89 f9             	mov    rcx,r15
  e156b2:	e8 09 d2 f2 ff       	call   d428c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e156b7:	e9 04 ff ff ff       	jmp    e155c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5540>
  e156bc:	48 89 df             	mov    rdi,rbx
  e156bf:	4c 89 e6             	mov    rsi,r12
  e156c2:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e156c7:	4c 89 f9             	mov    rcx,r15
  e156ca:	e8 31 e9 f2 ff       	call   d44000 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e156cf:	e9 ec fe ff ff       	jmp    e155c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5540>
  e156d4:	48 89 df             	mov    rdi,rbx
  e156d7:	4c 89 e6             	mov    rsi,r12
  e156da:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e156df:	4c 89 f9             	mov    rcx,r15
  e156e2:	e8 19 cd f2 ff       	call   d42400 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e156e7:	e9 d4 fe ff ff       	jmp    e155c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5540>
  e156ec:	48 89 df             	mov    rdi,rbx
  e156ef:	4c 89 e6             	mov    rsi,r12
  e156f2:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e156f7:	4c 89 f9             	mov    rcx,r15
  e156fa:	e8 81 da f2 ff       	call   d43180 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e156ff:	e9 bc fe ff ff       	jmp    e155c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5540>
  e15704:	48 89 df             	mov    rdi,rbx
  e15707:	4c 89 e6             	mov    rsi,r12
  e1570a:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e1570f:	4c 89 f9             	mov    rcx,r15
  e15712:	e8 a9 4d f3 ff       	call   d4a4c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e15717:	e9 a4 fe ff ff       	jmp    e155c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5540>
  e1571c:	0f 28 44 24 70       	movaps xmm0,XMMWORD PTR [rsp+0x70]
  e15721:	0f 29 84 24 60 01 00 	movaps XMMWORD PTR [rsp+0x160],xmm0
  e15728:	00 
  e15729:	48 89 df             	mov    rdi,rbx
  e1572c:	4c 89 e6             	mov    rsi,r12
  e1572f:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e15734:	4c 89 f9             	mov    rcx,r15
  e15737:	4c 8d 8c 24 60 01 00 	lea    r9,[rsp+0x160]
  e1573e:	00 
  e1573f:	e8 bc e1 f2 ff       	call   d43900 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e15744:	e9 77 fe ff ff       	jmp    e155c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5540>
  e15749:	0f 28 44 24 70       	movaps xmm0,XMMWORD PTR [rsp+0x70]
  e1574e:	0f 29 84 24 60 01 00 	movaps XMMWORD PTR [rsp+0x160],xmm0
  e15755:	00 
  e15756:	48 89 df             	mov    rdi,rbx
  e15759:	4c 89 e6             	mov    rsi,r12
  e1575c:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e15761:	4c 89 f9             	mov    rcx,r15
  e15764:	4c 8d 8c 24 60 01 00 	lea    r9,[rsp+0x160]
  e1576b:	00 
  e1576c:	e8 cf 11 f3 ff       	call   d46940 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e15771:	e9 4a fe ff ff       	jmp    e155c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5540>
  e15776:	48 89 df             	mov    rdi,rbx
  e15779:	4c 89 e6             	mov    rsi,r12
  e1577c:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e15781:	4c 89 f9             	mov    rcx,r15
  e15784:	e8 f7 f2 f2 ff       	call   d44a80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e15789:	e9 32 fe ff ff       	jmp    e155c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5540>
  e1578e:	66 90                	xchg   ax,ax
  e15790:	48 85 db             	test   rbx,rbx
  e15793:	0f 84 77 fc ff ff    	je     e15410 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5390>
  e15799:	80 bc 24 e8 00 00 00 	cmp    BYTE PTR [rsp+0xe8],0x0
  e157a0:	00 
  e157a1:	74 7d                	je     e15820 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x57a0>
  e157a3:	48 8b 44 24 60       	mov    rax,QWORD PTR [rsp+0x60]
  e157a8:	48 8b 8c 24 a0 00 00 	mov    rcx,QWORD PTR [rsp+0xa0]
  e157af:	00 
  e157b0:	31 d2                	xor    edx,edx
  e157b2:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  e157b9:	1f 84 00 00 00 00 00 
  e157c0:	4c 89 de             	mov    rsi,r11
  e157c3:	48 89 c7             	mov    rdi,rax
  e157c6:	49 89 c8             	mov    r8,rcx
  e157c9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  e157d0:	0f 10 47 f0          	movups xmm0,XMMWORD PTR [rdi-0x10]
  e157d4:	0f 10 0f             	movups xmm1,XMMWORD PTR [rdi]
  e157d7:	0f 28 d1             	movaps xmm2,xmm1
  e157da:	0f 16 d0             	movlhps xmm2,xmm0
  e157dd:	66 0f 15 c8          	unpckhpd xmm1,xmm0
  e157e1:	66 41 0f 2b 10       	movntpd XMMWORD PTR [r8],xmm2
  e157e6:	4d 8d 48 10          	lea    r9,[r8+0x10]
  e157ea:	66 41 0f 2b 09       	movntpd XMMWORD PTR [r9],xmm1
  e157ef:	49 83 c0 20          	add    r8,0x20
  e157f3:	4c 01 ff             	add    rdi,r15
  e157f6:	48 ff ce             	dec    rsi
  e157f9:	75 d5                	jne    e157d0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5750>
  e157fb:	48 ff c2             	inc    rdx
  e157fe:	48 03 8c 24 e0 00 00 	add    rcx,QWORD PTR [rsp+0xe0]
  e15805:	00 
  e15806:	48 83 c0 20          	add    rax,0x20
  e1580a:	48 39 da             	cmp    rdx,rbx
  e1580d:	75 b1                	jne    e157c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5740>
  e1580f:	e9 fc fb ff ff       	jmp    e15410 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5390>
  e15814:	66 66 66 2e 0f 1f 84 	data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  e1581b:	00 00 00 00 00 
  e15820:	48 8b 84 24 a8 00 00 	mov    rax,QWORD PTR [rsp+0xa8]
  e15827:	00 
  e15828:	48 8b 4c 24 60       	mov    rcx,QWORD PTR [rsp+0x60]
  e1582d:	31 d2                	xor    edx,edx
  e1582f:	eb 27                	jmp    e15858 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x57d8>
  e15831:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  e15838:	0f 1f 84 00 00 00 00 
  e1583f:	00 
  e15840:	48 ff c2             	inc    rdx
  e15843:	48 83 c1 20          	add    rcx,0x20
  e15847:	48 03 84 24 e0 00 00 	add    rax,QWORD PTR [rsp+0xe0]
  e1584e:	00 
  e1584f:	48 39 da             	cmp    rdx,rbx
  e15852:	0f 84 b8 fb ff ff    	je     e15410 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5390>
  e15858:	48 89 d7             	mov    rdi,rdx
  e1585b:	48 c1 e7 05          	shl    rdi,0x5
  e1585f:	48 03 7c 24 38       	add    rdi,QWORD PTR [rsp+0x38]
  e15864:	48 89 d6             	mov    rsi,rdx
  e15867:	48 0f af 34 24       	imul   rsi,QWORD PTR [rsp]
  e1586c:	48 03 74 24 40       	add    rsi,QWORD PTR [rsp+0x40]
  e15871:	48 c1 e6 04          	shl    rsi,0x4
  e15875:	48 03 b4 24 c0 00 00 	add    rsi,QWORD PTR [rsp+0xc0]
  e1587c:	00 
  e1587d:	49 89 c1             	mov    r9,rax
  e15880:	49 89 ca             	mov    r10,rcx
  e15883:	45 31 c0             	xor    r8d,r8d
  e15886:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  e1588d:	00 00 00 
  e15890:	41 0f 10 42 f0       	movups xmm0,XMMWORD PTR [r10-0x10]
  e15895:	41 0f 10 0a          	movups xmm1,XMMWORD PTR [r10]
  e15899:	0f 28 d1             	movaps xmm2,xmm1
  e1589c:	0f 16 d0             	movlhps xmm2,xmm0
  e1589f:	66 0f 15 c8          	unpckhpd xmm1,xmm0
  e158a3:	41 0f 11 51 d0       	movups XMMWORD PTR [r9-0x30],xmm2
  e158a8:	41 0f 11 49 e0       	movups XMMWORD PTR [r9-0x20],xmm1
  e158ad:	49 83 c0 02          	add    r8,0x2
  e158b1:	43 0f 10 44 3a f0    	movups xmm0,XMMWORD PTR [r10+r15*1-0x10]
  e158b7:	43 0f 10 0c 3a       	movups xmm1,XMMWORD PTR [r10+r15*1]
  e158bc:	0f 28 d1             	movaps xmm2,xmm1
  e158bf:	0f 16 d0             	movlhps xmm2,xmm0
  e158c2:	66 0f 15 c8          	unpckhpd xmm1,xmm0
  e158c6:	41 0f 11 51 f0       	movups XMMWORD PTR [r9-0x10],xmm2
  e158cb:	41 0f 11 09          	movups XMMWORD PTR [r9],xmm1
  e158cf:	4d 01 ea             	add    r10,r13
  e158d2:	49 83 c1 40          	add    r9,0x40
  e158d6:	4d 39 c4             	cmp    r12,r8
  e158d9:	75 b5                	jne    e15890 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5810>
  e158db:	41 f6 c3 01          	test   r11b,0x1
  e158df:	0f 84 5b ff ff ff    	je     e15840 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x57c0>
  e158e5:	4d 89 c1             	mov    r9,r8
  e158e8:	4d 0f af cf          	imul   r9,r15
  e158ec:	42 0f 10 04 0f       	movups xmm0,XMMWORD PTR [rdi+r9*1]
  e158f1:	42 0f 10 4c 0f 10    	movups xmm1,XMMWORD PTR [rdi+r9*1+0x10]
  e158f7:	0f 28 d1             	movaps xmm2,xmm1
  e158fa:	0f 16 d0             	movlhps xmm2,xmm0
  e158fd:	66 0f 15 c8          	unpckhpd xmm1,xmm0
  e15901:	49 c1 e0 05          	shl    r8,0x5
  e15905:	42 0f 11 14 06       	movups XMMWORD PTR [rsi+r8*1],xmm2
  e1590a:	42 0f 11 4c 06 10    	movups XMMWORD PTR [rsi+r8*1+0x10],xmm1
  e15910:	e9 2b ff ff ff       	jmp    e15840 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x57c0>
  e15915:	80 bc 24 e8 00 00 00 	cmp    BYTE PTR [rsp+0xe8],0x0
  e1591c:	00 
  e1591d:	0f 85 8a e6 ff ff    	jne    e13fad <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3f2d>
  e15923:	e9 88 e6 ff ff       	jmp    e13fb0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3f30>
  e15928:	48 8d 84 24 00 01 00 	lea    rax,[rsp+0x100]
  e1592f:	00 
  e15930:	48 89 84 24 60 01 00 	mov    QWORD PTR [rsp+0x160],rax
  e15937:	00 
  e15938:	48 8d 05 41 88 e0 ff 	lea    rax,[rip+0xffffffffffe08841]        # c1e180 <<u64 as core::fmt::Display>::fmt>
  e1593f:	48 89 84 24 68 01 00 	mov    QWORD PTR [rsp+0x168],rax
  e15946:	00 
  e15947:	48 8d 3d 6d 87 29 ff 	lea    rdi,[rip+0xffffffffff29876d]        # ae0bb <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x3b56b>
  e1594e:	48 8d 15 1b 39 43 00 	lea    rdx,[rip+0x43391b]        # 1249270 <__frame_dummy_init_array_entry+0x31018>
  e15955:	48 8d b4 24 60 01 00 	lea    rsi,[rsp+0x160]
  e1595c:	00 
  e1595d:	e8 9e df df ff       	call   c13900 <core::panicking::panic_fmt>
  e15962:	48 8d 3d 3f 0c 2b ff 	lea    rdi,[rip+0xffffffffff2b0c3f]        # c65a8 <crc32fast::table::CRC32_TABLE+0x8924>
  e15969:	48 8d 15 b0 37 43 00 	lea    rdx,[rip+0x4337b0]        # 1249120 <__frame_dummy_init_array_entry+0x30ec8>
  e15970:	be 81 00 00 00       	mov    esi,0x81
  e15975:	e8 86 df df ff       	call   c13900 <core::panicking::panic_fmt>
  e1597a:	48 8d 3d 67 0c 2b ff 	lea    rdi,[rip+0xffffffffff2b0c67]        # c65e8 <crc32fast::table::CRC32_TABLE+0x8964>
  e15981:	48 8d 15 e0 37 43 00 	lea    rdx,[rip+0x4337e0]        # 1249168 <__frame_dummy_init_array_entry+0x30f10>
  e15988:	be 87 00 00 00       	mov    esi,0x87
  e1598d:	e8 6e df df ff       	call   c13900 <core::panicking::panic_fmt>
  e15992:	48 8d 3d e1 0c 2b ff 	lea    rdi,[rip+0xffffffffff2b0ce1]        # c667a <crc32fast::table::CRC32_TABLE+0x89f6>
  e15999:	48 8d 15 40 38 43 00 	lea    rdx,[rip+0x433840]        # 12491e0 <__frame_dummy_init_array_entry+0x30f88>
  e159a0:	be 83 00 00 00       	mov    esi,0x83
  e159a5:	e8 56 df df ff       	call   c13900 <core::panicking::panic_fmt>
  e159aa:	48 8d 3d 48 2a 2b ff 	lea    rdi,[rip+0xffffffffff2b2a48]        # c83f9 <oxifft::dft::codelets::simd::large_sizes::bit_reverse_permute_4096::BIT_REV_TABLE+0x100>
  e159b1:	48 8d 15 60 49 43 00 	lea    rdx,[rip+0x434960]        # 124a318 <__frame_dummy_init_array_entry+0x320c0>
  e159b8:	be 1b 00 00 00       	mov    esi,0x1b
  e159bd:	e8 fe fd df ff       	call   c157c0 <core::panicking::panic>
  e159c2:	48 8d 3d 87 37 43 00 	lea    rdi,[rip+0x433787]        # 1249150 <__frame_dummy_init_array_entry+0x30ef8>
  e159c9:	e8 72 22 e0 ff       	call   c17c40 <core::panicking::panic_const::panic_const_div_by_zero>
  e159ce:	48 8d 15 f3 37 43 00 	lea    rdx,[rip+0x4337f3]        # 12491c8 <__frame_dummy_init_array_entry+0x30f70>
  e159d5:	31 ff                	xor    edi,edi
  e159d7:	31 f6                	xor    esi,esi
  e159d9:	e8 22 00 e0 ff       	call   c15a00 <core::panicking::panic_bounds_check>
  e159de:	48 8d 3d 0b 37 43 00 	lea    rdi,[rip+0x43370b]        # 12490f0 <__frame_dummy_init_array_entry+0x30e98>
  e159e5:	e8 56 22 e0 ff       	call   c17c40 <core::panicking::panic_const::panic_const_div_by_zero>
  e159ea:	48 8d 15 47 37 43 00 	lea    rdx,[rip+0x433747]        # 1249138 <__frame_dummy_init_array_entry+0x30ee0>
  e159f1:	31 ff                	xor    edi,edi
  e159f3:	31 f6                	xor    esi,esi
  e159f5:	e8 06 00 e0 ff       	call   c15a00 <core::panicking::panic_bounds_check>
  e159fa:	48 8d 15 07 37 43 00 	lea    rdx,[rip+0x433707]        # 1249108 <__frame_dummy_init_array_entry+0x30eb0>
  e15a01:	31 ff                	xor    edi,edi
  e15a03:	31 f6                	xor    esi,esi
  e15a05:	e8 f6 ff df ff       	call   c15a00 <core::panicking::panic_bounds_check>
