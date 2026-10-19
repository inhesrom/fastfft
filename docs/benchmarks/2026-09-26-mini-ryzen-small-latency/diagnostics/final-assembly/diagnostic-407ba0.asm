
target/small-latency/final-source/executable-1:     file format elf64-x86-64


Disassembly of section .text:

0000000000407ba0 <<fastfft::engine::small::Small<T,V,_,_,_,_,K> as fastfft::api::Fft<T>>::process_immutable_with_scratch>:
  407ba0:	48 89 d0             	mov    %rdx,%rax
  407ba3:	48 83 f0 08          	xor    $0x8,%rax
  407ba7:	4d 89 c1             	mov    %r8,%r9
  407baa:	49 83 f1 08          	xor    $0x8,%r9
  407bae:	49 09 c1             	or     %rax,%r9
  407bb1:	75 0f                	jne    407bc2 <<fastfft::engine::small::Small<T,V,_,_,_,_,K> as fastfft::api::Fft<T>>::process_immutable_with_scratch+0x22>
  407bb3:	48 8b 57 08          	mov    0x8(%rdi),%rdx
  407bb7:	48 89 f7             	mov    %rsi,%rdi
  407bba:	48 89 ce             	mov    %rcx,%rsi
  407bbd:	e9 9e a2 f6 ff       	jmp    371e60 <<fastfft::isa::x86::F32x4 as fastfft::engine::small::SmallVector>::one>
  407bc2:	f6 c2 07             	test   $0x7,%dl
  407bc5:	75 21                	jne    407be8 <<fastfft::engine::small::Small<T,V,_,_,_,_,K> as fastfft::api::Fft<T>>::process_immutable_with_scratch+0x48>
  407bc7:	48 83 fa 08          	cmp    $0x8,%rdx
  407bcb:	72 1b                	jb     407be8 <<fastfft::engine::small::Small<T,V,_,_,_,_,K> as fastfft::api::Fft<T>>::process_immutable_with_scratch+0x48>
  407bcd:	4c 39 c2             	cmp    %r8,%rdx
  407bd0:	75 16                	jne    407be8 <<fastfft::engine::small::Small<T,V,_,_,_,_,K> as fastfft::api::Fft<T>>::process_immutable_with_scratch+0x48>
  407bd2:	48 c1 ea 03          	shr    $0x3,%rdx
  407bd6:	48 8b 47 08          	mov    0x8(%rdi),%rax
  407bda:	48 89 f7             	mov    %rsi,%rdi
  407bdd:	48 89 ce             	mov    %rcx,%rsi
  407be0:	48 89 c1             	mov    %rax,%rcx
  407be3:	e9 88 ab f6 ff       	jmp    372770 <<fastfft::isa::x86::F32x4 as fastfft::engine::small::SmallVector>::run>
  407be8:	50                   	push   %rax
  407be9:	bf 08 00 00 00       	mov    $0x8,%edi
  407bee:	48 89 d6             	mov    %rdx,%rsi
  407bf1:	4c 89 c2             	mov    %r8,%rdx
  407bf4:	31 c9                	xor    %ecx,%ecx
  407bf6:	45 31 c0             	xor    %r8d,%r8d
  407bf9:	e8 72 93 27 00       	call   680f70 <fastfft::fft::fail_outofplace>
  407bfe:	cc                   	int3
  407bff:	cc                   	int3
