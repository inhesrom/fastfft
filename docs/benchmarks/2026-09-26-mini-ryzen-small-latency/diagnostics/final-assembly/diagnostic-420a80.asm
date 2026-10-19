
target/small-latency/final-source/executable-1:     file format elf64-x86-64


Disassembly of section .text:

0000000000420a80 <<fastfft::engine::small::Small<T,V,_,_,_,_,K> as fastfft::api::Fft<T>>::process_immutable_with_scratch>:
  420a80:	48 89 d0             	mov    %rdx,%rax
  420a83:	48 83 f0 10          	xor    $0x10,%rax
  420a87:	4d 89 c1             	mov    %r8,%r9
  420a8a:	49 83 f1 10          	xor    $0x10,%r9
  420a8e:	49 09 c1             	or     %rax,%r9
  420a91:	75 0f                	jne    420aa2 <<fastfft::engine::small::Small<T,V,_,_,_,_,K> as fastfft::api::Fft<T>>::process_immutable_with_scratch+0x22>
  420a93:	48 8b 57 08          	mov    0x8(%rdi),%rdx
  420a97:	48 89 f7             	mov    %rsi,%rdi
  420a9a:	48 89 ce             	mov    %rcx,%rsi
  420a9d:	e9 ae 11 f5 ff       	jmp    371c50 <<fastfft::isa::x86::F32x4 as fastfft::engine::small::SmallVector>::one>
  420aa2:	f6 c2 0f             	test   $0xf,%dl
  420aa5:	75 21                	jne    420ac8 <<fastfft::engine::small::Small<T,V,_,_,_,_,K> as fastfft::api::Fft<T>>::process_immutable_with_scratch+0x48>
  420aa7:	48 83 fa 10          	cmp    $0x10,%rdx
  420aab:	72 1b                	jb     420ac8 <<fastfft::engine::small::Small<T,V,_,_,_,_,K> as fastfft::api::Fft<T>>::process_immutable_with_scratch+0x48>
  420aad:	4c 39 c2             	cmp    %r8,%rdx
  420ab0:	75 16                	jne    420ac8 <<fastfft::engine::small::Small<T,V,_,_,_,_,K> as fastfft::api::Fft<T>>::process_immutable_with_scratch+0x48>
  420ab2:	48 c1 ea 04          	shr    $0x4,%rdx
  420ab6:	48 8b 47 08          	mov    0x8(%rdi),%rax
  420aba:	48 89 f7             	mov    %rsi,%rdi
  420abd:	48 89 ce             	mov    %rcx,%rsi
  420ac0:	48 89 c1             	mov    %rax,%rcx
  420ac3:	e9 38 17 f5 ff       	jmp    372200 <<fastfft::isa::x86::F32x4 as fastfft::engine::small::SmallVector>::run>
  420ac8:	50                   	push   %rax
  420ac9:	bf 10 00 00 00       	mov    $0x10,%edi
  420ace:	48 89 d6             	mov    %rdx,%rsi
  420ad1:	4c 89 c2             	mov    %r8,%rdx
  420ad4:	31 c9                	xor    %ecx,%ecx
  420ad6:	45 31 c0             	xor    %r8d,%r8d
  420ad9:	e8 92 04 26 00       	call   680f70 <fastfft::fft::fail_outofplace>
  420ade:	cc                   	int3
  420adf:	cc                   	int3
