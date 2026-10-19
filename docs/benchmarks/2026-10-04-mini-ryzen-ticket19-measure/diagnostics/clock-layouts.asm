
target/ticket19/layouts/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000002daf80 <_ZN13fastfft_arena4cell17measure_clock_ghz17h61ab4ec111f35923E>:
  2daf80:	55                   	push   %rbp
  2daf81:	41 57                	push   %r15
  2daf83:	41 56                	push   %r14
  2daf85:	41 55                	push   %r13
  2daf87:	41 54                	push   %r12
  2daf89:	53                   	push   %rbx
  2daf8a:	48 83 ec 58          	sub    $0x58,%rsp
  2daf8e:	bf 01 00 00 00       	mov    $0x1,%edi
  2daf93:	e8 68 30 dc 00       	call   109e000 <_RNvMNtNtNtNtCsjrHSEGnQ3l9_3std3sys3pal4unix4timeNtB2_8Timespec3now>
  2daf98:	48 89 c3             	mov    %rax,%rbx
  2daf9b:	89 d5                	mov    %edx,%ebp
  2daf9d:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
  2dafa4:	00 00 
  2dafa6:	48 8d 44 24 08       	lea    0x8(%rsp),%rax
  2dafab:	b9 80 96 98 00       	mov    $0x989680,%ecx
  2dafb0:	48 83 44 24 08 04    	addq   $0x4,0x8(%rsp)
  2dafb6:	48 ff c9             	dec    %rcx
  2dafb9:	75 f5                	jne    2dafb0 <_ZN13fastfft_arena4cell17measure_clock_ghz17h61ab4ec111f35923E+0x30>
  2dafbb:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  2dafc0:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  2dafc5:	48 8d 44 24 10       	lea    0x10(%rsp),%rax
  2dafca:	bf 01 00 00 00       	mov    $0x1,%edi
  2dafcf:	e8 2c 30 dc 00       	call   109e000 <_RNvMNtNtNtNtCsjrHSEGnQ3l9_3std3sys3pal4unix4timeNtB2_8Timespec3now>
  2dafd4:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  2dafd9:	89 54 24 30          	mov    %edx,0x30(%rsp)
  2dafdd:	48 89 5c 24 38       	mov    %rbx,0x38(%rsp)
  2dafe2:	89 6c 24 40          	mov    %ebp,0x40(%rsp)
  2dafe6:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
  2dafeb:	48 8d 74 24 28       	lea    0x28(%rsp),%rsi
  2daff0:	48 8d 54 24 38       	lea    0x38(%rsp),%rdx
  2daff5:	e8 06 2f dc 00       	call   109df00 <_RNvMNtNtNtNtCsjrHSEGnQ3l9_3std3sys3pal4unix4timeNtB2_8Timespec12sub_timespec>
  2daffa:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
  2dafff:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
  2db004:	48 89 44 24 48       	mov    %rax,0x48(%rsp)
  2db009:	8b 44 24 20          	mov    0x20(%rsp),%eax
  2db00d:	89 44 24 54          	mov    %eax,0x54(%rsp)
  2db011:	bf 01 00 00 00       	mov    $0x1,%edi
  2db016:	e8 e5 2f dc 00       	call   109e000 <_RNvMNtNtNtNtCsjrHSEGnQ3l9_3std3sys3pal4unix4timeNtB2_8Timespec3now>
  2db01b:	48 89 c3             	mov    %rax,%rbx
  2db01e:	89 d5                	mov    %edx,%ebp
  2db020:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
  2db027:	00 00 
  2db029:	48 8d 44 24 08       	lea    0x8(%rsp),%rax
  2db02e:	b9 80 96 98 00       	mov    $0x989680,%ecx
  2db033:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
  2db03a:	84 00 00 00 00 00 
  2db040:	48 83 44 24 08 04    	addq   $0x4,0x8(%rsp)
  2db046:	48 ff c9             	dec    %rcx
  2db049:	75 f5                	jne    2db040 <_ZN13fastfft_arena4cell17measure_clock_ghz17h61ab4ec111f35923E+0xc0>
  2db04b:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  2db050:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  2db055:	48 8d 44 24 10       	lea    0x10(%rsp),%rax
  2db05a:	bf 01 00 00 00       	mov    $0x1,%edi
  2db05f:	e8 9c 2f dc 00       	call   109e000 <_RNvMNtNtNtNtCsjrHSEGnQ3l9_3std3sys3pal4unix4timeNtB2_8Timespec3now>
  2db064:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  2db069:	89 54 24 30          	mov    %edx,0x30(%rsp)
  2db06d:	48 89 5c 24 38       	mov    %rbx,0x38(%rsp)
  2db072:	89 6c 24 40          	mov    %ebp,0x40(%rsp)
  2db076:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
  2db07b:	48 8d 74 24 28       	lea    0x28(%rsp),%rsi
  2db080:	48 8d 54 24 38       	lea    0x38(%rsp),%rdx
  2db085:	e8 76 2e dc 00       	call   109df00 <_RNvMNtNtNtNtCsjrHSEGnQ3l9_3std3sys3pal4unix4timeNtB2_8Timespec12sub_timespec>
  2db08a:	4c 8b 7c 24 10       	mov    0x10(%rsp),%r15
  2db08f:	4c 8b 74 24 18       	mov    0x18(%rsp),%r14
  2db094:	44 8b 6c 24 20       	mov    0x20(%rsp),%r13d
  2db099:	bf 01 00 00 00       	mov    $0x1,%edi
  2db09e:	e8 5d 2f dc 00       	call   109e000 <_RNvMNtNtNtNtCsjrHSEGnQ3l9_3std3sys3pal4unix4timeNtB2_8Timespec3now>
  2db0a3:	48 89 c3             	mov    %rax,%rbx
  2db0a6:	89 d5                	mov    %edx,%ebp
  2db0a8:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
  2db0af:	00 00 
  2db0b1:	48 8d 44 24 08       	lea    0x8(%rsp),%rax
  2db0b6:	b9 80 96 98 00       	mov    $0x989680,%ecx
  2db0bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  2db0c0:	48 83 44 24 08 04    	addq   $0x4,0x8(%rsp)
  2db0c6:	48 ff c9             	dec    %rcx
  2db0c9:	75 f5                	jne    2db0c0 <_ZN13fastfft_arena4cell17measure_clock_ghz17h61ab4ec111f35923E+0x140>
  2db0cb:	f2 0f 10 1d 35 90 d9 	movsd  -0x266fcb(%rip),%xmm3        # 74108 <_ZN10serde_json3ser9Formatter17write_char_escape10HEX_DIGITS17hfe29ead3588ab574E+0x17f8>
  2db0d2:	ff 
  2db0d3:	f2 0f 10 35 d5 ef d8 	movsd  -0x27102b(%rip),%xmm6        # 6a0b0 <__abi_tag+0x69db4>
  2db0da:	ff 
  2db0db:	66 0f 28 2d 1d d4 d8 	movapd -0x272be3(%rip),%xmm5        # 68500 <__abi_tag+0x68204>
  2db0e2:	ff 
  2db0e3:	f2 0f 10 25 45 94 d9 	movsd  -0x266bbb(%rip),%xmm4        # 74530 <_ZN10serde_json3ser9Formatter17write_char_escape10HEX_DIGITS17hfe29ead3588ab574E+0x1c20>
  2db0ea:	ff 
  2db0eb:	f2 0f 10 3d 2d 93 d9 	movsd  -0x266cd3(%rip),%xmm7        # 74420 <_ZN10serde_json3ser9Formatter17write_char_escape10HEX_DIGITS17hfe29ead3588ab574E+0x1b10>
  2db0f2:	ff 
  2db0f3:	66 0f 28 c7          	movapd %xmm7,%xmm0
  2db0f7:	4d 85 e4             	test   %r12,%r12
  2db0fa:	75 3e                	jne    2db13a <_ZN13fastfft_arena4cell17measure_clock_ghz17h61ab4ec111f35923E+0x1ba>
  2db0fc:	0f 57 c0             	xorps  %xmm0,%xmm0
  2db0ff:	f2 0f 2a 44 24 54    	cvtsi2sdl 0x54(%rsp),%xmm0
  2db105:	f2 0f 5e c3          	divsd  %xmm3,%xmm0
  2db109:	f2 0f 10 4c 24 48    	movsd  0x48(%rsp),%xmm1
  2db10f:	0f 14 ce             	unpcklps %xmm6,%xmm1
  2db112:	66 0f 5c cd          	subpd  %xmm5,%xmm1
  2db116:	66 0f 28 d1          	movapd %xmm1,%xmm2
  2db11a:	66 0f 15 d1          	unpckhpd %xmm1,%xmm2
  2db11e:	f2 0f 58 d1          	addsd  %xmm1,%xmm2
  2db122:	f2 0f 58 d0          	addsd  %xmm0,%xmm2
  2db126:	66 0f 28 c4          	movapd %xmm4,%xmm0
  2db12a:	f2 0f 5e c2          	divsd  %xmm2,%xmm0
  2db12e:	f2 0f 5e c3          	divsd  %xmm3,%xmm0
  2db132:	66 0f 57 c9          	xorpd  %xmm1,%xmm1
  2db136:	f2 0f 5f c1          	maxsd  %xmm1,%xmm0
  2db13a:	4d 85 ff             	test   %r15,%r15
  2db13d:	75 35                	jne    2db174 <_ZN13fastfft_arena4cell17measure_clock_ghz17h61ab4ec111f35923E+0x1f4>
  2db13f:	66 49 0f 6e ce       	movq   %r14,%xmm1
  2db144:	66 0f 62 ce          	punpckldq %xmm6,%xmm1
  2db148:	66 0f 5c cd          	subpd  %xmm5,%xmm1
  2db14c:	66 0f 28 d1          	movapd %xmm1,%xmm2
  2db150:	66 0f 15 d1          	unpckhpd %xmm1,%xmm2
  2db154:	f2 0f 58 d1          	addsd  %xmm1,%xmm2
  2db158:	0f 57 c9             	xorps  %xmm1,%xmm1
  2db15b:	f2 41 0f 2a cd       	cvtsi2sd %r13d,%xmm1
  2db160:	f2 0f 5e cb          	divsd  %xmm3,%xmm1
  2db164:	f2 0f 58 ca          	addsd  %xmm2,%xmm1
  2db168:	66 0f 28 fc          	movapd %xmm4,%xmm7
  2db16c:	f2 0f 5e f9          	divsd  %xmm1,%xmm7
  2db170:	f2 0f 5e fb          	divsd  %xmm3,%xmm7
  2db174:	f2 0f 5f f8          	maxsd  %xmm0,%xmm7
  2db178:	f2 0f 11 7c 24 48    	movsd  %xmm7,0x48(%rsp)
  2db17e:	48                   	rex.W
  2db17f:	8b                   	.byte 0x8b
