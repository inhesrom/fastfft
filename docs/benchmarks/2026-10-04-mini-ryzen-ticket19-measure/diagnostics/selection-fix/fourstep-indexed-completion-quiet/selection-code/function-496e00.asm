
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000496e00 <fastfft::measure::sample_routed>:
  496e00:	push   rbp
  496e01:	push   r15
  496e03:	push   r14
  496e05:	push   r13
  496e07:	push   r12
  496e09:	push   rbx
  496e0a:	sub    rsp,0x68
  496e0e:	mov    r12,r8
  496e11:	mov    r13,rcx
  496e14:	mov    r14,rdx
  496e17:	mov    QWORD PTR [rsp+0x50],rsi
  496e1c:	mov    r15,rdi
  496e1f:	cmp    QWORD PTR [rcx+0x8],0x0
  496e24:	lea    rax,[rip+0x6d5]        # 497500 <fastfft::measure::Buffers<T>::sample>
  496e2b:	lea    rcx,[rip+0xfffffffffffffc4e]        # 496a80 <fastfft::measure::sample_helper>
  496e32:	cmove  rcx,rax
  496e36:	mov    QWORD PTR [rsp+0x28],rcx
  496e3b:	lea    rax,[rsp+0x28]
  496e40:	cmp    BYTE PTR [r13+0x19],0x0
  496e45:	je     496ea8 <fastfft::measure::sample_routed+0xa8>
  496e47:	mov    rax,QWORD PTR [r13+0x10]
  496e4b:	mov    QWORD PTR [rsp+0x60],rax
  496e50:	mov    rbp,QWORD PTR [r12]
  496e54:	mov    ebx,DWORD PTR [r12+0x8]
  496e59:	mov    edi,0x1
  496e5e:	call   10b6880 <<std::sys::pal::unix::time::Timespec>::now>
  496e63:	mov    QWORD PTR [rsp+0x8],rax
  496e68:	mov    DWORD PTR [rsp+0x10],edx
  496e6c:	mov    QWORD PTR [rsp+0x18],rbp
  496e71:	mov    DWORD PTR [rsp+0x20],ebx
  496e75:	lea    rdi,[rsp+0x30]
  496e7a:	lea    rsi,[rsp+0x8]
  496e7f:	lea    rdx,[rsp+0x18]
  496e84:	call   10b6780 <<std::sys::pal::unix::time::Timespec>::sub_timespec>
  496e89:	movzx  eax,BYTE PTR [rsp+0x30]
  496e8e:	test   al,al
  496e90:	mov    QWORD PTR [rsp+0x48],r14
  496e95:	jne    496f09 <fastfft::measure::sample_routed+0x109>
  496e97:	mov    rcx,QWORD PTR [rsp+0x38]
  496e9c:	mov    r14,QWORD PTR [r12+0x10]
  496ea1:	cmp    rcx,r14
  496ea4:	je     496f15 <fastfft::measure::sample_routed+0x115>
  496ea6:	jmp    496f23 <fastfft::measure::sample_routed+0x123>
  496ea8:	mov    rbx,QWORD PTR [r12]
  496eac:	mov    ebp,DWORD PTR [r12+0x8]
  496eb1:	mov    edi,0x1
  496eb6:	call   10b6880 <<std::sys::pal::unix::time::Timespec>::now>
  496ebb:	mov    QWORD PTR [rsp+0x8],rax
  496ec0:	mov    DWORD PTR [rsp+0x10],edx
  496ec4:	mov    QWORD PTR [rsp+0x18],rbx
  496ec9:	mov    DWORD PTR [rsp+0x20],ebp
  496ecd:	lea    rdi,[rsp+0x30]
  496ed2:	lea    rsi,[rsp+0x8]
  496ed7:	lea    rdx,[rsp+0x18]
  496edc:	call   10b6780 <<std::sys::pal::unix::time::Timespec>::sub_timespec>
  496ee1:	movzx  eax,BYTE PTR [rsp+0x30]
  496ee6:	test   al,al
  496ee8:	jne    496f96 <fastfft::measure::sample_routed+0x196>
  496eee:	mov    rcx,QWORD PTR [rsp+0x38]
  496ef3:	cmp    rcx,QWORD PTR [r12+0x10]
  496ef8:	je     496fa3 <fastfft::measure::sample_routed+0x1a3>
  496efe:	jb     496fb7 <fastfft::measure::sample_routed+0x1b7>
  496f04:	jmp    497107 <fastfft::measure::sample_routed+0x307>
  496f09:	xor    ecx,ecx
  496f0b:	mov    r14,QWORD PTR [r12+0x10]
  496f10:	cmp    rcx,r14
  496f13:	jne    496f23 <fastfft::measure::sample_routed+0x123>
  496f15:	xor    ecx,ecx
  496f17:	test   al,al
  496f19:	cmove  ecx,DWORD PTR [rsp+0x40]
  496f1e:	cmp    ecx,DWORD PTR [r12+0x18]
  496f23:	jae    497107 <fastfft::measure::sample_routed+0x307>
  496f29:	mov    rcx,QWORD PTR [r13+0x0]
  496f2d:	movzx  r13d,BYTE PTR [r13+0x18]
  496f32:	mov    r9d,0x1
  496f38:	mov    rdi,r15
  496f3b:	mov    rsi,QWORD PTR [rsp+0x50]
  496f40:	mov    rdx,QWORD PTR [rsp+0x48]
  496f45:	mov    QWORD PTR [rsp+0x58],rcx
  496f4a:	mov    r8d,r13d
  496f4d:	call   QWORD PTR [rsp+0x28]
  496f51:	mov    edi,0x1
  496f56:	call   10b6880 <<std::sys::pal::unix::time::Timespec>::now>
  496f5b:	mov    QWORD PTR [rsp+0x8],rax
  496f60:	mov    DWORD PTR [rsp+0x10],edx
  496f64:	mov    QWORD PTR [rsp+0x18],rbp
  496f69:	mov    DWORD PTR [rsp+0x20],ebx
  496f6d:	lea    rdi,[rsp+0x30]
  496f72:	lea    rsi,[rsp+0x8]
  496f77:	lea    rdx,[rsp+0x18]
  496f7c:	call   10b6780 <<std::sys::pal::unix::time::Timespec>::sub_timespec>
  496f81:	movzx  eax,BYTE PTR [rsp+0x30]
  496f86:	test   al,al
  496f88:	jne    496fd7 <fastfft::measure::sample_routed+0x1d7>
  496f8a:	mov    rcx,QWORD PTR [rsp+0x38]
  496f8f:	cmp    rcx,r14
  496f92:	je     496fde <fastfft::measure::sample_routed+0x1de>
  496f94:	jmp    496fec <fastfft::measure::sample_routed+0x1ec>
  496f96:	xor    ecx,ecx
  496f98:	cmp    rcx,QWORD PTR [r12+0x10]
  496f9d:	jne    496efe <fastfft::measure::sample_routed+0xfe>
  496fa3:	xor    ecx,ecx
  496fa5:	test   al,al
  496fa7:	cmove  ecx,DWORD PTR [rsp+0x40]
  496fac:	cmp    ecx,DWORD PTR [r12+0x18]
  496fb1:	jae    497107 <fastfft::measure::sample_routed+0x307>
  496fb7:	mov    rcx,QWORD PTR [r13+0x0]
  496fbb:	mov    r9,QWORD PTR [r13+0x10]
  496fbf:	mov    r8d,DWORD PTR [r13+0x18]
  496fc3:	mov    rdi,r15
  496fc6:	mov    rsi,QWORD PTR [rsp+0x50]
  496fcb:	mov    rdx,r14
  496fce:	call   QWORD PTR [rsp+0x28]
  496fd2:	jmp    49710c <fastfft::measure::sample_routed+0x30c>
  496fd7:	xor    ecx,ecx
  496fd9:	cmp    rcx,r14
  496fdc:	jne    496fec <fastfft::measure::sample_routed+0x1ec>
  496fde:	xor    ecx,ecx
  496fe0:	test   al,al
  496fe2:	cmove  ecx,DWORD PTR [rsp+0x40]
  496fe7:	cmp    ecx,DWORD PTR [r12+0x18]
  496fec:	jae    497107 <fastfft::measure::sample_routed+0x307>
  496ff2:	mov    r9d,0x1
  496ff8:	mov    rdi,r15
  496ffb:	mov    rsi,QWORD PTR [rsp+0x50]
  497000:	mov    rdx,QWORD PTR [rsp+0x48]
  497005:	mov    rcx,QWORD PTR [rsp+0x58]
  49700a:	mov    r8d,r13d
  49700d:	call   QWORD PTR [rsp+0x28]
  497011:	mov    edi,0x1
  497016:	call   10b6880 <<std::sys::pal::unix::time::Timespec>::now>
  49701b:	mov    QWORD PTR [rsp+0x8],rax
  497020:	mov    DWORD PTR [rsp+0x10],edx
  497024:	mov    QWORD PTR [rsp+0x18],rbp
  497029:	mov    DWORD PTR [rsp+0x20],ebx
  49702d:	lea    rdi,[rsp+0x30]
  497032:	lea    rsi,[rsp+0x8]
  497037:	lea    rdx,[rsp+0x18]
  49703c:	call   10b6780 <<std::sys::pal::unix::time::Timespec>::sub_timespec>
  497041:	movzx  eax,BYTE PTR [rsp+0x30]
  497046:	test   al,al
  497048:	jne    497056 <fastfft::measure::sample_routed+0x256>
  49704a:	mov    rcx,QWORD PTR [rsp+0x38]
  49704f:	cmp    rcx,r14
  497052:	je     49705d <fastfft::measure::sample_routed+0x25d>
  497054:	jmp    49706b <fastfft::measure::sample_routed+0x26b>
  497056:	xor    ecx,ecx
  497058:	cmp    rcx,r14
  49705b:	jne    49706b <fastfft::measure::sample_routed+0x26b>
  49705d:	xor    ecx,ecx
  49705f:	test   al,al
  497061:	cmove  ecx,DWORD PTR [rsp+0x40]
  497066:	cmp    ecx,DWORD PTR [r12+0x18]
  49706b:	jae    497107 <fastfft::measure::sample_routed+0x307>
  497071:	mov    r9d,0x1
  497077:	mov    rdi,r15
  49707a:	mov    rsi,QWORD PTR [rsp+0x50]
  49707f:	mov    rdx,QWORD PTR [rsp+0x48]
  497084:	mov    rcx,QWORD PTR [rsp+0x58]
  497089:	mov    r8d,r13d
  49708c:	call   QWORD PTR [rsp+0x28]
  497090:	mov    edi,0x1
  497095:	call   10b6880 <<std::sys::pal::unix::time::Timespec>::now>
  49709a:	mov    QWORD PTR [rsp+0x8],rax
  49709f:	mov    DWORD PTR [rsp+0x10],edx
  4970a3:	mov    QWORD PTR [rsp+0x18],rbp
  4970a8:	mov    DWORD PTR [rsp+0x20],ebx
  4970ac:	lea    rdi,[rsp+0x30]
  4970b1:	lea    rsi,[rsp+0x8]
  4970b6:	lea    rdx,[rsp+0x18]
  4970bb:	call   10b6780 <<std::sys::pal::unix::time::Timespec>::sub_timespec>
  4970c0:	movzx  eax,BYTE PTR [rsp+0x30]
  4970c5:	test   al,al
  4970c7:	jne    4970d0 <fastfft::measure::sample_routed+0x2d0>
  4970c9:	mov    rcx,QWORD PTR [rsp+0x38]
  4970ce:	jmp    4970d2 <fastfft::measure::sample_routed+0x2d2>
  4970d0:	xor    ecx,ecx
  4970d2:	cmp    rcx,r14
  4970d5:	jne    4970e5 <fastfft::measure::sample_routed+0x2e5>
  4970d7:	xor    ecx,ecx
  4970d9:	test   al,al
  4970db:	cmove  ecx,DWORD PTR [rsp+0x40]
  4970e0:	cmp    ecx,DWORD PTR [r12+0x18]
  4970e5:	mov    rdx,QWORD PTR [rsp+0x48]
  4970ea:	jae    497107 <fastfft::measure::sample_routed+0x307>
  4970ec:	mov    rdi,r15
  4970ef:	mov    rsi,QWORD PTR [rsp+0x50]
  4970f4:	mov    rcx,QWORD PTR [rsp+0x58]
  4970f9:	mov    r8d,r13d
  4970fc:	mov    r9,QWORD PTR [rsp+0x60]
  497101:	call   QWORD PTR [rsp+0x28]
  497105:	jmp    49710c <fastfft::measure::sample_routed+0x30c>
  497107:	mov    edx,0x3b9aca00
  49710c:	add    rsp,0x68
  497110:	pop    rbx
  497111:	pop    r12
  497113:	pop    r13
  497115:	pop    r14
  497117:	pop    r15
  497119:	pop    rbp
  49711a:	ret
