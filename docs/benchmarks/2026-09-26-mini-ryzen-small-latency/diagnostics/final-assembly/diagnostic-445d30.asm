
target/small-latency/final-source/executable-1:     file format elf64-x86-64


Disassembly of section .text:

0000000000445d30 <<fastfft::engine::small::Small<T,V,_,_,_,_,K> as fastfft::api::Fft<T>>::process_immutable_with_scratch>:
  445d30:	48 89 d0             	mov    %rdx,%rax
  445d33:	48 83 f0 10          	xor    $0x10,%rax
  445d37:	4d 89 c1             	mov    %r8,%r9
  445d3a:	49 83 f1 10          	xor    $0x10,%r9
  445d3e:	49 09 c1             	or     %rax,%r9
  445d41:	75 0f                	jne    445d52 <<fastfft::engine::small::Small<T,V,_,_,_,_,K> as fastfft::api::Fft<T>>::process_immutable_with_scratch+0x22>
  445d43:	48 8b 57 08          	mov    0x8(%rdi),%rdx
  445d47:	48 89 f7             	mov    %rsi,%rdi
  445d4a:	48 89 ce             	mov    %rcx,%rsi
  445d4d:	e9 2e ba f2 ff       	jmp    371780 <<fastfft::isa::x86::F32x4 as fastfft::engine::small::SmallVector>::one>
  445d52:	f6 c2 0f             	test   $0xf,%dl
  445d55:	75 21                	jne    445d78 <<fastfft::engine::small::Small<T,V,_,_,_,_,K> as fastfft::api::Fft<T>>::process_immutable_with_scratch+0x48>
  445d57:	48 83 fa 10          	cmp    $0x10,%rdx
  445d5b:	72 1b                	jb     445d78 <<fastfft::engine::small::Small<T,V,_,_,_,_,K> as fastfft::api::Fft<T>>::process_immutable_with_scratch+0x48>
  445d5d:	4c 39 c2             	cmp    %r8,%rdx
  445d60:	75 16                	jne    445d78 <<fastfft::engine::small::Small<T,V,_,_,_,_,K> as fastfft::api::Fft<T>>::process_immutable_with_scratch+0x48>
  445d62:	48 c1 ea 04          	shr    $0x4,%rdx
  445d66:	48 8b 47 08          	mov    0x8(%rdi),%rax
  445d6a:	48 89 f7             	mov    %rsi,%rdi
  445d6d:	48 89 ce             	mov    %rcx,%rsi
  445d70:	48 89 c1             	mov    %rax,%rcx
  445d73:	e9 c8 c6 f2 ff       	jmp    372440 <<fastfft::isa::x86::F32x4 as fastfft::engine::small::SmallVector>::run>
  445d78:	50                   	push   %rax
  445d79:	bf 10 00 00 00       	mov    $0x10,%edi
  445d7e:	48 89 d6             	mov    %rdx,%rsi
  445d81:	4c 89 c2             	mov    %r8,%rdx
  445d84:	31 c9                	xor    %ecx,%ecx
  445d86:	45 31 c0             	xor    %r8d,%r8d
  445d89:	e8 e2 b1 23 00       	call   680f70 <fastfft::fft::fail_outofplace>
  445d8e:	cc                   	int3
  445d8f:	cc                   	int3
