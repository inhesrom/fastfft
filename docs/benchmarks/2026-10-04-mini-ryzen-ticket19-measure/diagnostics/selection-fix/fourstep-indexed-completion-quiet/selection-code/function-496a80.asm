
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000496a80 <fastfft::measure::sample_helper>:
  496a80:	sub    rsp,0x18
  496a84:	lea    rax,[rip+0xa75]        # 497500 <fastfft::measure::Buffers<T>::sample>
  496a8b:	mov    QWORD PTR [rsp+0x8],rax
  496a90:	lea    rax,[rsp+0x8]
  496a95:	call   QWORD PTR [rsp+0x8]
  496a99:	mov    QWORD PTR [rsp+0x8],rax
  496a9e:	mov    DWORD PTR [rsp+0x10],edx
  496aa2:	lea    rax,[rsp+0x8]
  496aa7:	mov    rax,QWORD PTR [rsp+0x8]
  496aac:	mov    edx,DWORD PTR [rsp+0x10]
  496ab0:	add    rsp,0x18
  496ab4:	ret
