
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000497140 <fastfft::measure::Buffers<T>::sample>:
  497140:	push   rbp
  497141:	push   r15
  497143:	push   r14
  497145:	push   r13
  497147:	push   r12
  497149:	push   rbx
  49714a:	sub    rsp,0xa8
  497151:	mov    rbx,r9
  497154:	mov    r9,rdx
  497157:	mov    r11,rsi
  49715a:	mov    r13,QWORD PTR [rdi+0x48]
  49715e:	mov    r10,QWORD PTR [rdi+0x50]
  497162:	mov    rax,QWORD PTR [rdi+0x58]
  497166:	mov    QWORD PTR [rsp+0x10],rax
  49716b:	mov    r12,QWORD PTR [rdi+0x8]
  49716f:	mov    rdx,QWORD PTR [rdi+0x10]
  497173:	test   rdx,rdx
  497176:	je     4971b6 <fastfft::measure::Buffers<T>::sample+0x76>
  497178:	lea    r14,[r12+0x3f]
  49717d:	and    r14,0xffffffffffffffc0
  497181:	sub    r14,r12
  497184:	mov    esi,r12d
  497187:	and    esi,0x3
  49718a:	shr    r14,0x2
  49718e:	xor    eax,eax
  497190:	neg    rsi
  497193:	sbb    rax,rax
  497196:	or     rax,r14
  497199:	mov    r14,rax
  49719c:	shr    r14,1
  49719f:	mov    esi,eax
  4971a1:	and    esi,0x1
  4971a4:	add    rsi,r14
  4971a7:	sub    rdx,rsi
  4971aa:	jb     4974d2 <fastfft::measure::Buffers<T>::sample+0x392>
  4971b0:	lea    r12,[r12+rax*4]
  4971b4:	jmp    4971b8 <fastfft::measure::Buffers<T>::sample+0x78>
  4971b6:	xor    edx,edx
  4971b8:	lea    rax,[rcx+r13*1]
  4971bc:	cmp    rax,rdx
  4971bf:	seta   al
  4971c2:	mov    rsi,r13
  4971c5:	add    rsi,rcx
  4971c8:	jb     497487 <fastfft::measure::Buffers<T>::sample+0x347>
  4971ce:	test   al,al
  4971d0:	jne    497491 <fastfft::measure::Buffers<T>::sample+0x351>
  4971d6:	mov    r15,QWORD PTR [rdi+0x20]
  4971da:	mov    rdx,QWORD PTR [rdi+0x28]
  4971de:	test   rdx,rdx
  4971e1:	je     497220 <fastfft::measure::Buffers<T>::sample+0xe0>
  4971e3:	lea    r14,[r15+0x3f]
  4971e7:	and    r14,0xffffffffffffffc0
  4971eb:	sub    r14,r15
  4971ee:	mov    esi,r15d
  4971f1:	and    esi,0x3
  4971f4:	shr    r14,0x2
  4971f8:	xor    eax,eax
  4971fa:	neg    rsi
  4971fd:	sbb    rax,rax
  497200:	or     rax,r14
  497203:	mov    r14,rax
  497206:	shr    r14,1
  497209:	mov    esi,eax
  49720b:	and    esi,0x1
  49720e:	add    rsi,r14
  497211:	sub    rdx,rsi
  497214:	jb     4974d2 <fastfft::measure::Buffers<T>::sample+0x392>
  49721a:	lea    r15,[r15+rax*4]
  49721e:	jmp    497222 <fastfft::measure::Buffers<T>::sample+0xe2>
  497220:	xor    edx,edx
  497222:	lea    rax,[r10+rcx*1]
  497226:	cmp    rax,rdx
  497229:	seta   al
  49722c:	mov    rsi,r10
  49722f:	add    rsi,rcx
  497232:	jb     4974a0 <fastfft::measure::Buffers<T>::sample+0x360>
  497238:	test   al,al
  49723a:	jne    4974aa <fastfft::measure::Buffers<T>::sample+0x36a>
  497240:	mov    QWORD PTR [rsp+0x50],r15
  497245:	mov    r15,QWORD PTR [rdi+0x38]
  497249:	mov    rbp,QWORD PTR [rdi+0x40]
  49724d:	test   rbp,rbp
  497250:	mov    QWORD PTR [rsp+0x58],r10
  497255:	mov    QWORD PTR [rsp+0x40],rcx
  49725a:	je     49729c <fastfft::measure::Buffers<T>::sample+0x15c>
  49725c:	lea    rsi,[r15+0x3f]
  497260:	and    rsi,0xffffffffffffffc0
  497264:	sub    rsi,r15
  497267:	mov    edx,r15d
  49726a:	and    edx,0x3
  49726d:	shr    rsi,0x2
  497271:	xor    eax,eax
  497273:	neg    rdx
  497276:	sbb    rax,rax
  497279:	or     rax,rsi
  49727c:	mov    rsi,rax
  49727f:	shr    rsi,1
  497282:	mov    edx,eax
  497284:	and    edx,0x1
  497287:	add    rdx,rsi
  49728a:	sub    rbp,rdx
  49728d:	jb     4974d2 <fastfft::measure::Buffers<T>::sample+0x392>
  497293:	mov    r14,r12
  497296:	lea    r15,[r15+rax*4]
  49729a:	jmp    4972a1 <fastfft::measure::Buffers<T>::sample+0x161>
  49729c:	mov    r14,r12
  49729f:	xor    ebp,ebp
  4972a1:	mov    DWORD PTR [rsp+0x30],r8d
  4972a6:	movzx  eax,r8b
  4972aa:	mov    QWORD PTR [rsp+0x28],r11
  4972af:	mov    rdi,r11
  4972b2:	mov    QWORD PTR [rsp+0x18],r9
  4972b7:	mov    QWORD PTR [rsp+0x48],rax
  4972bc:	call   QWORD PTR [r9+rax*8+0x50]
  4972c1:	mov    rdi,QWORD PTR [rsp+0x10]
  4972c6:	lea    rcx,[rax+rdi*1]
  4972ca:	cmp    rcx,rbp
  4972cd:	seta   cl
  4972d0:	mov    rsi,rax
  4972d3:	add    rsi,rdi
  4972d6:	jb     4974b9 <fastfft::measure::Buffers<T>::sample+0x379>
  4972dc:	test   cl,cl
  4972de:	jne    4974c3 <fastfft::measure::Buffers<T>::sample+0x383>
  4972e4:	mov    QWORD PTR [rsp+0x20],rax
  4972e9:	lea    r12,[r14+r13*8]
  4972ed:	lea    rax,[r15+rdi*8]
  4972f1:	mov    QWORD PTR [rsp+0x10],rax
  4972f6:	mov    edi,0x1
  4972fb:	call   10b6880 <<std::sys::pal::unix::time::Timespec>::now>
  497300:	mov    QWORD PTR [rsp+0x60],rax
  497305:	mov    DWORD PTR [rsp+0x3c],edx
  497309:	cmp    BYTE PTR [rsp+0x30],0x0
  49730e:	je     497376 <fastfft::measure::Buffers<T>::sample+0x236>
  497310:	mov    rax,QWORD PTR [rsp+0x58]
  497315:	mov    rcx,QWORD PTR [rsp+0x50]
  49731a:	lea    r15,[rcx+rax*8]
  49731e:	cmp    DWORD PTR [rsp+0x48],0x1
  497323:	mov    rbp,QWORD PTR [rsp+0x40]
  497328:	jne    4973bb <fastfft::measure::Buffers<T>::sample+0x27b>
  49732e:	test   rbx,rbx
  497331:	mov    r13,QWORD PTR [rsp+0x28]
  497336:	mov    r14,QWORD PTR [rsp+0x20]
  49733b:	je     497413 <fastfft::measure::Buffers<T>::sample+0x2d3>
  497341:	mov    rax,QWORD PTR [rsp+0x18]
  497346:	mov    rax,QWORD PTR [rax+0x40]
  49734a:	mov    QWORD PTR [rsp+0x30],rax
  49734f:	nop
  497350:	mov    QWORD PTR [rsp],r14
  497354:	mov    rdi,r13
  497357:	mov    rsi,r12
  49735a:	mov    rdx,rbp
  49735d:	mov    rcx,r15
  497360:	mov    r8,rbp
  497363:	mov    r9,QWORD PTR [rsp+0x10]
  497368:	call   QWORD PTR [rsp+0x30]
  49736c:	dec    rbx
  49736f:	jne    497350 <fastfft::measure::Buffers<T>::sample+0x210>
  497371:	jmp    497413 <fastfft::measure::Buffers<T>::sample+0x2d3>
  497376:	test   rbx,rbx
  497379:	mov    rbp,QWORD PTR [rsp+0x40]
  49737e:	mov    r15,QWORD PTR [rsp+0x28]
  497383:	mov    r13,QWORD PTR [rsp+0x20]
  497388:	je     497413 <fastfft::measure::Buffers<T>::sample+0x2d3>
  49738e:	mov    rax,QWORD PTR [rsp+0x18]
  497393:	mov    r14,QWORD PTR [rax+0x38]
  497397:	nop    WORD PTR [rax+rax*1+0x0]
  4973a0:	mov    rdi,r15
  4973a3:	mov    rsi,r12
  4973a6:	mov    rdx,rbp
  4973a9:	mov    rcx,QWORD PTR [rsp+0x10]
  4973ae:	mov    r8,r13
  4973b1:	call   r14
  4973b4:	dec    rbx
  4973b7:	jne    4973a0 <fastfft::measure::Buffers<T>::sample+0x260>
  4973b9:	jmp    497413 <fastfft::measure::Buffers<T>::sample+0x2d3>
  4973bb:	test   rbx,rbx
  4973be:	mov    r13,QWORD PTR [rsp+0x28]
  4973c3:	mov    rcx,QWORD PTR [rsp+0x20]
  4973c8:	je     497413 <fastfft::measure::Buffers<T>::sample+0x2d3>
  4973ca:	mov    rdx,rbp
  4973cd:	mov    rax,QWORD PTR [rsp+0x18]
  4973d2:	mov    rbp,QWORD PTR [rax+0x48]
  4973d6:	mov    QWORD PTR [rsp+0x68],r12
  4973db:	nop    DWORD PTR [rax+rax*1+0x0]
  4973e0:	mov    QWORD PTR [rsp],rcx
  4973e4:	mov    rdi,r13
  4973e7:	mov    rsi,r12
  4973ea:	mov    r12,rcx
  4973ed:	mov    rcx,r15
  4973f0:	mov    r14,rbx
  4973f3:	mov    rbx,rdx
  4973f6:	mov    r8,rdx
  4973f9:	mov    r9,QWORD PTR [rsp+0x10]
  4973fe:	call   rbp
  497400:	mov    rdx,rbx
  497403:	mov    rbx,r14
  497406:	mov    rcx,r12
  497409:	mov    r12,QWORD PTR [rsp+0x68]
  49740e:	dec    rbx
  497411:	jne    4973e0 <fastfft::measure::Buffers<T>::sample+0x2a0>
  497413:	mov    edi,0x1
  497418:	call   10b6880 <<std::sys::pal::unix::time::Timespec>::now>
  49741d:	mov    QWORD PTR [rsp+0x70],rax
  497422:	mov    DWORD PTR [rsp+0x78],edx
  497426:	mov    rax,QWORD PTR [rsp+0x60]
  49742b:	mov    QWORD PTR [rsp+0x80],rax
  497433:	mov    eax,DWORD PTR [rsp+0x3c]
  497437:	mov    DWORD PTR [rsp+0x88],eax
  49743e:	lea    rdi,[rsp+0x90]
  497446:	lea    rsi,[rsp+0x70]
  49744b:	lea    rdx,[rsp+0x80]
  497453:	call   10b6780 <<std::sys::pal::unix::time::Timespec>::sub_timespec>
  497458:	xor    eax,eax
  49745a:	cmp    BYTE PTR [rsp+0x90],0x0
  497462:	mov    edx,DWORD PTR [rsp+0xa0]
  497469:	cmovne edx,eax
  49746c:	cmove  rax,QWORD PTR [rsp+0x98]
  497475:	add    rsp,0xa8
  49747c:	pop    rbx
  49747d:	pop    r12
  49747f:	pop    r13
  497481:	pop    r14
  497483:	pop    r15
  497485:	pop    rbp
  497486:	ret
  497487:	mov    al,0x1
  497489:	test   al,al
  49748b:	je     4971d6 <fastfft::measure::Buffers<T>::sample+0x96>
  497491:	lea    rcx,[rip+0xd94ae8]        # 122bf80 <__frame_dummy_init_array_entry+0x16d28>
  497498:	mov    rdi,r13
  49749b:	call   c138c0 <core::slice::index::slice_index_fail>
  4974a0:	mov    al,0x1
  4974a2:	test   al,al
  4974a4:	je     497240 <fastfft::measure::Buffers<T>::sample+0x100>
  4974aa:	lea    rcx,[rip+0xd94ab7]        # 122bf68 <__frame_dummy_init_array_entry+0x16d10>
  4974b1:	mov    rdi,r10
  4974b4:	call   c138c0 <core::slice::index::slice_index_fail>
  4974b9:	mov    cl,0x1
  4974bb:	test   cl,cl
  4974bd:	je     4972e4 <fastfft::measure::Buffers<T>::sample+0x1a4>
  4974c3:	lea    rcx,[rip+0xd94a86]        # 122bf50 <__frame_dummy_init_array_entry+0x16cf8>
  4974ca:	mov    rdx,rbp
  4974cd:	call   c138c0 <core::slice::index::slice_index_fail>
  4974d2:	lea    rdi,[rip+0xffffffffffc2f2dc]        # c67b5 <crc32fast::table::CRC32_TABLE+0x8b31>
  4974d9:	lea    rdx,[rip+0xdaefb8]        # 1246498 <__frame_dummy_init_array_entry+0x31240>
  4974e0:	mov    esi,0x36
  4974e5:	call   c15a00 <core::option::expect_failed>
