
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000496ac0 <fastfft::measure::sample_routed>:
  496ac0:	push   rbp
  496ac1:	push   r15
  496ac3:	push   r14
  496ac5:	push   r13
  496ac7:	push   r12
  496ac9:	push   rbx
  496aca:	sub    rsp,0x68
  496ace:	mov    r12,r8
  496ad1:	mov    r13,rcx
  496ad4:	mov    r14,rdx
  496ad7:	mov    QWORD PTR [rsp+0x50],rsi
  496adc:	mov    r15,rdi
  496adf:	cmp    QWORD PTR [rcx+0x8],0x0
  496ae4:	lea    rax,[rip+0x655]        # 497140 <fastfft::measure::Buffers<T>::sample>
  496aeb:	lea    rcx,[rip+0xffffffffffffff4e]        # 496a40 <fastfft::measure::sample_helper>
  496af2:	cmove  rcx,rax
  496af6:	mov    QWORD PTR [rsp+0x28],rcx
  496afb:	lea    rax,[rsp+0x28]
  496b00:	cmp    BYTE PTR [r13+0x19],0x0
  496b05:	je     496b68 <fastfft::measure::sample_routed+0xa8>
  496b07:	mov    rax,QWORD PTR [r13+0x10]
  496b0b:	mov    QWORD PTR [rsp+0x60],rax
  496b10:	mov    rbp,QWORD PTR [r12]
  496b14:	mov    ebx,DWORD PTR [r12+0x8]
  496b19:	mov    edi,0x1
  496b1e:	call   10b6880 <<std::sys::pal::unix::time::Timespec>::now>
  496b23:	mov    QWORD PTR [rsp+0x8],rax
  496b28:	mov    DWORD PTR [rsp+0x10],edx
  496b2c:	mov    QWORD PTR [rsp+0x18],rbp
  496b31:	mov    DWORD PTR [rsp+0x20],ebx
  496b35:	lea    rdi,[rsp+0x30]
  496b3a:	lea    rsi,[rsp+0x8]
  496b3f:	lea    rdx,[rsp+0x18]
  496b44:	call   10b6780 <<std::sys::pal::unix::time::Timespec>::sub_timespec>
  496b49:	movzx  eax,BYTE PTR [rsp+0x30]
  496b4e:	test   al,al
  496b50:	mov    QWORD PTR [rsp+0x48],r14
  496b55:	jne    496bc9 <fastfft::measure::sample_routed+0x109>
  496b57:	mov    rcx,QWORD PTR [rsp+0x38]
  496b5c:	mov    r14,QWORD PTR [r12+0x10]
  496b61:	cmp    rcx,r14
  496b64:	je     496bd5 <fastfft::measure::sample_routed+0x115>
  496b66:	jmp    496be3 <fastfft::measure::sample_routed+0x123>
  496b68:	mov    rbx,QWORD PTR [r12]
  496b6c:	mov    ebp,DWORD PTR [r12+0x8]
  496b71:	mov    edi,0x1
  496b76:	call   10b6880 <<std::sys::pal::unix::time::Timespec>::now>
  496b7b:	mov    QWORD PTR [rsp+0x8],rax
  496b80:	mov    DWORD PTR [rsp+0x10],edx
  496b84:	mov    QWORD PTR [rsp+0x18],rbx
  496b89:	mov    DWORD PTR [rsp+0x20],ebp
  496b8d:	lea    rdi,[rsp+0x30]
  496b92:	lea    rsi,[rsp+0x8]
  496b97:	lea    rdx,[rsp+0x18]
  496b9c:	call   10b6780 <<std::sys::pal::unix::time::Timespec>::sub_timespec>
  496ba1:	movzx  eax,BYTE PTR [rsp+0x30]
  496ba6:	test   al,al
  496ba8:	jne    496c56 <fastfft::measure::sample_routed+0x196>
  496bae:	mov    rcx,QWORD PTR [rsp+0x38]
  496bb3:	cmp    rcx,QWORD PTR [r12+0x10]
  496bb8:	je     496c63 <fastfft::measure::sample_routed+0x1a3>
  496bbe:	jb     496c77 <fastfft::measure::sample_routed+0x1b7>
  496bc4:	jmp    496dc7 <fastfft::measure::sample_routed+0x307>
  496bc9:	xor    ecx,ecx
  496bcb:	mov    r14,QWORD PTR [r12+0x10]
  496bd0:	cmp    rcx,r14
  496bd3:	jne    496be3 <fastfft::measure::sample_routed+0x123>
  496bd5:	xor    ecx,ecx
  496bd7:	test   al,al
  496bd9:	cmove  ecx,DWORD PTR [rsp+0x40]
  496bde:	cmp    ecx,DWORD PTR [r12+0x18]
  496be3:	jae    496dc7 <fastfft::measure::sample_routed+0x307>
  496be9:	mov    rcx,QWORD PTR [r13+0x0]
  496bed:	movzx  r13d,BYTE PTR [r13+0x18]
  496bf2:	mov    r9d,0x1
  496bf8:	mov    rdi,r15
  496bfb:	mov    rsi,QWORD PTR [rsp+0x50]
  496c00:	mov    rdx,QWORD PTR [rsp+0x48]
  496c05:	mov    QWORD PTR [rsp+0x58],rcx
  496c0a:	mov    r8d,r13d
  496c0d:	call   QWORD PTR [rsp+0x28]
  496c11:	mov    edi,0x1
  496c16:	call   10b6880 <<std::sys::pal::unix::time::Timespec>::now>
  496c1b:	mov    QWORD PTR [rsp+0x8],rax
  496c20:	mov    DWORD PTR [rsp+0x10],edx
  496c24:	mov    QWORD PTR [rsp+0x18],rbp
  496c29:	mov    DWORD PTR [rsp+0x20],ebx
  496c2d:	lea    rdi,[rsp+0x30]
  496c32:	lea    rsi,[rsp+0x8]
  496c37:	lea    rdx,[rsp+0x18]
  496c3c:	call   10b6780 <<std::sys::pal::unix::time::Timespec>::sub_timespec>
  496c41:	movzx  eax,BYTE PTR [rsp+0x30]
  496c46:	test   al,al
  496c48:	jne    496c97 <fastfft::measure::sample_routed+0x1d7>
  496c4a:	mov    rcx,QWORD PTR [rsp+0x38]
  496c4f:	cmp    rcx,r14
  496c52:	je     496c9e <fastfft::measure::sample_routed+0x1de>
  496c54:	jmp    496cac <fastfft::measure::sample_routed+0x1ec>
  496c56:	xor    ecx,ecx
  496c58:	cmp    rcx,QWORD PTR [r12+0x10]
  496c5d:	jne    496bbe <fastfft::measure::sample_routed+0xfe>
  496c63:	xor    ecx,ecx
  496c65:	test   al,al
  496c67:	cmove  ecx,DWORD PTR [rsp+0x40]
  496c6c:	cmp    ecx,DWORD PTR [r12+0x18]
  496c71:	jae    496dc7 <fastfft::measure::sample_routed+0x307>
  496c77:	mov    rcx,QWORD PTR [r13+0x0]
  496c7b:	mov    r9,QWORD PTR [r13+0x10]
  496c7f:	mov    r8d,DWORD PTR [r13+0x18]
  496c83:	mov    rdi,r15
  496c86:	mov    rsi,QWORD PTR [rsp+0x50]
  496c8b:	mov    rdx,r14
  496c8e:	call   QWORD PTR [rsp+0x28]
  496c92:	jmp    496dcc <fastfft::measure::sample_routed+0x30c>
  496c97:	xor    ecx,ecx
  496c99:	cmp    rcx,r14
  496c9c:	jne    496cac <fastfft::measure::sample_routed+0x1ec>
  496c9e:	xor    ecx,ecx
  496ca0:	test   al,al
  496ca2:	cmove  ecx,DWORD PTR [rsp+0x40]
  496ca7:	cmp    ecx,DWORD PTR [r12+0x18]
  496cac:	jae    496dc7 <fastfft::measure::sample_routed+0x307>
  496cb2:	mov    r9d,0x1
  496cb8:	mov    rdi,r15
  496cbb:	mov    rsi,QWORD PTR [rsp+0x50]
  496cc0:	mov    rdx,QWORD PTR [rsp+0x48]
  496cc5:	mov    rcx,QWORD PTR [rsp+0x58]
  496cca:	mov    r8d,r13d
  496ccd:	call   QWORD PTR [rsp+0x28]
  496cd1:	mov    edi,0x1
  496cd6:	call   10b6880 <<std::sys::pal::unix::time::Timespec>::now>
  496cdb:	mov    QWORD PTR [rsp+0x8],rax
  496ce0:	mov    DWORD PTR [rsp+0x10],edx
  496ce4:	mov    QWORD PTR [rsp+0x18],rbp
  496ce9:	mov    DWORD PTR [rsp+0x20],ebx
  496ced:	lea    rdi,[rsp+0x30]
  496cf2:	lea    rsi,[rsp+0x8]
  496cf7:	lea    rdx,[rsp+0x18]
  496cfc:	call   10b6780 <<std::sys::pal::unix::time::Timespec>::sub_timespec>
  496d01:	movzx  eax,BYTE PTR [rsp+0x30]
  496d06:	test   al,al
  496d08:	jne    496d16 <fastfft::measure::sample_routed+0x256>
  496d0a:	mov    rcx,QWORD PTR [rsp+0x38]
  496d0f:	cmp    rcx,r14
  496d12:	je     496d1d <fastfft::measure::sample_routed+0x25d>
  496d14:	jmp    496d2b <fastfft::measure::sample_routed+0x26b>
  496d16:	xor    ecx,ecx
  496d18:	cmp    rcx,r14
  496d1b:	jne    496d2b <fastfft::measure::sample_routed+0x26b>
  496d1d:	xor    ecx,ecx
  496d1f:	test   al,al
  496d21:	cmove  ecx,DWORD PTR [rsp+0x40]
  496d26:	cmp    ecx,DWORD PTR [r12+0x18]
  496d2b:	jae    496dc7 <fastfft::measure::sample_routed+0x307>
  496d31:	mov    r9d,0x1
  496d37:	mov    rdi,r15
  496d3a:	mov    rsi,QWORD PTR [rsp+0x50]
  496d3f:	mov    rdx,QWORD PTR [rsp+0x48]
  496d44:	mov    rcx,QWORD PTR [rsp+0x58]
  496d49:	mov    r8d,r13d
  496d4c:	call   QWORD PTR [rsp+0x28]
  496d50:	mov    edi,0x1
  496d55:	call   10b6880 <<std::sys::pal::unix::time::Timespec>::now>
  496d5a:	mov    QWORD PTR [rsp+0x8],rax
  496d5f:	mov    DWORD PTR [rsp+0x10],edx
  496d63:	mov    QWORD PTR [rsp+0x18],rbp
  496d68:	mov    DWORD PTR [rsp+0x20],ebx
  496d6c:	lea    rdi,[rsp+0x30]
  496d71:	lea    rsi,[rsp+0x8]
  496d76:	lea    rdx,[rsp+0x18]
  496d7b:	call   10b6780 <<std::sys::pal::unix::time::Timespec>::sub_timespec>
  496d80:	movzx  eax,BYTE PTR [rsp+0x30]
  496d85:	test   al,al
  496d87:	jne    496d90 <fastfft::measure::sample_routed+0x2d0>
  496d89:	mov    rcx,QWORD PTR [rsp+0x38]
  496d8e:	jmp    496d92 <fastfft::measure::sample_routed+0x2d2>
  496d90:	xor    ecx,ecx
  496d92:	cmp    rcx,r14
  496d95:	jne    496da5 <fastfft::measure::sample_routed+0x2e5>
  496d97:	xor    ecx,ecx
  496d99:	test   al,al
  496d9b:	cmove  ecx,DWORD PTR [rsp+0x40]
  496da0:	cmp    ecx,DWORD PTR [r12+0x18]
  496da5:	mov    rdx,QWORD PTR [rsp+0x48]
  496daa:	jae    496dc7 <fastfft::measure::sample_routed+0x307>
  496dac:	mov    rdi,r15
  496daf:	mov    rsi,QWORD PTR [rsp+0x50]
  496db4:	mov    rcx,QWORD PTR [rsp+0x58]
  496db9:	mov    r8d,r13d
  496dbc:	mov    r9,QWORD PTR [rsp+0x60]
  496dc1:	call   QWORD PTR [rsp+0x28]
  496dc5:	jmp    496dcc <fastfft::measure::sample_routed+0x30c>
  496dc7:	mov    edx,0x3b9aca00
  496dcc:	add    rsp,0x68
  496dd0:	pop    rbx
  496dd1:	pop    r12
  496dd3:	pop    r13
  496dd5:	pop    r14
  496dd7:	pop    r15
  496dd9:	pop    rbp
  496dda:	ret
