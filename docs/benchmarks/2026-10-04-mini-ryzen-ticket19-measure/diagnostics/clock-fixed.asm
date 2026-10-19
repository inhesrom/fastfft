
target/ticket19/clock-probe:     file format elf64-x86-64


Disassembly of section .text:

0000000000016200 <_ZN11clock_probe11clock_probe14dependent_adds17h1321504a46af9a3eE>:
   16200:	31 c0                	xor    %eax,%eax
   16202:	b9 80 96 98 00       	mov    $0x989680,%ecx
   16207:	48 83 c0 01          	add    $0x1,%rax
   1620b:	48 83 c0 01          	add    $0x1,%rax
   1620f:	48 83 c0 01          	add    $0x1,%rax
   16213:	48 83 c0 01          	add    $0x1,%rax
   16217:	48 ff c9             	dec    %rcx
   1621a:	75 eb                	jne    16207 <_ZN11clock_probe11clock_probe14dependent_adds17h1321504a46af9a3eE+0x7>
   1621c:	c3                   	ret
   1621d:	cc                   	int3
   1621e:	cc                   	int3
   1621f:	cc                   	int3
   16220:	cc                   	int3
   16221:	cc                   	int3
   16222:	cc                   	int3
   16223:	cc                   	int3
   16224:	cc                   	int3
   16225:	cc                   	int3
   16226:	cc                   	int3
   16227:	cc                   	int3
   16228:	cc                   	int3
   16229:	cc                   	int3
   1622a:	cc                   	int3
   1622b:	cc                   	int3
   1622c:	cc                   	int3
   1622d:	cc                   	int3
   1622e:	cc                   	int3
   1622f:	cc                   	int3
   16230:	cc                   	int3
   16231:	cc                   	int3
   16232:	cc                   	int3
   16233:	cc                   	int3
   16234:	cc                   	int3
   16235:	cc                   	int3
   16236:	cc                   	int3
   16237:	cc                   	int3
   16238:	cc                   	int3
   16239:	cc                   	int3
   1623a:	cc                   	int3
   1623b:	cc                   	int3
   1623c:	cc                   	int3
   1623d:	cc                   	int3
   1623e:	cc                   	int3
   1623f:	cc                   	int3

0000000000016240 <_ZN11clock_probe3old17h411f11e2662c8c8aE>:
   16240:	55                   	push   %rbp
   16241:	41 57                	push   %r15
   16243:	41 56                	push   %r14
   16245:	53                   	push   %rbx
   16246:	48 83 ec 28          	sub    $0x28,%rsp
   1624a:	ff 15 68 6b 04 00    	call   *0x46b68(%rip)        # 5cdb8 <_DYNAMIC+0x238>
   16250:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
   16255:	89 54 24 18          	mov    %edx,0x18(%rsp)
   16259:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
   16260:	00 
   16261:	48 89 e0             	mov    %rsp,%rax
