
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000496a40 <fastfft::measure::sample_helper>:
  496a40:	sub    rsp,0x18
  496a44:	lea    rax,[rip+0x6f5]        # 497140 <fastfft::measure::Buffers<T>::sample>
  496a4b:	mov    QWORD PTR [rsp+0x8],rax
  496a50:	lea    rax,[rsp+0x8]
  496a55:	call   QWORD PTR [rsp+0x8]
  496a59:	mov    QWORD PTR [rsp+0x8],rax
  496a5e:	mov    DWORD PTR [rsp+0x10],edx
  496a62:	lea    rax,[rsp+0x8]
  496a67:	mov    rax,QWORD PTR [rsp+0x8]
  496a6c:	mov    edx,DWORD PTR [rsp+0x10]
  496a70:	add    rsp,0x18
  496a74:	ret
