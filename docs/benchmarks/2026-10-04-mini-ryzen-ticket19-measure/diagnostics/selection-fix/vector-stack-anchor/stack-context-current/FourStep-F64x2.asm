
target/ticket19/selection-fix/vector-stack-anchor/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000e12ac0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute>:
  e12ac0:	55                   	push   rbp
  e12ac1:	48 89 e5             	mov    rbp,rsp
  e12ac4:	41 57                	push   r15
  e12ac6:	41 56                	push   r14
  e12ac8:	41 55                	push   r13
  e12aca:	41 54                	push   r12
  e12acc:	53                   	push   rbx
  e12acd:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  e12ad1:	48 81 ec 40 03 00 00 	sub    rsp,0x340
  e12ad8:	48 89 8c 24 c0 00 00 	mov    QWORD PTR [rsp+0xc0],rcx
  e12adf:	00 
  e12ae0:	48 89 94 24 e8 00 00 	mov    QWORD PTR [rsp+0xe8],rdx
  e12ae7:	00 
  e12ae8:	48 89 b4 24 80 01 00 	mov    QWORD PTR [rsp+0x180],rsi
  e12aef:	00 
  e12af0:	48 8d 84 24 c0 02 00 	lea    rax,[rsp+0x2c0]
  e12af7:	00 
  e12af8:	45 85 c0             	test   r8d,r8d
  e12afb:	0f 84 00 01 00 00    	je     e12c01 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x141>
  e12b01:	c6 84 24 c0 02 00 00 	mov    BYTE PTR [rsp+0x2c0],0x0
  e12b08:	00 
  e12b09:	48 89 84 24 90 01 00 	mov    QWORD PTR [rsp+0x190],rax
  e12b10:	00 
  e12b11:	48 8d 84 24 90 01 00 	lea    rax,[rsp+0x190]
  e12b18:	00 
  e12b19:	4c 8b 87 88 00 00 00 	mov    r8,QWORD PTR [rdi+0x88]
  e12b20:	49 83 f8 01          	cmp    r8,0x1
  e12b24:	0f 86 d7 01 00 00    	jbe    e12d01 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x241>
  e12b2a:	48 8b 4f 58          	mov    rcx,QWORD PTR [rdi+0x58]
  e12b2e:	48 8b 47 10          	mov    rax,QWORD PTR [rdi+0x10]
  e12b32:	4c 8b 7f 20          	mov    r15,QWORD PTR [rdi+0x20]
  e12b36:	48 8b 5f 60          	mov    rbx,QWORD PTR [rdi+0x60]
  e12b3a:	4c 8b 77 28          	mov    r14,QWORD PTR [rdi+0x28]
  e12b3e:	48 8b 57 30          	mov    rdx,QWORD PTR [rdi+0x30]
  e12b42:	48 01 c2             	add    rdx,rax
  e12b45:	48 89 94 24 d8 00 00 	mov    QWORD PTR [rsp+0xd8],rdx
  e12b4c:	00 
  e12b4d:	48 8b 57 40          	mov    rdx,QWORD PTR [rdi+0x40]
  e12b51:	48 89 44 24 60       	mov    QWORD PTR [rsp+0x60],rax
  e12b56:	48 01 c2             	add    rdx,rax
  e12b59:	48 89 94 24 d0 00 00 	mov    QWORD PTR [rsp+0xd0],rdx
  e12b60:	00 
  e12b61:	48 8b 57 78          	mov    rdx,QWORD PTR [rdi+0x78]
  e12b65:	4c 8b 8f 80 00 00 00 	mov    r9,QWORD PTR [rdi+0x80]
  e12b6c:	f2 0f 10 05 5c 1d 26 	movsd  xmm0,QWORD PTR [rip+0xffffffffff261d5c]        # 748d0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1d80>
  e12b73:	ff 
  e12b74:	0f 29 44 24 70       	movaps XMMWORD PTR [rsp+0x70],xmm0
  e12b79:	4b 8d 34 00          	lea    rsi,[r8+r8*1]
  e12b7d:	f6 84 24 e8 00 00 00 	test   BYTE PTR [rsp+0xe8],0x3f
  e12b84:	3f 
  e12b85:	0f 94 84 24 08 01 00 	sete   BYTE PTR [rsp+0x108]
  e12b8c:	00 
  e12b8d:	48 85 f6             	test   rsi,rsi
  e12b90:	0f 84 94 5b 00 00    	je     e1872a <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5c6a>
  e12b96:	48 c1 e2 04          	shl    rdx,0x4
  e12b9a:	48 8b 84 24 c0 00 00 	mov    rax,QWORD PTR [rsp+0xc0]
  e12ba1:	00 
  e12ba2:	48 89 94 24 88 01 00 	mov    QWORD PTR [rsp+0x188],rdx
  e12ba9:	00 
  e12baa:	48 01 d0             	add    rax,rdx
  e12bad:	48 89 84 24 18 01 00 	mov    QWORD PTR [rsp+0x118],rax
  e12bb4:	00 
  e12bb5:	4c 89 8c 24 b8 02 00 	mov    QWORD PTR [rsp+0x2b8],r9
  e12bbc:	00 
  e12bbd:	4c 89 c8             	mov    rax,r9
  e12bc0:	48 c1 e0 04          	shl    rax,0x4
  e12bc4:	48 01 c0             	add    rax,rax
  e12bc7:	48 89 44 24 58       	mov    QWORD PTR [rsp+0x58],rax
  e12bcc:	48 89 bc 24 58 01 00 	mov    QWORD PTR [rsp+0x158],rdi
  e12bd3:	00 
  e12bd4:	44 0f b6 a7 99 00 00 	movzx  r12d,BYTE PTR [rdi+0x99]
  e12bdb:	00 
  e12bdc:	48 89 d8             	mov    rax,rbx
  e12bdf:	48 09 f0             	or     rax,rsi
  e12be2:	48 c1 e8 20          	shr    rax,0x20
  e12be6:	48 89 b4 24 f0 00 00 	mov    QWORD PTR [rsp+0xf0],rsi
  e12bed:	00 
  e12bee:	0f 84 7d 40 00 00    	je     e16c71 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x41b1>
  e12bf4:	48 89 d8             	mov    rax,rbx
  e12bf7:	31 d2                	xor    edx,edx
  e12bf9:	48 f7 f6             	div    rsi
  e12bfc:	e9 76 40 00 00       	jmp    e16c77 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x41b7>
  e12c01:	c6 84 24 c0 02 00 00 	mov    BYTE PTR [rsp+0x2c0],0x0
  e12c08:	00 
  e12c09:	48 89 84 24 90 01 00 	mov    QWORD PTR [rsp+0x190],rax
  e12c10:	00 
  e12c11:	48 8d 84 24 90 01 00 	lea    rax,[rsp+0x190]
  e12c18:	00 
  e12c19:	4c 8b 87 88 00 00 00 	mov    r8,QWORD PTR [rdi+0x88]
  e12c20:	49 83 f8 01          	cmp    r8,0x1
  e12c24:	0f 86 4b 10 00 00    	jbe    e13c75 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x11b5>
  e12c2a:	48 8b 4f 58          	mov    rcx,QWORD PTR [rdi+0x58]
  e12c2e:	48 8b 47 10          	mov    rax,QWORD PTR [rdi+0x10]
  e12c32:	4c 8b 7f 20          	mov    r15,QWORD PTR [rdi+0x20]
  e12c36:	48 8b 5f 60          	mov    rbx,QWORD PTR [rdi+0x60]
  e12c3a:	4c 8b 77 28          	mov    r14,QWORD PTR [rdi+0x28]
  e12c3e:	48 8b 57 30          	mov    rdx,QWORD PTR [rdi+0x30]
  e12c42:	48 01 c2             	add    rdx,rax
  e12c45:	48 89 94 24 d8 00 00 	mov    QWORD PTR [rsp+0xd8],rdx
  e12c4c:	00 
  e12c4d:	48 8b 57 40          	mov    rdx,QWORD PTR [rdi+0x40]
  e12c51:	48 89 44 24 60       	mov    QWORD PTR [rsp+0x60],rax
  e12c56:	48 01 c2             	add    rdx,rax
  e12c59:	48 89 94 24 d0 00 00 	mov    QWORD PTR [rsp+0xd0],rdx
  e12c60:	00 
  e12c61:	48 8b 57 78          	mov    rdx,QWORD PTR [rdi+0x78]
  e12c65:	4c 8b 8f 80 00 00 00 	mov    r9,QWORD PTR [rdi+0x80]
  e12c6c:	f2 0f 10 05 5c 1c 26 	movsd  xmm0,QWORD PTR [rip+0xffffffffff261c5c]        # 748d0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1d80>
  e12c73:	ff 
  e12c74:	0f 29 44 24 70       	movaps XMMWORD PTR [rsp+0x70],xmm0
  e12c79:	4b 8d 34 00          	lea    rsi,[r8+r8*1]
  e12c7d:	f6 84 24 e8 00 00 00 	test   BYTE PTR [rsp+0xe8],0x3f
  e12c84:	3f 
  e12c85:	0f 94 84 24 08 01 00 	sete   BYTE PTR [rsp+0x108]
  e12c8c:	00 
  e12c8d:	48 85 f6             	test   rsi,rsi
  e12c90:	0f 84 94 5a 00 00    	je     e1872a <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5c6a>
  e12c96:	48 c1 e2 04          	shl    rdx,0x4
  e12c9a:	48 8b 84 24 c0 00 00 	mov    rax,QWORD PTR [rsp+0xc0]
  e12ca1:	00 
  e12ca2:	48 89 94 24 88 01 00 	mov    QWORD PTR [rsp+0x188],rdx
  e12ca9:	00 
  e12caa:	48 01 d0             	add    rax,rdx
  e12cad:	48 89 84 24 18 01 00 	mov    QWORD PTR [rsp+0x118],rax
  e12cb4:	00 
  e12cb5:	4c 89 8c 24 b8 02 00 	mov    QWORD PTR [rsp+0x2b8],r9
  e12cbc:	00 
  e12cbd:	4c 89 c8             	mov    rax,r9
  e12cc0:	48 c1 e0 04          	shl    rax,0x4
  e12cc4:	48 01 c0             	add    rax,rax
  e12cc7:	48 89 44 24 58       	mov    QWORD PTR [rsp+0x58],rax
  e12ccc:	48 89 bc 24 58 01 00 	mov    QWORD PTR [rsp+0x158],rdi
  e12cd3:	00 
  e12cd4:	44 0f b6 a7 99 00 00 	movzx  r12d,BYTE PTR [rdi+0x99]
  e12cdb:	00 
  e12cdc:	48 89 d8             	mov    rax,rbx
  e12cdf:	48 09 f0             	or     rax,rsi
  e12ce2:	48 c1 e8 20          	shr    rax,0x20
  e12ce6:	48 89 b4 24 f0 00 00 	mov    QWORD PTR [rsp+0xf0],rsi
  e12ced:	00 
  e12cee:	0f 84 70 46 00 00    	je     e17364 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x48a4>
  e12cf4:	48 89 d8             	mov    rax,rbx
  e12cf7:	31 d2                	xor    edx,edx
  e12cf9:	48 f7 f6             	div    rsi
  e12cfc:	e9 69 46 00 00       	jmp    e1736a <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x48aa>
  e12d01:	4c 8b 67 58          	mov    r12,QWORD PTR [rdi+0x58]
  e12d05:	48 8b 4f 10          	mov    rcx,QWORD PTR [rdi+0x10]
  e12d09:	4c 8b 77 20          	mov    r14,QWORD PTR [rdi+0x20]
  e12d0d:	48 8b 77 60          	mov    rsi,QWORD PTR [rdi+0x60]
  e12d11:	48 8b 47 28          	mov    rax,QWORD PTR [rdi+0x28]
  e12d15:	48 89 84 24 88 00 00 	mov    QWORD PTR [rsp+0x88],rax
  e12d1c:	00 
  e12d1d:	48 8b 47 30          	mov    rax,QWORD PTR [rdi+0x30]
  e12d21:	48 8b 57 40          	mov    rdx,QWORD PTR [rdi+0x40]
  e12d25:	48 89 4c 24 50       	mov    QWORD PTR [rsp+0x50],rcx
  e12d2a:	48 01 ca             	add    rdx,rcx
  e12d2d:	48 89 94 24 08 01 00 	mov    QWORD PTR [rsp+0x108],rdx
  e12d34:	00 
  e12d35:	48 8b 5f 78          	mov    rbx,QWORD PTR [rdi+0x78]
  e12d39:	48 c1 e3 04          	shl    rbx,0x4
  e12d3d:	48 03 9c 24 c0 00 00 	add    rbx,QWORD PTR [rsp+0xc0]
  e12d44:	00 
  e12d45:	48 8b 8f 80 00 00 00 	mov    rcx,QWORD PTR [rdi+0x80]
  e12d4c:	48 c1 e1 04          	shl    rcx,0x4
  e12d50:	48 01 d9             	add    rcx,rbx
  e12d53:	48 89 8c 24 98 00 00 	mov    QWORD PTR [rsp+0x98],rcx
  e12d5a:	00 
  e12d5b:	f2 0f 10 05 6d 1b 26 	movsd  xmm0,QWORD PTR [rip+0xffffffffff261b6d]        # 748d0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1d80>
  e12d62:	ff 
  e12d63:	0f 16 c0             	movlhps xmm0,xmm0
  e12d66:	0f 29 44 24 30       	movaps XMMWORD PTR [rsp+0x30],xmm0
  e12d6b:	0f b6 8f 98 00 00 00 	movzx  ecx,BYTE PTR [rdi+0x98]
  e12d72:	0f b6 97 99 00 00 00 	movzx  edx,BYTE PTR [rdi+0x99]
  e12d79:	88 8c 24 00 01 00 00 	mov    BYTE PTR [rsp+0x100],cl
  e12d80:	20 ca                	and    dl,cl
  e12d82:	88 94 24 e0 00 00 00 	mov    BYTE PTR [rsp+0xe0],dl
  e12d89:	48 89 f1             	mov    rcx,rsi
  e12d8c:	48 d1 e9             	shr    rcx,1
  e12d8f:	48 89 74 24 20       	mov    QWORD PTR [rsp+0x20],rsi
  e12d94:	48 29 ce             	sub    rsi,rcx
  e12d97:	4c 89 64 24 28       	mov    QWORD PTR [rsp+0x28],r12
  e12d9c:	48 89 5c 24 68       	mov    QWORD PTR [rsp+0x68],rbx
  e12da1:	0f 84 5c 1e 00 00    	je     e14c03 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2143>
  e12da7:	48 8b 4c 24 50       	mov    rcx,QWORD PTR [rsp+0x50]
  e12dac:	48 8d 14 01          	lea    rdx,[rcx+rax*1]
  e12db0:	48 89 94 24 58 01 00 	mov    QWORD PTR [rsp+0x158],rdx
  e12db7:	00 
  e12db8:	4c 89 e2             	mov    rdx,r12
  e12dbb:	48 d1 ea             	shr    rdx,1
  e12dbe:	4d 89 e0             	mov    r8,r12
  e12dc1:	49 29 d0             	sub    r8,rdx
  e12dc4:	4c 89 84 24 d8 00 00 	mov    QWORD PTR [rsp+0xd8],r8
  e12dcb:	00 
  e12dcc:	48 8b 7f 70          	mov    rdi,QWORD PTR [rdi+0x70]
  e12dd0:	f3 4c 0f bc c7       	tzcnt  r8,rdi
  e12dd5:	4c 89 84 24 a8 00 00 	mov    QWORD PTR [rsp+0xa8],r8
  e12ddc:	00 
  e12ddd:	49 b8 ff ff ff ff ff 	movabs r8,0x7ffffffffffffff
  e12de4:	ff ff 07 
  e12de7:	48 89 bc 24 68 01 00 	mov    QWORD PTR [rsp+0x168],rdi
  e12dee:	00 
  e12def:	49 01 f8             	add    r8,rdi
  e12df2:	4c 89 84 24 a0 00 00 	mov    QWORD PTR [rsp+0xa0],r8
  e12df9:	00 
  e12dfa:	48 8d 79 20          	lea    rdi,[rcx+0x20]
  e12dfe:	48 89 bc 24 f0 00 00 	mov    QWORD PTR [rsp+0xf0],rdi
  e12e05:	00 
  e12e06:	49 8d 7e ff          	lea    rdi,[r14-0x1]
  e12e0a:	48 89 bc 24 60 01 00 	mov    QWORD PTR [rsp+0x160],rdi
  e12e11:	00 
  e12e12:	48 01 c8             	add    rax,rcx
  e12e15:	48 83 c0 10          	add    rax,0x10
  e12e19:	48 89 84 24 d0 00 00 	mov    QWORD PTR [rsp+0xd0],rax
  e12e20:	00 
  e12e21:	4c 89 e0             	mov    rax,r12
  e12e24:	48 c1 e0 05          	shl    rax,0x5
  e12e28:	48 89 84 24 70 01 00 	mov    QWORD PTR [rsp+0x170],rax
  e12e2f:	00 
  e12e30:	4c 89 e0             	mov    rax,r12
  e12e33:	48 c1 e0 04          	shl    rax,0x4
  e12e37:	48 89 84 24 90 00 00 	mov    QWORD PTR [rsp+0x90],rax
  e12e3e:	00 
  e12e3f:	4c 29 e2             	sub    rdx,r12
  e12e42:	48 89 94 24 88 01 00 	mov    QWORD PTR [rsp+0x188],rdx
  e12e49:	00 
  e12e4a:	48 8b 4c 24 20       	mov    rcx,QWORD PTR [rsp+0x20]
  e12e4f:	48 89 c8             	mov    rax,rcx
  e12e52:	48 c1 e0 05          	shl    rax,0x5
  e12e56:	48 89 84 24 28 01 00 	mov    QWORD PTR [rsp+0x128],rax
  e12e5d:	00 
  e12e5e:	48 8b 84 24 c0 00 00 	mov    rax,QWORD PTR [rsp+0xc0]
  e12e65:	00 
  e12e66:	48 8d 50 20          	lea    rdx,[rax+0x20]
  e12e6a:	48 89 94 24 f8 00 00 	mov    QWORD PTR [rsp+0xf8],rdx
  e12e71:	00 
  e12e72:	45 31 db             	xor    r11d,r11d
  e12e75:	48 89 84 24 c8 00 00 	mov    QWORD PTR [rsp+0xc8],rax
  e12e7c:	00 
  e12e7d:	4c 89 b4 24 78 01 00 	mov    QWORD PTR [rsp+0x178],r14
  e12e84:	00 
  e12e85:	eb 57                	jmp    e12ede <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x41e>
  e12e87:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  e12e8e:	00 00 
  e12e90:	49 83 c3 02          	add    r11,0x2
  e12e94:	48 8b b4 24 18 01 00 	mov    rsi,QWORD PTR [rsp+0x118]
  e12e9b:	00 
  e12e9c:	48 ff ce             	dec    rsi
  e12e9f:	48 8b 84 24 70 01 00 	mov    rax,QWORD PTR [rsp+0x170]
  e12ea6:	00 
  e12ea7:	48 01 84 24 d0 00 00 	add    QWORD PTR [rsp+0xd0],rax
  e12eae:	00 
  e12eaf:	48 01 84 24 c8 00 00 	add    QWORD PTR [rsp+0xc8],rax
  e12eb6:	00 
  e12eb7:	48 83 84 24 f8 00 00 	add    QWORD PTR [rsp+0xf8],0x40
  e12ebe:	00 40 
  e12ec0:	48 85 f6             	test   rsi,rsi
  e12ec3:	48 8b 5c 24 68       	mov    rbx,QWORD PTR [rsp+0x68]
  e12ec8:	4c 8b b4 24 78 01 00 	mov    r14,QWORD PTR [rsp+0x178]
  e12ecf:	00 
  e12ed0:	48 8b 8c 24 10 01 00 	mov    rcx,QWORD PTR [rsp+0x110]
  e12ed7:	00 
  e12ed8:	0f 84 25 1d 00 00    	je     e14c03 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2143>
  e12ede:	48 83 e9 02          	sub    rcx,0x2
  e12ee2:	b8 02 00 00 00       	mov    eax,0x2
  e12ee7:	48 83 d8 00          	sbb    rax,0x0
  e12eeb:	48 89 84 24 20 01 00 	mov    QWORD PTR [rsp+0x120],rax
  e12ef2:	00 
  e12ef3:	48 8b 44 24 20       	mov    rax,QWORD PTR [rsp+0x20]
  e12ef8:	4c 29 d8             	sub    rax,r11
  e12efb:	48 83 f8 02          	cmp    rax,0x2
  e12eff:	41 b8 02 00 00 00    	mov    r8d,0x2
  e12f05:	4c 0f 42 c0          	cmovb  r8,rax
  e12f09:	4c 89 df             	mov    rdi,r11
  e12f0c:	48 c1 e7 04          	shl    rdi,0x4
  e12f10:	48 03 bc 24 80 01 00 	add    rdi,QWORD PTR [rsp+0x180]
  e12f17:	00 
  e12f18:	48 83 f8 01          	cmp    rax,0x1
  e12f1c:	48 89 b4 24 18 01 00 	mov    QWORD PTR [rsp+0x118],rsi
  e12f23:	00 
  e12f24:	4c 89 5c 24 58       	mov    QWORD PTR [rsp+0x58],r11
  e12f29:	48 89 8c 24 10 01 00 	mov    QWORD PTR [rsp+0x110],rcx
  e12f30:	00 
  e12f31:	76 5d                	jbe    e12f90 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4d0>
  e12f33:	4d 85 f6             	test   r14,r14
  e12f36:	0f 84 12 58 00 00    	je     e1874e <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5c8e>
  e12f3c:	48 8b 44 24 50       	mov    rax,QWORD PTR [rsp+0x50]
  e12f41:	48 8b 00             	mov    rax,QWORD PTR [rax]
  e12f44:	48 83 c0 fe          	add    rax,0xfffffffffffffffe
  e12f48:	48 83 f8 0d          	cmp    rax,0xd
  e12f4c:	0f 87 c0 57 00 00    	ja     e18712 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5c52>
  e12f52:	48 8d 0d eb 0d 29 ff 	lea    rcx,[rip+0xffffffffff290deb]        # a3d44 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x311f4>
  e12f59:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  e12f5d:	48 01 c8             	add    rax,rcx
  e12f60:	ff e0                	jmp    rax
  e12f62:	48 89 de             	mov    rsi,rbx
  e12f65:	4c 89 e2             	mov    rdx,r12
  e12f68:	48 8b 4c 24 20       	mov    rcx,QWORD PTR [rsp+0x20]
  e12f6d:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e12f72:	e8 c9 7e fd ff       	call   deae40 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e12f77:	49 83 fe 02          	cmp    r14,0x2
  e12f7b:	0f 83 bf 03 00 00    	jae    e13340 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x880>
  e12f81:	e9 1a 08 00 00       	jmp    e137a0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xce0>
  e12f86:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  e12f8d:	00 00 00 
  e12f90:	4d 85 f6             	test   r14,r14
  e12f93:	0f 84 b5 57 00 00    	je     e1874e <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5c8e>
  e12f99:	48 8b 44 24 50       	mov    rax,QWORD PTR [rsp+0x50]
  e12f9e:	48 8b 00             	mov    rax,QWORD PTR [rax]
  e12fa1:	48 83 c0 fe          	add    rax,0xfffffffffffffffe
  e12fa5:	48 83 f8 0d          	cmp    rax,0xd
  e12fa9:	0f 87 63 57 00 00    	ja     e18712 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5c52>
  e12faf:	48 8d 0d 1a 0d 29 ff 	lea    rcx,[rip+0xffffffffff290d1a]        # a3cd0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x31180>
  e12fb6:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  e12fba:	48 01 c8             	add    rax,rcx
  e12fbd:	ff e0                	jmp    rax
  e12fbf:	48 89 de             	mov    rsi,rbx
  e12fc2:	4c 89 e2             	mov    rdx,r12
  e12fc5:	48 8b 4c 24 20       	mov    rcx,QWORD PTR [rsp+0x20]
  e12fca:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e12fcf:	e8 2c 5e fe ff       	call   df8e00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e12fd4:	49 83 fe 02          	cmp    r14,0x2
  e12fd8:	0f 83 a2 05 00 00    	jae    e13580 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xac0>
  e12fde:	e9 bd 07 00 00       	jmp    e137a0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xce0>
  e12fe3:	48 89 de             	mov    rsi,rbx
  e12fe6:	4c 89 e2             	mov    rdx,r12
  e12fe9:	48 8b 4c 24 20       	mov    rcx,QWORD PTR [rsp+0x20]
  e12fee:	e8 8d 7c fe ff       	call   dfac80 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e12ff3:	49 83 fe 02          	cmp    r14,0x2
  e12ff7:	0f 83 43 03 00 00    	jae    e13340 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x880>
  e12ffd:	e9 9e 07 00 00       	jmp    e137a0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xce0>
  e13002:	48 89 de             	mov    rsi,rbx
  e13005:	4c 89 e2             	mov    rdx,r12
  e13008:	48 8b 4c 24 20       	mov    rcx,QWORD PTR [rsp+0x20]
  e1300d:	e8 ae 8e fd ff       	call   debec0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e13012:	49 83 fe 02          	cmp    r14,0x2
  e13016:	0f 83 64 05 00 00    	jae    e13580 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xac0>
  e1301c:	e9 7f 07 00 00       	jmp    e137a0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xce0>
  e13021:	48 89 de             	mov    rsi,rbx
  e13024:	4c 89 e2             	mov    rdx,r12
  e13027:	48 8b 4c 24 20       	mov    rcx,QWORD PTR [rsp+0x20]
  e1302c:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e13031:	e8 8a 11 fe ff       	call   df41c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e13036:	49 83 fe 02          	cmp    r14,0x2
  e1303a:	0f 83 00 03 00 00    	jae    e13340 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x880>
  e13040:	e9 5b 07 00 00       	jmp    e137a0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xce0>
  e13045:	48 89 de             	mov    rsi,rbx
  e13048:	4c 89 e2             	mov    rdx,r12
  e1304b:	48 8b 4c 24 20       	mov    rcx,QWORD PTR [rsp+0x20]
  e13050:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e13055:	e8 26 3c fe ff       	call   df6c80 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e1305a:	49 83 fe 02          	cmp    r14,0x2
  e1305e:	0f 83 1c 05 00 00    	jae    e13580 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xac0>
  e13064:	e9 37 07 00 00       	jmp    e137a0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xce0>
  e13069:	48 89 de             	mov    rsi,rbx
  e1306c:	4c 89 e2             	mov    rdx,r12
  e1306f:	48 8b 4c 24 20       	mov    rcx,QWORD PTR [rsp+0x20]
  e13074:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e13079:	e8 82 8f fe ff       	call   dfc000 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e1307e:	49 83 fe 02          	cmp    r14,0x2
  e13082:	0f 83 b8 02 00 00    	jae    e13340 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x880>
  e13088:	e9 13 07 00 00       	jmp    e137a0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xce0>
  e1308d:	48 89 de             	mov    rsi,rbx
  e13090:	4c 89 e2             	mov    rdx,r12
  e13093:	48 8b 4c 24 20       	mov    rcx,QWORD PTR [rsp+0x20]
  e13098:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e1309d:	e8 1e 36 fd ff       	call   de66c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e130a2:	49 83 fe 02          	cmp    r14,0x2
  e130a6:	0f 83 d4 04 00 00    	jae    e13580 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xac0>
  e130ac:	e9 ef 06 00 00       	jmp    e137a0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xce0>
  e130b1:	48 89 de             	mov    rsi,rbx
  e130b4:	4c 89 e2             	mov    rdx,r12
  e130b7:	48 8b 4c 24 20       	mov    rcx,QWORD PTR [rsp+0x20]
  e130bc:	e8 bf 7f fd ff       	call   deb080 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e130c1:	49 83 fe 02          	cmp    r14,0x2
  e130c5:	0f 83 75 02 00 00    	jae    e13340 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x880>
  e130cb:	e9 d0 06 00 00       	jmp    e137a0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xce0>
  e130d0:	48 89 de             	mov    rsi,rbx
  e130d3:	4c 89 e2             	mov    rdx,r12
  e130d6:	48 8b 4c 24 20       	mov    rcx,QWORD PTR [rsp+0x20]
  e130db:	e8 60 6f ff ff       	call   e0a040 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e130e0:	49 83 fe 02          	cmp    r14,0x2
  e130e4:	0f 83 96 04 00 00    	jae    e13580 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xac0>
  e130ea:	e9 b1 06 00 00       	jmp    e137a0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xce0>
  e130ef:	48 89 de             	mov    rsi,rbx
  e130f2:	4c 89 e2             	mov    rdx,r12
  e130f5:	48 8b 4c 24 20       	mov    rcx,QWORD PTR [rsp+0x20]
  e130fa:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e130ff:	e8 3c 46 fe ff       	call   df7740 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e13104:	49 83 fe 02          	cmp    r14,0x2
  e13108:	0f 83 32 02 00 00    	jae    e13340 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x880>
  e1310e:	e9 8d 06 00 00       	jmp    e137a0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xce0>
  e13113:	48 89 de             	mov    rsi,rbx
  e13116:	4c 89 e2             	mov    rdx,r12
  e13119:	48 8b 4c 24 20       	mov    rcx,QWORD PTR [rsp+0x20]
  e1311e:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e13123:	e8 98 36 fe ff       	call   df67c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e13128:	49 83 fe 02          	cmp    r14,0x2
  e1312c:	0f 83 4e 04 00 00    	jae    e13580 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xac0>
  e13132:	e9 69 06 00 00       	jmp    e137a0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xce0>
  e13137:	48 89 de             	mov    rsi,rbx
  e1313a:	4c 89 e2             	mov    rdx,r12
  e1313d:	48 8b 4c 24 20       	mov    rcx,QWORD PTR [rsp+0x20]
  e13142:	e8 f9 bc fe ff       	call   dfee40 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e13147:	49 83 fe 02          	cmp    r14,0x2
  e1314b:	0f 83 ef 01 00 00    	jae    e13340 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x880>
  e13151:	e9 4a 06 00 00       	jmp    e137a0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xce0>
  e13156:	48 89 de             	mov    rsi,rbx
  e13159:	4c 89 e2             	mov    rdx,r12
  e1315c:	48 8b 4c 24 20       	mov    rcx,QWORD PTR [rsp+0x20]
  e13161:	e8 5a 9f ff ff       	call   e0d0c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e13166:	49 83 fe 02          	cmp    r14,0x2
  e1316a:	0f 83 10 04 00 00    	jae    e13580 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xac0>
  e13170:	e9 2b 06 00 00       	jmp    e137a0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xce0>
  e13175:	48 89 de             	mov    rsi,rbx
  e13178:	4c 89 e2             	mov    rdx,r12
  e1317b:	48 8b 4c 24 20       	mov    rcx,QWORD PTR [rsp+0x20]
  e13180:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e13185:	e8 b6 da ff ff       	call   e10c40 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e1318a:	49 83 fe 02          	cmp    r14,0x2
  e1318e:	0f 83 ac 01 00 00    	jae    e13340 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x880>
  e13194:	e9 07 06 00 00       	jmp    e137a0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xce0>
  e13199:	48 89 de             	mov    rsi,rbx
  e1319c:	4c 89 e2             	mov    rdx,r12
  e1319f:	48 8b 4c 24 20       	mov    rcx,QWORD PTR [rsp+0x20]
  e131a4:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e131a9:	e8 12 6d fe ff       	call   df9ec0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e131ae:	49 83 fe 02          	cmp    r14,0x2
  e131b2:	0f 83 c8 03 00 00    	jae    e13580 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xac0>
  e131b8:	e9 e3 05 00 00       	jmp    e137a0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xce0>
  e131bd:	48 89 de             	mov    rsi,rbx
  e131c0:	4c 89 e2             	mov    rdx,r12
  e131c3:	48 8b 4c 24 20       	mov    rcx,QWORD PTR [rsp+0x20]
  e131c8:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e131cd:	e8 2e 7d fd ff       	call   deaf00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e131d2:	49 83 fe 02          	cmp    r14,0x2
  e131d6:	0f 83 64 01 00 00    	jae    e13340 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x880>
  e131dc:	e9 bf 05 00 00       	jmp    e137a0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xce0>
  e131e1:	48 89 de             	mov    rsi,rbx
  e131e4:	4c 89 e2             	mov    rdx,r12
  e131e7:	48 8b 4c 24 20       	mov    rcx,QWORD PTR [rsp+0x20]
  e131ec:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e131f1:	e8 ca 9a ff ff       	call   e0ccc0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e131f6:	49 83 fe 02          	cmp    r14,0x2
  e131fa:	0f 83 80 03 00 00    	jae    e13580 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xac0>
  e13200:	e9 9b 05 00 00       	jmp    e137a0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xce0>
  e13205:	48 89 de             	mov    rsi,rbx
  e13208:	4c 89 e2             	mov    rdx,r12
  e1320b:	48 8b 4c 24 20       	mov    rcx,QWORD PTR [rsp+0x20]
  e13210:	e8 6b 33 ff ff       	call   e06580 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e13215:	49 83 fe 02          	cmp    r14,0x2
  e13219:	0f 83 21 01 00 00    	jae    e13340 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x880>
  e1321f:	e9 7c 05 00 00       	jmp    e137a0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xce0>
  e13224:	48 89 de             	mov    rsi,rbx
  e13227:	4c 89 e2             	mov    rdx,r12
  e1322a:	48 8b 4c 24 20       	mov    rcx,QWORD PTR [rsp+0x20]
  e1322f:	e8 4c 4f fd ff       	call   de8180 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e13234:	49 83 fe 02          	cmp    r14,0x2
  e13238:	0f 83 42 03 00 00    	jae    e13580 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xac0>
  e1323e:	e9 5d 05 00 00       	jmp    e137a0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xce0>
  e13243:	48 89 de             	mov    rsi,rbx
  e13246:	4c 89 e2             	mov    rdx,r12
  e13249:	48 8b 4c 24 20       	mov    rcx,QWORD PTR [rsp+0x20]
  e1324e:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e13253:	e8 28 b8 fd ff       	call   deea80 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e13258:	49 83 fe 02          	cmp    r14,0x2
  e1325c:	0f 83 de 00 00 00    	jae    e13340 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x880>
  e13262:	e9 39 05 00 00       	jmp    e137a0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xce0>
  e13267:	48 89 de             	mov    rsi,rbx
  e1326a:	4c 89 e2             	mov    rdx,r12
  e1326d:	48 8b 4c 24 20       	mov    rcx,QWORD PTR [rsp+0x20]
  e13272:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e13277:	e8 c4 fd fe ff       	call   e03040 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e1327c:	49 83 fe 02          	cmp    r14,0x2
  e13280:	0f 83 fa 02 00 00    	jae    e13580 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xac0>
  e13286:	e9 15 05 00 00       	jmp    e137a0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xce0>
  e1328b:	48 89 de             	mov    rsi,rbx
  e1328e:	4c 89 e2             	mov    rdx,r12
  e13291:	48 8b 4c 24 20       	mov    rcx,QWORD PTR [rsp+0x20]
  e13296:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e1329b:	e8 e0 19 fe ff       	call   df4c80 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e132a0:	49 83 fe 02          	cmp    r14,0x2
  e132a4:	0f 83 96 00 00 00    	jae    e13340 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x880>
  e132aa:	e9 f1 04 00 00       	jmp    e137a0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xce0>
  e132af:	48 89 de             	mov    rsi,rbx
  e132b2:	4c 89 e2             	mov    rdx,r12
  e132b5:	48 8b 4c 24 20       	mov    rcx,QWORD PTR [rsp+0x20]
  e132ba:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e132bf:	e8 bc 28 ff ff       	call   e05b80 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e132c4:	49 83 fe 02          	cmp    r14,0x2
  e132c8:	0f 83 b2 02 00 00    	jae    e13580 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xac0>
  e132ce:	e9 cd 04 00 00       	jmp    e137a0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xce0>
  e132d3:	48 89 de             	mov    rsi,rbx
  e132d6:	4c 89 e2             	mov    rdx,r12
  e132d9:	48 8b 4c 24 20       	mov    rcx,QWORD PTR [rsp+0x20]
  e132de:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e132e3:	e8 18 9c fe ff       	call   dfcf00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e132e8:	49 83 fe 02          	cmp    r14,0x2
  e132ec:	73 52                	jae    e13340 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x880>
  e132ee:	e9 ad 04 00 00       	jmp    e137a0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xce0>
  e132f3:	48 89 de             	mov    rsi,rbx
  e132f6:	4c 89 e2             	mov    rdx,r12
  e132f9:	48 8b 4c 24 20       	mov    rcx,QWORD PTR [rsp+0x20]
  e132fe:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e13303:	e8 38 17 ff ff       	call   e04a40 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e13308:	49 83 fe 02          	cmp    r14,0x2
  e1330c:	0f 83 6e 02 00 00    	jae    e13580 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xac0>
  e13312:	e9 89 04 00 00       	jmp    e137a0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xce0>
  e13317:	48 89 de             	mov    rsi,rbx
  e1331a:	4c 89 e2             	mov    rdx,r12
  e1331d:	48 8b 4c 24 20       	mov    rcx,QWORD PTR [rsp+0x20]
  e13322:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e13327:	e8 14 dd fd ff       	call   df1040 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e1332c:	49 83 fe 02          	cmp    r14,0x2
  e13330:	0f 82 6a 04 00 00    	jb     e137a0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xce0>
  e13336:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  e1333d:	00 00 00 
  e13340:	48 8b 44 24 50       	mov    rax,QWORD PTR [rsp+0x50]
  e13345:	4c 8b 38             	mov    r15,QWORD PTR [rax]
  e13348:	4c 8b a4 24 60 01 00 	mov    r12,QWORD PTR [rsp+0x160]
  e1334f:	00 
  e13350:	4c 8b ac 24 f0 00 00 	mov    r13,QWORD PTR [rsp+0xf0]
  e13357:	00 
  e13358:	48 8b 44 24 68       	mov    rax,QWORD PTR [rsp+0x68]
  e1335d:	48 8b 8c 24 98 00 00 	mov    rcx,QWORD PTR [rsp+0x98]
  e13364:	00 
  e13365:	eb 42                	jmp    e133a9 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x8e9>
  e13367:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e1336c:	0f 29 84 24 90 01 00 	movaps XMMWORD PTR [rsp+0x190],xmm0
  e13373:	00 
  e13374:	48 89 d7             	mov    rdi,rdx
  e13377:	48 89 de             	mov    rsi,rbx
  e1337a:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e1337f:	4c 89 f9             	mov    rcx,r15
  e13382:	4c 8d 8c 24 90 01 00 	lea    r9,[rsp+0x190]
  e13389:	00 
  e1338a:	e8 f1 aa f3 ff       	call   d4de80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e1338f:	90                   	nop
  e13390:	4d 0f af fe          	imul   r15,r14
  e13394:	49 83 c5 18          	add    r13,0x18
  e13398:	48 89 d8             	mov    rax,rbx
  e1339b:	49 ff cc             	dec    r12
  e1339e:	48 8b 4c 24 60       	mov    rcx,QWORD PTR [rsp+0x60]
  e133a3:	0f 84 f7 03 00 00    	je     e137a0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xce0>
  e133a9:	48 89 c2             	mov    rdx,rax
  e133ac:	4d 8b 75 f8          	mov    r14,QWORD PTR [r13-0x8]
  e133b0:	4d 8b 45 00          	mov    r8,QWORD PTR [r13+0x0]
  e133b4:	4c 03 44 24 50       	add    r8,QWORD PTR [rsp+0x50]
  e133b9:	4c 89 b4 24 30 01 00 	mov    QWORD PTR [rsp+0x130],r14
  e133c0:	00 
  e133c1:	49 8d 46 fe          	lea    rax,[r14-0x2]
  e133c5:	48 83 f8 0e          	cmp    rax,0xe
  e133c9:	0f 87 d9 52 00 00    	ja     e186a8 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5be8>
  e133cf:	48 89 cb             	mov    rbx,rcx
  e133d2:	48 8d 0d a3 09 29 ff 	lea    rcx,[rip+0xffffffffff2909a3]        # a3d7c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x3122c>
  e133d9:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  e133dd:	48 01 c8             	add    rax,rcx
  e133e0:	48 89 54 24 60       	mov    QWORD PTR [rsp+0x60],rdx
  e133e5:	ff e0                	jmp    rax
  e133e7:	48 89 d7             	mov    rdi,rdx
  e133ea:	48 89 de             	mov    rsi,rbx
  e133ed:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e133f2:	4c 89 f9             	mov    rcx,r15
  e133f5:	e8 c6 12 f3 ff       	call   d446c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e133fa:	eb 94                	jmp    e13390 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x8d0>
  e133fc:	48 89 d7             	mov    rdi,rdx
  e133ff:	48 89 de             	mov    rsi,rbx
  e13402:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e13407:	4c 89 f9             	mov    rcx,r15
  e1340a:	e8 71 67 f3 ff       	call   d49b80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e1340f:	e9 7c ff ff ff       	jmp    e13390 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x8d0>
  e13414:	48 89 d7             	mov    rdi,rdx
  e13417:	48 89 de             	mov    rsi,rbx
  e1341a:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e1341f:	4c 89 f9             	mov    rcx,r15
  e13422:	e8 d9 1c f3 ff       	call   d45100 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e13427:	e9 64 ff ff ff       	jmp    e13390 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x8d0>
  e1342c:	48 89 d7             	mov    rdi,rdx
  e1342f:	48 89 de             	mov    rsi,rbx
  e13432:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e13437:	4c 89 f9             	mov    rcx,r15
  e1343a:	e8 01 80 f3 ff       	call   d4b440 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e1343f:	e9 4c ff ff ff       	jmp    e13390 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x8d0>
  e13444:	48 89 d7             	mov    rdi,rdx
  e13447:	48 89 de             	mov    rsi,rbx
  e1344a:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e1344f:	4c 89 f9             	mov    rcx,r15
  e13452:	e8 69 46 f3 ff       	call   d47ac0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e13457:	e9 34 ff ff ff       	jmp    e13390 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x8d0>
  e1345c:	48 89 d7             	mov    rdi,rdx
  e1345f:	48 89 de             	mov    rsi,rbx
  e13462:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e13467:	4c 89 f9             	mov    rcx,r15
  e1346a:	e8 11 16 f3 ff       	call   d44a80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e1346f:	e9 1c ff ff ff       	jmp    e13390 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x8d0>
  e13474:	48 89 d7             	mov    rdi,rdx
  e13477:	48 89 de             	mov    rsi,rbx
  e1347a:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e1347f:	4c 89 f9             	mov    rcx,r15
  e13482:	e8 79 18 f3 ff       	call   d44d00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e13487:	e9 04 ff ff ff       	jmp    e13390 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x8d0>
  e1348c:	48 89 d7             	mov    rdi,rdx
  e1348f:	48 89 de             	mov    rsi,rbx
  e13492:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e13497:	4c 89 f9             	mov    rcx,r15
  e1349a:	e8 a1 2f f3 ff       	call   d46440 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e1349f:	e9 ec fe ff ff       	jmp    e13390 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x8d0>
  e134a4:	48 89 d7             	mov    rdi,rdx
  e134a7:	48 89 de             	mov    rsi,rbx
  e134aa:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e134af:	4c 89 f9             	mov    rcx,r15
  e134b2:	e8 89 13 f3 ff       	call   d44840 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e134b7:	e9 d4 fe ff ff       	jmp    e13390 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x8d0>
  e134bc:	48 89 d7             	mov    rdi,rdx
  e134bf:	48 89 de             	mov    rsi,rbx
  e134c2:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e134c7:	4c 89 f9             	mov    rcx,r15
  e134ca:	e8 f1 20 f3 ff       	call   d455c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e134cf:	e9 bc fe ff ff       	jmp    e13390 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x8d0>
  e134d4:	48 89 d7             	mov    rdi,rdx
  e134d7:	48 89 de             	mov    rsi,rbx
  e134da:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e134df:	4c 89 f9             	mov    rcx,r15
  e134e2:	e8 19 94 f3 ff       	call   d4c900 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e134e7:	e9 a4 fe ff ff       	jmp    e13390 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x8d0>
  e134ec:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e134f1:	0f 29 84 24 90 01 00 	movaps XMMWORD PTR [rsp+0x190],xmm0
  e134f8:	00 
  e134f9:	48 89 d7             	mov    rdi,rdx
  e134fc:	48 89 de             	mov    rsi,rbx
  e134ff:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e13504:	4c 89 f9             	mov    rcx,r15
  e13507:	4c 8d 8c 24 90 01 00 	lea    r9,[rsp+0x190]
  e1350e:	00 
  e1350f:	e8 2c 28 f3 ff       	call   d45d40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e13514:	e9 77 fe ff ff       	jmp    e13390 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x8d0>
  e13519:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e1351e:	0f 29 84 24 90 01 00 	movaps XMMWORD PTR [rsp+0x190],xmm0
  e13525:	00 
  e13526:	48 89 d7             	mov    rdi,rdx
  e13529:	48 89 de             	mov    rsi,rbx
  e1352c:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e13531:	4c 89 f9             	mov    rcx,r15
  e13534:	4c 8d 8c 24 90 01 00 	lea    r9,[rsp+0x190]
  e1353b:	00 
  e1353c:	e8 3f 58 f3 ff       	call   d48d80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e13541:	e9 4a fe ff ff       	jmp    e13390 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x8d0>
  e13546:	48 89 d7             	mov    rdi,rdx
  e13549:	48 89 de             	mov    rsi,rbx
  e1354c:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e13551:	4c 89 f9             	mov    rcx,r15
  e13554:	e8 67 39 f3 ff       	call   d46ec0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e13559:	e9 32 fe ff ff       	jmp    e13390 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x8d0>
  e1355e:	48 89 de             	mov    rsi,rbx
  e13561:	4c 89 e2             	mov    rdx,r12
  e13564:	48 8b 4c 24 20       	mov    rcx,QWORD PTR [rsp+0x20]
  e13569:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e1356e:	e8 cd 35 ff ff       	call   e06b40 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e13573:	49 83 fe 02          	cmp    r14,0x2
  e13577:	0f 82 23 02 00 00    	jb     e137a0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xce0>
  e1357d:	0f 1f 00             	nop    DWORD PTR [rax]
  e13580:	48 8b 44 24 50       	mov    rax,QWORD PTR [rsp+0x50]
  e13585:	4c 8b 38             	mov    r15,QWORD PTR [rax]
  e13588:	4c 8b a4 24 60 01 00 	mov    r12,QWORD PTR [rsp+0x160]
  e1358f:	00 
  e13590:	4c 8b ac 24 f0 00 00 	mov    r13,QWORD PTR [rsp+0xf0]
  e13597:	00 
  e13598:	48 8b 44 24 68       	mov    rax,QWORD PTR [rsp+0x68]
  e1359d:	48 8b 8c 24 98 00 00 	mov    rcx,QWORD PTR [rsp+0x98]
  e135a4:	00 
  e135a5:	eb 42                	jmp    e135e9 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xb29>
  e135a7:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e135ac:	0f 29 84 24 90 01 00 	movaps XMMWORD PTR [rsp+0x190],xmm0
  e135b3:	00 
  e135b4:	48 89 d7             	mov    rdi,rdx
  e135b7:	48 89 de             	mov    rsi,rbx
  e135ba:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e135bf:	4c 89 f9             	mov    rcx,r15
  e135c2:	4c 8d 8c 24 90 01 00 	lea    r9,[rsp+0x190]
  e135c9:	00 
  e135ca:	e8 b1 a8 f3 ff       	call   d4de80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e135cf:	90                   	nop
  e135d0:	4d 0f af fe          	imul   r15,r14
  e135d4:	49 83 c5 18          	add    r13,0x18
  e135d8:	48 89 d8             	mov    rax,rbx
  e135db:	49 ff cc             	dec    r12
  e135de:	48 8b 4c 24 60       	mov    rcx,QWORD PTR [rsp+0x60]
  e135e3:	0f 84 b7 01 00 00    	je     e137a0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xce0>
  e135e9:	48 89 c2             	mov    rdx,rax
  e135ec:	4d 8b 75 f8          	mov    r14,QWORD PTR [r13-0x8]
  e135f0:	4d 8b 45 00          	mov    r8,QWORD PTR [r13+0x0]
  e135f4:	4c 03 44 24 50       	add    r8,QWORD PTR [rsp+0x50]
  e135f9:	4c 89 b4 24 30 01 00 	mov    QWORD PTR [rsp+0x130],r14
  e13600:	00 
  e13601:	49 8d 46 fe          	lea    rax,[r14-0x2]
  e13605:	48 83 f8 0e          	cmp    rax,0xe
  e13609:	0f 87 99 50 00 00    	ja     e186a8 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5be8>
  e1360f:	48 89 cb             	mov    rbx,rcx
  e13612:	48 8d 0d ef 06 29 ff 	lea    rcx,[rip+0xffffffffff2906ef]        # a3d08 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x311b8>
  e13619:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  e1361d:	48 01 c8             	add    rax,rcx
  e13620:	48 89 54 24 60       	mov    QWORD PTR [rsp+0x60],rdx
  e13625:	ff e0                	jmp    rax
  e13627:	48 89 d7             	mov    rdi,rdx
  e1362a:	48 89 de             	mov    rsi,rbx
  e1362d:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e13632:	4c 89 f9             	mov    rcx,r15
  e13635:	e8 86 10 f3 ff       	call   d446c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e1363a:	eb 94                	jmp    e135d0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xb10>
  e1363c:	48 89 d7             	mov    rdi,rdx
  e1363f:	48 89 de             	mov    rsi,rbx
  e13642:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e13647:	4c 89 f9             	mov    rcx,r15
  e1364a:	e8 31 65 f3 ff       	call   d49b80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e1364f:	e9 7c ff ff ff       	jmp    e135d0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xb10>
  e13654:	48 89 d7             	mov    rdi,rdx
  e13657:	48 89 de             	mov    rsi,rbx
  e1365a:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e1365f:	4c 89 f9             	mov    rcx,r15
  e13662:	e8 99 1a f3 ff       	call   d45100 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e13667:	e9 64 ff ff ff       	jmp    e135d0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xb10>
  e1366c:	48 89 d7             	mov    rdi,rdx
  e1366f:	48 89 de             	mov    rsi,rbx
  e13672:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e13677:	4c 89 f9             	mov    rcx,r15
  e1367a:	e8 c1 7d f3 ff       	call   d4b440 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e1367f:	e9 4c ff ff ff       	jmp    e135d0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xb10>
  e13684:	48 89 d7             	mov    rdi,rdx
  e13687:	48 89 de             	mov    rsi,rbx
  e1368a:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e1368f:	4c 89 f9             	mov    rcx,r15
  e13692:	e8 29 44 f3 ff       	call   d47ac0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e13697:	e9 34 ff ff ff       	jmp    e135d0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xb10>
  e1369c:	48 89 d7             	mov    rdi,rdx
  e1369f:	48 89 de             	mov    rsi,rbx
  e136a2:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e136a7:	4c 89 f9             	mov    rcx,r15
  e136aa:	e8 d1 13 f3 ff       	call   d44a80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e136af:	e9 1c ff ff ff       	jmp    e135d0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xb10>
  e136b4:	48 89 d7             	mov    rdi,rdx
  e136b7:	48 89 de             	mov    rsi,rbx
  e136ba:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e136bf:	4c 89 f9             	mov    rcx,r15
  e136c2:	e8 39 16 f3 ff       	call   d44d00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e136c7:	e9 04 ff ff ff       	jmp    e135d0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xb10>
  e136cc:	48 89 d7             	mov    rdi,rdx
  e136cf:	48 89 de             	mov    rsi,rbx
  e136d2:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e136d7:	4c 89 f9             	mov    rcx,r15
  e136da:	e8 61 2d f3 ff       	call   d46440 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e136df:	e9 ec fe ff ff       	jmp    e135d0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xb10>
  e136e4:	48 89 d7             	mov    rdi,rdx
  e136e7:	48 89 de             	mov    rsi,rbx
  e136ea:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e136ef:	4c 89 f9             	mov    rcx,r15
  e136f2:	e8 49 11 f3 ff       	call   d44840 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e136f7:	e9 d4 fe ff ff       	jmp    e135d0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xb10>
  e136fc:	48 89 d7             	mov    rdi,rdx
  e136ff:	48 89 de             	mov    rsi,rbx
  e13702:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e13707:	4c 89 f9             	mov    rcx,r15
  e1370a:	e8 b1 1e f3 ff       	call   d455c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e1370f:	e9 bc fe ff ff       	jmp    e135d0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xb10>
  e13714:	48 89 d7             	mov    rdi,rdx
  e13717:	48 89 de             	mov    rsi,rbx
  e1371a:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e1371f:	4c 89 f9             	mov    rcx,r15
  e13722:	e8 d9 91 f3 ff       	call   d4c900 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e13727:	e9 a4 fe ff ff       	jmp    e135d0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xb10>
  e1372c:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e13731:	0f 29 84 24 90 01 00 	movaps XMMWORD PTR [rsp+0x190],xmm0
  e13738:	00 
  e13739:	48 89 d7             	mov    rdi,rdx
  e1373c:	48 89 de             	mov    rsi,rbx
  e1373f:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e13744:	4c 89 f9             	mov    rcx,r15
  e13747:	4c 8d 8c 24 90 01 00 	lea    r9,[rsp+0x190]
  e1374e:	00 
  e1374f:	e8 ec 25 f3 ff       	call   d45d40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e13754:	e9 77 fe ff ff       	jmp    e135d0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xb10>
  e13759:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e1375e:	0f 29 84 24 90 01 00 	movaps XMMWORD PTR [rsp+0x190],xmm0
  e13765:	00 
  e13766:	48 89 d7             	mov    rdi,rdx
  e13769:	48 89 de             	mov    rsi,rbx
  e1376c:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e13771:	4c 89 f9             	mov    rcx,r15
  e13774:	4c 8d 8c 24 90 01 00 	lea    r9,[rsp+0x190]
  e1377b:	00 
  e1377c:	e8 ff 55 f3 ff       	call   d48d80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e13781:	e9 4a fe ff ff       	jmp    e135d0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xb10>
  e13786:	48 89 d7             	mov    rdi,rdx
  e13789:	48 89 de             	mov    rsi,rbx
  e1378c:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e13791:	4c 89 f9             	mov    rcx,r15
  e13794:	e8 27 37 f3 ff       	call   d46ec0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e13799:	e9 32 fe ff ff       	jmp    e135d0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xb10>
  e1379e:	66 90                	xchg   ax,ax
  e137a0:	80 bc 24 00 01 00 00 	cmp    BYTE PTR [rsp+0x100],0x0
  e137a7:	00 
  e137a8:	74 56                	je     e13800 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xd40>
  e137aa:	48 8b 8c 24 68 01 00 	mov    rcx,QWORD PTR [rsp+0x168]
  e137b1:	00 
  e137b2:	48 85 c9             	test   rcx,rcx
  e137b5:	4c 8b 5c 24 58       	mov    r11,QWORD PTR [rsp+0x58]
  e137ba:	4c 8b 64 24 28       	mov    r12,QWORD PTR [rsp+0x28]
  e137bf:	0f 84 99 4f 00 00    	je     e1875e <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5c9e>
  e137c5:	4c 89 e0             	mov    rax,r12
  e137c8:	48 09 c8             	or     rax,rcx
  e137cb:	48 c1 e8 20          	shr    rax,0x20
  e137cf:	0f 84 f0 02 00 00    	je     e13ac5 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1005>
  e137d5:	4c 89 e0             	mov    rax,r12
  e137d8:	31 d2                	xor    edx,edx
  e137da:	48 f7 f1             	div    rcx
  e137dd:	48 83 bc 24 d8 00 00 	cmp    QWORD PTR [rsp+0xd8],0x0
  e137e4:	00 00 
  e137e6:	0f 85 ef 02 00 00    	jne    e13adb <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x101b>
  e137ec:	e9 9f f6 ff ff       	jmp    e12e90 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3d0>
  e137f1:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  e137f8:	0f 1f 84 00 00 00 00 
  e137ff:	00 
  e13800:	48 83 bc 24 d8 00 00 	cmp    QWORD PTR [rsp+0xd8],0x0
  e13807:	00 00 
  e13809:	4c 8b 5c 24 58       	mov    r11,QWORD PTR [rsp+0x58]
  e1380e:	4c 8b 64 24 28       	mov    r12,QWORD PTR [rsp+0x28]
  e13813:	0f 84 77 f6 ff ff    	je     e12e90 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3d0>
  e13819:	48 83 c3 10          	add    rbx,0x10
  e1381d:	48 8b 84 24 c8 00 00 	mov    rax,QWORD PTR [rsp+0xc8]
  e13824:	00 
  e13825:	48 89 84 24 b0 00 00 	mov    QWORD PTR [rsp+0xb0],rax
  e1382c:	00 
  e1382d:	4c 8b b4 24 d0 00 00 	mov    r14,QWORD PTR [rsp+0xd0]
  e13834:	00 
  e13835:	4c 89 e2             	mov    rdx,r12
  e13838:	48 8b 84 24 d8 00 00 	mov    rax,QWORD PTR [rsp+0xd8]
  e1383f:	00 
  e13840:	31 f6                	xor    esi,esi
  e13842:	eb 4e                	jmp    e13892 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xdd2>
  e13844:	66 66 66 2e 0f 1f 84 	data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  e1384b:	00 00 00 00 00 
  e13850:	48 8b 74 24 70       	mov    rsi,QWORD PTR [rsp+0x70]
  e13855:	48 83 c6 02          	add    rsi,0x2
  e13859:	48 8b 44 24 48       	mov    rax,QWORD PTR [rsp+0x48]
  e1385e:	48 ff c8             	dec    rax
  e13861:	49 83 c6 40          	add    r14,0x40
  e13865:	48 8b 5c 24 40       	mov    rbx,QWORD PTR [rsp+0x40]
  e1386a:	48 83 c3 40          	add    rbx,0x40
  e1386e:	48 83 84 24 b0 00 00 	add    QWORD PTR [rsp+0xb0],0x20
  e13875:	00 20 
  e13877:	48 85 c0             	test   rax,rax
  e1387a:	4c 8b 64 24 28       	mov    r12,QWORD PTR [rsp+0x28]
  e1387f:	4c 8b 5c 24 58       	mov    r11,QWORD PTR [rsp+0x58]
  e13884:	48 8b 94 24 b8 00 00 	mov    rdx,QWORD PTR [rsp+0xb8]
  e1388b:	00 
  e1388c:	0f 84 fe f5 ff ff    	je     e12e90 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3d0>
  e13892:	48 89 44 24 48       	mov    QWORD PTR [rsp+0x48],rax
  e13897:	48 83 ea 02          	sub    rdx,0x2
  e1389b:	b8 02 00 00 00       	mov    eax,0x2
  e138a0:	48 83 d8 00          	sbb    rax,0x0
  e138a4:	4c 89 e7             	mov    rdi,r12
  e138a7:	48 29 f7             	sub    rdi,rsi
  e138aa:	48 83 ff 02          	cmp    rdi,0x2
  e138ae:	b9 02 00 00 00       	mov    ecx,0x2
  e138b3:	48 0f 43 f9          	cmovae rdi,rcx
  e138b7:	48 89 7c 24 60       	mov    QWORD PTR [rsp+0x60],rdi
  e138bc:	0f 57 c0             	xorps  xmm0,xmm0
  e138bf:	0f 29 84 24 a0 02 00 	movaps XMMWORD PTR [rsp+0x2a0],xmm0
  e138c6:	00 
  e138c7:	0f 29 84 24 90 02 00 	movaps XMMWORD PTR [rsp+0x290],xmm0
  e138ce:	00 
  e138cf:	0f 29 84 24 40 01 00 	movaps XMMWORD PTR [rsp+0x140],xmm0
  e138d6:	00 
  e138d7:	0f 29 84 24 30 01 00 	movaps XMMWORD PTR [rsp+0x130],xmm0
  e138de:	00 
  e138df:	0f 57 c9             	xorps  xmm1,xmm1
  e138e2:	66 0f 57 db          	xorpd  xmm3,xmm3
  e138e6:	66 0f 57 d2          	xorpd  xmm2,xmm2
  e138ea:	49 29 f4             	sub    r12,rsi
  e138ed:	0f 84 82 00 00 00    	je     e13975 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xeb5>
  e138f3:	31 c9                	xor    ecx,ecx
  e138f5:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  e138fc:	00 00 00 00 
  e13900:	66 0f 10 44 4b f0    	movupd xmm0,XMMWORD PTR [rbx+rcx*2-0x10]
  e13906:	66 0f 10 0c 4b       	movupd xmm1,XMMWORD PTR [rbx+rcx*2]
  e1390b:	66 41 0f 10 54 4e f0 	movupd xmm2,XMMWORD PTR [r14+rcx*2-0x10]
  e13912:	66 41 0f 10 1c 4e    	movupd xmm3,XMMWORD PTR [r14+rcx*2]
  e13918:	66 0f 28 e1          	movapd xmm4,xmm1
  e1391c:	66 0f 59 e3          	mulpd  xmm4,xmm3
  e13920:	66 0f 28 e8          	movapd xmm5,xmm0
  e13924:	66 0f 59 ea          	mulpd  xmm5,xmm2
  e13928:	66 0f 5c ec          	subpd  xmm5,xmm4
  e1392c:	66 0f 29 ac 0c 90 02 	movapd XMMWORD PTR [rsp+rcx*1+0x290],xmm5
  e13933:	00 00 
  e13935:	66 0f 59 ca          	mulpd  xmm1,xmm2
  e13939:	66 0f 59 c3          	mulpd  xmm0,xmm3
  e1393d:	66 0f 58 c1          	addpd  xmm0,xmm1
  e13941:	66 0f 29 84 0c 30 01 	movapd XMMWORD PTR [rsp+rcx*1+0x130],xmm0
  e13948:	00 00 
  e1394a:	48 83 c1 10          	add    rcx,0x10
  e1394e:	48 ff c8             	dec    rax
  e13951:	75 ad                	jne    e13900 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xe40>
  e13953:	66 0f 28 94 24 90 02 	movapd xmm2,XMMWORD PTR [rsp+0x290]
  e1395a:	00 00 
  e1395c:	66 0f 28 9c 24 a0 02 	movapd xmm3,XMMWORD PTR [rsp+0x2a0]
  e13963:	00 00 
  e13965:	0f 28 84 24 30 01 00 	movaps xmm0,XMMWORD PTR [rsp+0x130]
  e1396c:	00 
  e1396d:	0f 28 8c 24 40 01 00 	movaps xmm1,XMMWORD PTR [rsp+0x140]
  e13974:	00 
  e13975:	48 89 74 24 70       	mov    QWORD PTR [rsp+0x70],rsi
  e1397a:	48 89 94 24 b8 00 00 	mov    QWORD PTR [rsp+0xb8],rdx
  e13981:	00 
  e13982:	48 89 5c 24 40       	mov    QWORD PTR [rsp+0x40],rbx
  e13987:	66 0f 28 e2          	movapd xmm4,xmm2
  e1398b:	66 0f 14 e3          	unpcklpd xmm4,xmm3
  e1398f:	66 0f 15 d3          	unpckhpd xmm2,xmm3
  e13993:	66 0f 29 a4 24 90 02 	movapd XMMWORD PTR [rsp+0x290],xmm4
  e1399a:	00 00 
  e1399c:	66 0f 29 94 24 a0 02 	movapd XMMWORD PTR [rsp+0x2a0],xmm2
  e139a3:	00 00 
  e139a5:	0f 28 d0             	movaps xmm2,xmm0
  e139a8:	0f 16 d1             	movlhps xmm2,xmm1
  e139ab:	66 0f 15 c1          	unpckhpd xmm0,xmm1
  e139af:	0f 29 94 24 30 01 00 	movaps XMMWORD PTR [rsp+0x130],xmm2
  e139b6:	00 
  e139b7:	0f 29 84 24 40 01 00 	movaps XMMWORD PTR [rsp+0x140],xmm0
  e139be:	00 
  e139bf:	4c 39 5c 24 20       	cmp    QWORD PTR [rsp+0x20],r11
  e139c4:	0f 84 86 fe ff ff    	je     e13850 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xd90>
  e139ca:	48 c1 64 24 60 04    	shl    QWORD PTR [rsp+0x60],0x4
  e139d0:	4c 8b ac 24 b0 00 00 	mov    r13,QWORD PTR [rsp+0xb0]
  e139d7:	00 
  e139d8:	48 8b 9c 24 20 01 00 	mov    rbx,QWORD PTR [rsp+0x120]
  e139df:	00 
  e139e0:	45 31 ff             	xor    r15d,r15d
  e139e3:	eb 2a                	jmp    e13a0f <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xf4f>
  e139e5:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  e139ec:	00 00 00 00 
  e139f0:	41 0f 11 4d 00       	movups XMMWORD PTR [r13+0x0],xmm1
  e139f5:	41 0f 11 45 10       	movups XMMWORD PTR [r13+0x10],xmm0
  e139fa:	49 83 c7 10          	add    r15,0x10
  e139fe:	4c 03 ac 24 90 00 00 	add    r13,QWORD PTR [rsp+0x90]
  e13a05:	00 
  e13a06:	48 ff cb             	dec    rbx
  e13a09:	0f 84 41 fe ff ff    	je     e13850 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xd90>
  e13a0f:	42 0f 28 84 3c 90 02 	movaps xmm0,XMMWORD PTR [rsp+r15*1+0x290]
  e13a16:	00 00 
  e13a18:	42 0f 28 94 3c 30 01 	movaps xmm2,XMMWORD PTR [rsp+r15*1+0x130]
  e13a1f:	00 00 
  e13a21:	0f 28 c8             	movaps xmm1,xmm0
  e13a24:	0f 16 ca             	movlhps xmm1,xmm2
  e13a27:	66 0f 15 c2          	unpckhpd xmm0,xmm2
  e13a2b:	49 83 fc 01          	cmp    r12,0x1
  e13a2f:	77 bf                	ja     e139f0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xf30>
  e13a31:	48 8d 84 24 b0 01 00 	lea    rax,[rsp+0x1b0]
  e13a38:	00 
  e13a39:	0f 57 d2             	xorps  xmm2,xmm2
  e13a3c:	0f 29 90 d0 00 00 00 	movaps XMMWORD PTR [rax+0xd0],xmm2
  e13a43:	0f 29 90 c0 00 00 00 	movaps XMMWORD PTR [rax+0xc0],xmm2
  e13a4a:	0f 29 90 b0 00 00 00 	movaps XMMWORD PTR [rax+0xb0],xmm2
  e13a51:	0f 29 90 a0 00 00 00 	movaps XMMWORD PTR [rax+0xa0],xmm2
  e13a58:	0f 29 90 90 00 00 00 	movaps XMMWORD PTR [rax+0x90],xmm2
  e13a5f:	0f 29 90 80 00 00 00 	movaps XMMWORD PTR [rax+0x80],xmm2
  e13a66:	0f 29 50 70          	movaps XMMWORD PTR [rax+0x70],xmm2
  e13a6a:	0f 29 50 60          	movaps XMMWORD PTR [rax+0x60],xmm2
  e13a6e:	0f 29 50 50          	movaps XMMWORD PTR [rax+0x50],xmm2
  e13a72:	0f 29 50 40          	movaps XMMWORD PTR [rax+0x40],xmm2
  e13a76:	0f 29 50 30          	movaps XMMWORD PTR [rax+0x30],xmm2
  e13a7a:	0f 29 50 20          	movaps XMMWORD PTR [rax+0x20],xmm2
  e13a7e:	0f 29 50 10          	movaps XMMWORD PTR [rax+0x10],xmm2
  e13a82:	0f 29 10             	movaps XMMWORD PTR [rax],xmm2
  e13a85:	0f 29 8c 24 90 01 00 	movaps XMMWORD PTR [rsp+0x190],xmm1
  e13a8c:	00 
  e13a8d:	0f 29 84 24 a0 01 00 	movaps XMMWORD PTR [rsp+0x1a0],xmm0
  e13a94:	00 
  e13a95:	4c 89 ef             	mov    rdi,r13
  e13a98:	48 8d b4 24 90 01 00 	lea    rsi,[rsp+0x190]
  e13a9f:	00 
  e13aa0:	48 8b 54 24 60       	mov    rdx,QWORD PTR [rsp+0x60]
  e13aa5:	ff 15 f5 e1 43 00    	call   QWORD PTR [rip+0x43e1f5]        # 1251ca0 <memcpy@GLIBC_2.14>
  e13aab:	49 83 c7 10          	add    r15,0x10
  e13aaf:	4c 03 ac 24 90 00 00 	add    r13,QWORD PTR [rsp+0x90]
  e13ab6:	00 
  e13ab7:	48 ff cb             	dec    rbx
  e13aba:	0f 85 4f ff ff ff    	jne    e13a0f <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xf4f>
  e13ac0:	e9 8b fd ff ff       	jmp    e13850 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0xd90>
  e13ac5:	44 89 e0             	mov    eax,r12d
  e13ac8:	31 d2                	xor    edx,edx
  e13aca:	f7 f1                	div    ecx
  e13acc:	48 83 bc 24 d8 00 00 	cmp    QWORD PTR [rsp+0xd8],0x0
  e13ad3:	00 00 
  e13ad5:	0f 84 b5 f3 ff ff    	je     e12e90 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3d0>
  e13adb:	4b 8d 0c 1b          	lea    rcx,[r11+r11*1]
  e13adf:	48 0f af c1          	imul   rax,rcx
  e13ae3:	48 0f af 8c 24 68 01 	imul   rcx,QWORD PTR [rsp+0x168]
  e13aea:	00 00 
  e13aec:	48 8b 94 24 58 01 00 	mov    rdx,QWORD PTR [rsp+0x158]
  e13af3:	00 
  e13af4:	48 8d 04 c2          	lea    rax,[rdx+rax*8]
  e13af8:	48 8b 94 24 08 01 00 	mov    rdx,QWORD PTR [rsp+0x108]
  e13aff:	00 
  e13b00:	48 8d 14 ca          	lea    rdx,[rdx+rcx*8]
  e13b04:	48 83 c3 30          	add    rbx,0x30
  e13b08:	48 8b b4 24 f8 00 00 	mov    rsi,QWORD PTR [rsp+0xf8]
  e13b0f:	00 
  e13b10:	48 8b bc 24 88 01 00 	mov    rdi,QWORD PTR [rsp+0x188]
  e13b17:	00 
  e13b18:	45 31 c0             	xor    r8d,r8d
  e13b1b:	eb 3a                	jmp    e13b57 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1097>
  e13b1d:	0f 1f 00             	nop    DWORD PTR [rax]
  e13b20:	48 8d 4e e0          	lea    rcx,[rsi-0x20]
  e13b24:	4c 8d 4e f0          	lea    r9,[rsi-0x10]
  e13b28:	4c 8d 56 10          	lea    r10,[rsi+0x10]
  e13b2c:	66 0f 2b 21          	movntpd XMMWORD PTR [rcx],xmm4
  e13b30:	66 41 0f 2b 19       	movntpd XMMWORD PTR [r9],xmm3
  e13b35:	66 0f 2b 16          	movntpd XMMWORD PTR [rsi],xmm2
  e13b39:	66 41 0f 2b 02       	movntpd XMMWORD PTR [r10],xmm0
  e13b3e:	48 03 b4 24 28 01 00 	add    rsi,QWORD PTR [rsp+0x128]
  e13b45:	00 
  e13b46:	48 83 c3 40          	add    rbx,0x40
  e13b4a:	49 83 c0 02          	add    r8,0x2
  e13b4e:	48 ff c7             	inc    rdi
  e13b51:	0f 84 39 f3 ff ff    	je     e12e90 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3d0>
  e13b57:	4d 89 c1             	mov    r9,r8
  e13b5a:	48 8b 8c 24 a8 00 00 	mov    rcx,QWORD PTR [rsp+0xa8]
  e13b61:	00 
  e13b62:	49 d3 e9             	shr    r9,cl
  e13b65:	49 c1 e1 05          	shl    r9,0x5
  e13b69:	66 42 0f 10 04 08    	movupd xmm0,XMMWORD PTR [rax+r9*1]
  e13b6f:	66 42 0f 10 54 08 10 	movupd xmm2,XMMWORD PTR [rax+r9*1+0x10]
  e13b76:	4c 89 c1             	mov    rcx,r8
  e13b79:	48 23 8c 24 a0 00 00 	and    rcx,QWORD PTR [rsp+0xa0]
  e13b80:	00 
  e13b81:	48 c1 e1 05          	shl    rcx,0x5
  e13b85:	66 0f 10 1c 0a       	movupd xmm3,XMMWORD PTR [rdx+rcx*1]
  e13b8a:	66 0f 10 4c 0a 10    	movupd xmm1,XMMWORD PTR [rdx+rcx*1+0x10]
  e13b90:	66 0f 10 74 0a 20    	movupd xmm6,XMMWORD PTR [rdx+rcx*1+0x20]
  e13b96:	66 0f 10 64 0a 30    	movupd xmm4,XMMWORD PTR [rdx+rcx*1+0x30]
  e13b9c:	66 0f 28 ea          	movapd xmm5,xmm2
  e13ba0:	66 0f 59 e9          	mulpd  xmm5,xmm1
  e13ba4:	66 44 0f 28 c0       	movapd xmm8,xmm0
  e13ba9:	66 44 0f 59 c3       	mulpd  xmm8,xmm3
  e13bae:	66 44 0f 5c c5       	subpd  xmm8,xmm5
  e13bb3:	66 0f 59 da          	mulpd  xmm3,xmm2
  e13bb7:	66 0f 59 c8          	mulpd  xmm1,xmm0
  e13bbb:	66 0f 58 cb          	addpd  xmm1,xmm3
  e13bbf:	66 44 0f 10 4b d0    	movupd xmm9,XMMWORD PTR [rbx-0x30]
  e13bc5:	66 44 0f 10 53 e0    	movupd xmm10,XMMWORD PTR [rbx-0x20]
  e13bcb:	66 0f 10 6b f0       	movupd xmm5,XMMWORD PTR [rbx-0x10]
  e13bd0:	66 0f 10 3b          	movupd xmm7,XMMWORD PTR [rbx]
  e13bd4:	66 41 0f 28 d9       	movapd xmm3,xmm9
  e13bd9:	66 41 0f 59 d8       	mulpd  xmm3,xmm8
  e13bde:	66 45 0f 59 c2       	mulpd  xmm8,xmm10
  e13be3:	66 44 0f 59 d1       	mulpd  xmm10,xmm1
  e13be8:	66 41 0f 5c da       	subpd  xmm3,xmm10
  e13bed:	66 41 0f 59 c9       	mulpd  xmm1,xmm9
  e13bf2:	66 41 0f 58 c8       	addpd  xmm1,xmm8
  e13bf7:	66 44 0f 28 c2       	movapd xmm8,xmm2
  e13bfc:	66 44 0f 59 c4       	mulpd  xmm8,xmm4
  e13c01:	66 44 0f 28 c8       	movapd xmm9,xmm0
  e13c06:	66 44 0f 59 ce       	mulpd  xmm9,xmm6
  e13c0b:	66 45 0f 5c c8       	subpd  xmm9,xmm8
  e13c10:	66 0f 59 d6          	mulpd  xmm2,xmm6
  e13c14:	66 0f 59 c4          	mulpd  xmm0,xmm4
  e13c18:	66 0f 58 c2          	addpd  xmm0,xmm2
  e13c1c:	66 0f 28 d5          	movapd xmm2,xmm5
  e13c20:	66 41 0f 59 d1       	mulpd  xmm2,xmm9
  e13c25:	66 44 0f 59 cf       	mulpd  xmm9,xmm7
  e13c2a:	66 0f 59 f8          	mulpd  xmm7,xmm0
  e13c2e:	66 0f 5c d7          	subpd  xmm2,xmm7
  e13c32:	66 0f 59 c5          	mulpd  xmm0,xmm5
  e13c36:	66 41 0f 58 c1       	addpd  xmm0,xmm9
  e13c3b:	66 0f 28 e3          	movapd xmm4,xmm3
  e13c3f:	66 0f 14 e2          	unpcklpd xmm4,xmm2
  e13c43:	0f 12 d3             	movhlps xmm2,xmm3
  e13c46:	66 0f 28 d9          	movapd xmm3,xmm1
  e13c4a:	66 0f 14 d8          	unpcklpd xmm3,xmm0
  e13c4e:	0f 12 c1             	movhlps xmm0,xmm1
  e13c51:	80 bc 24 e0 00 00 00 	cmp    BYTE PTR [rsp+0xe0],0x0
  e13c58:	00 
  e13c59:	0f 85 c1 fe ff ff    	jne    e13b20 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1060>
  e13c5f:	66 0f 11 66 e0       	movupd XMMWORD PTR [rsi-0x20],xmm4
  e13c64:	66 0f 11 5e f0       	movupd XMMWORD PTR [rsi-0x10],xmm3
  e13c69:	0f 11 16             	movups XMMWORD PTR [rsi],xmm2
  e13c6c:	0f 11 46 10          	movups XMMWORD PTR [rsi+0x10],xmm0
  e13c70:	e9 c9 fe ff ff       	jmp    e13b3e <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x107e>
  e13c75:	4c 8b 67 58          	mov    r12,QWORD PTR [rdi+0x58]
  e13c79:	48 8b 4f 10          	mov    rcx,QWORD PTR [rdi+0x10]
  e13c7d:	4c 8b 77 20          	mov    r14,QWORD PTR [rdi+0x20]
  e13c81:	48 8b 77 60          	mov    rsi,QWORD PTR [rdi+0x60]
  e13c85:	48 8b 47 28          	mov    rax,QWORD PTR [rdi+0x28]
  e13c89:	48 89 84 24 88 00 00 	mov    QWORD PTR [rsp+0x88],rax
  e13c90:	00 
  e13c91:	48 8b 47 30          	mov    rax,QWORD PTR [rdi+0x30]
  e13c95:	48 8b 57 40          	mov    rdx,QWORD PTR [rdi+0x40]
  e13c99:	48 89 4c 24 50       	mov    QWORD PTR [rsp+0x50],rcx
  e13c9e:	48 01 ca             	add    rdx,rcx
  e13ca1:	48 89 94 24 08 01 00 	mov    QWORD PTR [rsp+0x108],rdx
  e13ca8:	00 
  e13ca9:	48 8b 5f 78          	mov    rbx,QWORD PTR [rdi+0x78]
  e13cad:	48 c1 e3 04          	shl    rbx,0x4
  e13cb1:	48 03 9c 24 c0 00 00 	add    rbx,QWORD PTR [rsp+0xc0]
  e13cb8:	00 
  e13cb9:	48 8b 8f 80 00 00 00 	mov    rcx,QWORD PTR [rdi+0x80]
  e13cc0:	48 c1 e1 04          	shl    rcx,0x4
  e13cc4:	48 01 d9             	add    rcx,rbx
  e13cc7:	48 89 8c 24 98 00 00 	mov    QWORD PTR [rsp+0x98],rcx
  e13cce:	00 
  e13ccf:	f2 0f 10 05 f9 0b 26 	movsd  xmm0,QWORD PTR [rip+0xffffffffff260bf9]        # 748d0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1d80>
  e13cd6:	ff 
  e13cd7:	0f 16 c0             	movlhps xmm0,xmm0
  e13cda:	0f 29 44 24 30       	movaps XMMWORD PTR [rsp+0x30],xmm0
  e13cdf:	0f b6 8f 98 00 00 00 	movzx  ecx,BYTE PTR [rdi+0x98]
  e13ce6:	0f b6 97 99 00 00 00 	movzx  edx,BYTE PTR [rdi+0x99]
  e13ced:	88 8c 24 00 01 00 00 	mov    BYTE PTR [rsp+0x100],cl
  e13cf4:	20 ca                	and    dl,cl
  e13cf6:	88 94 24 e0 00 00 00 	mov    BYTE PTR [rsp+0xe0],dl
  e13cfd:	48 89 f1             	mov    rcx,rsi
  e13d00:	48 d1 e9             	shr    rcx,1
  e13d03:	48 89 74 24 20       	mov    QWORD PTR [rsp+0x20],rsi
  e13d08:	48 29 ce             	sub    rsi,rcx
  e13d0b:	4c 89 64 24 28       	mov    QWORD PTR [rsp+0x28],r12
  e13d10:	48 89 5c 24 68       	mov    QWORD PTR [rsp+0x68],rbx
  e13d15:	0f 84 ca 0e 00 00    	je     e14be5 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2125>
  e13d1b:	48 8b 4c 24 50       	mov    rcx,QWORD PTR [rsp+0x50]
  e13d20:	48 8d 14 01          	lea    rdx,[rcx+rax*1]
  e13d24:	48 89 94 24 58 01 00 	mov    QWORD PTR [rsp+0x158],rdx
  e13d2b:	00 
  e13d2c:	4c 89 e2             	mov    rdx,r12
  e13d2f:	48 d1 ea             	shr    rdx,1
  e13d32:	4d 89 e0             	mov    r8,r12
  e13d35:	49 29 d0             	sub    r8,rdx
  e13d38:	4c 89 84 24 d8 00 00 	mov    QWORD PTR [rsp+0xd8],r8
  e13d3f:	00 
  e13d40:	48 8b 7f 70          	mov    rdi,QWORD PTR [rdi+0x70]
  e13d44:	f3 4c 0f bc c7       	tzcnt  r8,rdi
  e13d49:	4c 89 84 24 a8 00 00 	mov    QWORD PTR [rsp+0xa8],r8
  e13d50:	00 
  e13d51:	49 b8 ff ff ff ff ff 	movabs r8,0x7ffffffffffffff
  e13d58:	ff ff 07 
  e13d5b:	48 89 bc 24 68 01 00 	mov    QWORD PTR [rsp+0x168],rdi
  e13d62:	00 
  e13d63:	49 01 f8             	add    r8,rdi
  e13d66:	4c 89 84 24 a0 00 00 	mov    QWORD PTR [rsp+0xa0],r8
  e13d6d:	00 
  e13d6e:	48 8d 79 20          	lea    rdi,[rcx+0x20]
  e13d72:	48 89 bc 24 f0 00 00 	mov    QWORD PTR [rsp+0xf0],rdi
  e13d79:	00 
  e13d7a:	49 8d 7e ff          	lea    rdi,[r14-0x1]
  e13d7e:	48 89 bc 24 60 01 00 	mov    QWORD PTR [rsp+0x160],rdi
  e13d85:	00 
  e13d86:	48 01 c8             	add    rax,rcx
  e13d89:	48 83 c0 10          	add    rax,0x10
  e13d8d:	48 89 84 24 d0 00 00 	mov    QWORD PTR [rsp+0xd0],rax
  e13d94:	00 
  e13d95:	4c 89 e0             	mov    rax,r12
  e13d98:	48 c1 e0 05          	shl    rax,0x5
  e13d9c:	48 89 84 24 70 01 00 	mov    QWORD PTR [rsp+0x170],rax
  e13da3:	00 
  e13da4:	4c 89 e0             	mov    rax,r12
  e13da7:	48 c1 e0 04          	shl    rax,0x4
  e13dab:	48 89 84 24 90 00 00 	mov    QWORD PTR [rsp+0x90],rax
  e13db2:	00 
  e13db3:	4c 29 e2             	sub    rdx,r12
  e13db6:	48 89 94 24 88 01 00 	mov    QWORD PTR [rsp+0x188],rdx
  e13dbd:	00 
  e13dbe:	48 8b 4c 24 20       	mov    rcx,QWORD PTR [rsp+0x20]
  e13dc3:	48 89 c8             	mov    rax,rcx
  e13dc6:	48 c1 e0 05          	shl    rax,0x5
  e13dca:	48 89 84 24 28 01 00 	mov    QWORD PTR [rsp+0x128],rax
  e13dd1:	00 
  e13dd2:	48 8b 84 24 c0 00 00 	mov    rax,QWORD PTR [rsp+0xc0]
  e13dd9:	00 
  e13dda:	48 8d 50 20          	lea    rdx,[rax+0x20]
  e13dde:	48 89 94 24 f8 00 00 	mov    QWORD PTR [rsp+0xf8],rdx
  e13de5:	00 
  e13de6:	45 31 db             	xor    r11d,r11d
  e13de9:	48 89 84 24 c8 00 00 	mov    QWORD PTR [rsp+0xc8],rax
  e13df0:	00 
  e13df1:	4c 89 b4 24 78 01 00 	mov    QWORD PTR [rsp+0x178],r14
  e13df8:	00 
  e13df9:	eb 53                	jmp    e13e4e <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x138e>
  e13dfb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  e13e00:	49 83 c3 02          	add    r11,0x2
  e13e04:	48 8b b4 24 18 01 00 	mov    rsi,QWORD PTR [rsp+0x118]
  e13e0b:	00 
  e13e0c:	48 ff ce             	dec    rsi
  e13e0f:	48 8b 84 24 70 01 00 	mov    rax,QWORD PTR [rsp+0x170]
  e13e16:	00 
  e13e17:	48 01 84 24 d0 00 00 	add    QWORD PTR [rsp+0xd0],rax
  e13e1e:	00 
  e13e1f:	48 01 84 24 c8 00 00 	add    QWORD PTR [rsp+0xc8],rax
  e13e26:	00 
  e13e27:	48 83 84 24 f8 00 00 	add    QWORD PTR [rsp+0xf8],0x40
  e13e2e:	00 40 
  e13e30:	48 85 f6             	test   rsi,rsi
  e13e33:	48 8b 5c 24 68       	mov    rbx,QWORD PTR [rsp+0x68]
  e13e38:	4c 8b b4 24 78 01 00 	mov    r14,QWORD PTR [rsp+0x178]
  e13e3f:	00 
  e13e40:	48 8b 8c 24 10 01 00 	mov    rcx,QWORD PTR [rsp+0x110]
  e13e47:	00 
  e13e48:	0f 84 97 0d 00 00    	je     e14be5 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2125>
  e13e4e:	48 83 e9 02          	sub    rcx,0x2
  e13e52:	b8 02 00 00 00       	mov    eax,0x2
  e13e57:	48 83 d8 00          	sbb    rax,0x0
  e13e5b:	48 89 84 24 20 01 00 	mov    QWORD PTR [rsp+0x120],rax
  e13e62:	00 
  e13e63:	48 8b 44 24 20       	mov    rax,QWORD PTR [rsp+0x20]
  e13e68:	4c 29 d8             	sub    rax,r11
  e13e6b:	48 83 f8 02          	cmp    rax,0x2
  e13e6f:	41 b8 02 00 00 00    	mov    r8d,0x2
  e13e75:	4c 0f 42 c0          	cmovb  r8,rax
  e13e79:	4c 89 df             	mov    rdi,r11
  e13e7c:	48 c1 e7 04          	shl    rdi,0x4
  e13e80:	48 03 bc 24 80 01 00 	add    rdi,QWORD PTR [rsp+0x180]
  e13e87:	00 
  e13e88:	48 83 f8 01          	cmp    rax,0x1
  e13e8c:	48 89 b4 24 18 01 00 	mov    QWORD PTR [rsp+0x118],rsi
  e13e93:	00 
  e13e94:	4c 89 5c 24 58       	mov    QWORD PTR [rsp+0x58],r11
  e13e99:	48 89 8c 24 10 01 00 	mov    QWORD PTR [rsp+0x110],rcx
  e13ea0:	00 
  e13ea1:	76 5d                	jbe    e13f00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1440>
  e13ea3:	4d 85 f6             	test   r14,r14
  e13ea6:	0f 84 a2 48 00 00    	je     e1874e <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5c8e>
  e13eac:	48 8b 44 24 50       	mov    rax,QWORD PTR [rsp+0x50]
  e13eb1:	48 8b 00             	mov    rax,QWORD PTR [rax]
  e13eb4:	48 83 c0 fe          	add    rax,0xfffffffffffffffe
  e13eb8:	48 83 f8 0d          	cmp    rax,0xd
  e13ebc:	0f 87 50 48 00 00    	ja     e18712 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5c52>
  e13ec2:	48 8d 0d bf fb 28 ff 	lea    rcx,[rip+0xffffffffff28fbbf]        # a3a88 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x30f38>
  e13ec9:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  e13ecd:	48 01 c8             	add    rax,rcx
  e13ed0:	ff e0                	jmp    rax
  e13ed2:	48 89 de             	mov    rsi,rbx
  e13ed5:	4c 89 e2             	mov    rdx,r12
  e13ed8:	48 8b 4c 24 20       	mov    rcx,QWORD PTR [rsp+0x20]
  e13edd:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e13ee2:	e8 d9 cb ff ff       	call   e10ac0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e13ee7:	49 83 fe 02          	cmp    r14,0x2
  e13eeb:	0f 83 bf 03 00 00    	jae    e142b0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x17f0>
  e13ef1:	e9 1a 08 00 00       	jmp    e14710 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1c50>
  e13ef6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  e13efd:	00 00 00 
  e13f00:	4d 85 f6             	test   r14,r14
  e13f03:	0f 84 45 48 00 00    	je     e1874e <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5c8e>
  e13f09:	48 8b 44 24 50       	mov    rax,QWORD PTR [rsp+0x50]
  e13f0e:	48 8b 00             	mov    rax,QWORD PTR [rax]
  e13f11:	48 83 c0 fe          	add    rax,0xfffffffffffffffe
  e13f15:	48 83 f8 0d          	cmp    rax,0xd
  e13f19:	0f 87 f3 47 00 00    	ja     e18712 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5c52>
  e13f1f:	48 8d 0d ee fa 28 ff 	lea    rcx,[rip+0xffffffffff28faee]        # a3a14 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x30ec4>
  e13f26:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  e13f2a:	48 01 c8             	add    rax,rcx
  e13f2d:	ff e0                	jmp    rax
  e13f2f:	48 89 de             	mov    rsi,rbx
  e13f32:	4c 89 e2             	mov    rdx,r12
  e13f35:	48 8b 4c 24 20       	mov    rcx,QWORD PTR [rsp+0x20]
  e13f3a:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e13f3f:	e8 bc 3f fd ff       	call   de7f00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e13f44:	49 83 fe 02          	cmp    r14,0x2
  e13f48:	0f 83 a2 05 00 00    	jae    e144f0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1a30>
  e13f4e:	e9 bd 07 00 00       	jmp    e14710 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1c50>
  e13f53:	48 89 de             	mov    rsi,rbx
  e13f56:	4c 89 e2             	mov    rdx,r12
  e13f59:	48 8b 4c 24 20       	mov    rcx,QWORD PTR [rsp+0x20]
  e13f5e:	e8 dd 97 ff ff       	call   e0d740 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e13f63:	49 83 fe 02          	cmp    r14,0x2
  e13f67:	0f 83 43 03 00 00    	jae    e142b0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x17f0>
  e13f6d:	e9 9e 07 00 00       	jmp    e14710 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1c50>
  e13f72:	48 89 de             	mov    rsi,rbx
  e13f75:	4c 89 e2             	mov    rdx,r12
  e13f78:	48 8b 4c 24 20       	mov    rcx,QWORD PTR [rsp+0x20]
  e13f7d:	e8 be c3 fe ff       	call   e00340 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e13f82:	49 83 fe 02          	cmp    r14,0x2
  e13f86:	0f 83 64 05 00 00    	jae    e144f0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1a30>
  e13f8c:	e9 7f 07 00 00       	jmp    e14710 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1c50>
  e13f91:	48 89 de             	mov    rsi,rbx
  e13f94:	4c 89 e2             	mov    rdx,r12
  e13f97:	48 8b 4c 24 20       	mov    rcx,QWORD PTR [rsp+0x20]
  e13f9c:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e13fa1:	e8 5a 34 fe ff       	call   df7400 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e13fa6:	49 83 fe 02          	cmp    r14,0x2
  e13faa:	0f 83 00 03 00 00    	jae    e142b0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x17f0>
  e13fb0:	e9 5b 07 00 00       	jmp    e14710 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1c50>
  e13fb5:	48 89 de             	mov    rsi,rbx
  e13fb8:	4c 89 e2             	mov    rdx,r12
  e13fbb:	48 8b 4c 24 20       	mov    rcx,QWORD PTR [rsp+0x20]
  e13fc0:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e13fc5:	e8 76 b1 fe ff       	call   dff140 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e13fca:	49 83 fe 02          	cmp    r14,0x2
  e13fce:	0f 83 1c 05 00 00    	jae    e144f0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1a30>
  e13fd4:	e9 37 07 00 00       	jmp    e14710 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1c50>
  e13fd9:	48 89 de             	mov    rsi,rbx
  e13fdc:	4c 89 e2             	mov    rdx,r12
  e13fdf:	48 8b 4c 24 20       	mov    rcx,QWORD PTR [rsp+0x20]
  e13fe4:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e13fe9:	e8 d2 df fe ff       	call   e01fc0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e13fee:	49 83 fe 02          	cmp    r14,0x2
  e13ff2:	0f 83 b8 02 00 00    	jae    e142b0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x17f0>
  e13ff8:	e9 13 07 00 00       	jmp    e14710 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1c50>
  e13ffd:	48 89 de             	mov    rsi,rbx
  e14000:	4c 89 e2             	mov    rdx,r12
  e14003:	48 8b 4c 24 20       	mov    rcx,QWORD PTR [rsp+0x20]
  e14008:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e1400d:	e8 6e e9 fd ff       	call   df2980 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e14012:	49 83 fe 02          	cmp    r14,0x2
  e14016:	0f 83 d4 04 00 00    	jae    e144f0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1a30>
  e1401c:	e9 ef 06 00 00       	jmp    e14710 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1c50>
  e14021:	48 89 de             	mov    rsi,rbx
  e14024:	4c 89 e2             	mov    rdx,r12
  e14027:	48 8b 4c 24 20       	mov    rcx,QWORD PTR [rsp+0x20]
  e1402c:	e8 4f 50 fe ff       	call   df9080 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e14031:	49 83 fe 02          	cmp    r14,0x2
  e14035:	0f 83 75 02 00 00    	jae    e142b0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x17f0>
  e1403b:	e9 d0 06 00 00       	jmp    e14710 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1c50>
  e14040:	48 89 de             	mov    rsi,rbx
  e14043:	4c 89 e2             	mov    rdx,r12
  e14046:	48 8b 4c 24 20       	mov    rcx,QWORD PTR [rsp+0x20]
  e1404b:	e8 30 ba fd ff       	call   defa80 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e14050:	49 83 fe 02          	cmp    r14,0x2
  e14054:	0f 83 96 04 00 00    	jae    e144f0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1a30>
  e1405a:	e9 b1 06 00 00       	jmp    e14710 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1c50>
  e1405f:	48 89 de             	mov    rsi,rbx
  e14062:	4c 89 e2             	mov    rdx,r12
  e14065:	48 8b 4c 24 20       	mov    rcx,QWORD PTR [rsp+0x20]
  e1406a:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e1406f:	e8 4c ee fe ff       	call   e02ec0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e14074:	49 83 fe 02          	cmp    r14,0x2
  e14078:	0f 83 32 02 00 00    	jae    e142b0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x17f0>
  e1407e:	e9 8d 06 00 00       	jmp    e14710 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1c50>
  e14083:	48 89 de             	mov    rsi,rbx
  e14086:	4c 89 e2             	mov    rdx,r12
  e14089:	48 8b 4c 24 20       	mov    rcx,QWORD PTR [rsp+0x20]
  e1408e:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e14093:	e8 68 bc fe ff       	call   dffd00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e14098:	49 83 fe 02          	cmp    r14,0x2
  e1409c:	0f 83 4e 04 00 00    	jae    e144f0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1a30>
  e140a2:	e9 69 06 00 00       	jmp    e14710 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1c50>
  e140a7:	48 89 de             	mov    rsi,rbx
  e140aa:	4c 89 e2             	mov    rdx,r12
  e140ad:	48 8b 4c 24 20       	mov    rcx,QWORD PTR [rsp+0x20]
  e140b2:	e8 09 a0 fd ff       	call   dee0c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e140b7:	49 83 fe 02          	cmp    r14,0x2
  e140bb:	0f 83 ef 01 00 00    	jae    e142b0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x17f0>
  e140c1:	e9 4a 06 00 00       	jmp    e14710 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1c50>
  e140c6:	48 89 de             	mov    rsi,rbx
  e140c9:	4c 89 e2             	mov    rdx,r12
  e140cc:	48 8b 4c 24 20       	mov    rcx,QWORD PTR [rsp+0x20]
  e140d1:	e8 6a 20 fe ff       	call   df6140 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e140d6:	49 83 fe 02          	cmp    r14,0x2
  e140da:	0f 83 10 04 00 00    	jae    e144f0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1a30>
  e140e0:	e9 2b 06 00 00       	jmp    e14710 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1c50>
  e140e5:	48 89 de             	mov    rsi,rbx
  e140e8:	4c 89 e2             	mov    rdx,r12
  e140eb:	48 8b 4c 24 20       	mov    rcx,QWORD PTR [rsp+0x20]
  e140f0:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e140f5:	e8 46 e2 ff ff       	call   e12340 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e140fa:	49 83 fe 02          	cmp    r14,0x2
  e140fe:	0f 83 ac 01 00 00    	jae    e142b0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x17f0>
  e14104:	e9 07 06 00 00       	jmp    e14710 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1c50>
  e14109:	48 89 de             	mov    rsi,rbx
  e1410c:	4c 89 e2             	mov    rdx,r12
  e1410f:	48 8b 4c 24 20       	mov    rcx,QWORD PTR [rsp+0x20]
  e14114:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e14119:	e8 62 43 ff ff       	call   e08480 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e1411e:	49 83 fe 02          	cmp    r14,0x2
  e14122:	0f 83 c8 03 00 00    	jae    e144f0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1a30>
  e14128:	e9 e3 05 00 00       	jmp    e14710 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1c50>
  e1412d:	48 89 de             	mov    rsi,rbx
  e14130:	4c 89 e2             	mov    rdx,r12
  e14133:	48 8b 4c 24 20       	mov    rcx,QWORD PTR [rsp+0x20]
  e14138:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e1413d:	e8 7e c0 fe ff       	call   e001c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e14142:	49 83 fe 02          	cmp    r14,0x2
  e14146:	0f 83 64 01 00 00    	jae    e142b0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x17f0>
  e1414c:	e9 bf 05 00 00       	jmp    e14710 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1c50>
  e14151:	48 89 de             	mov    rsi,rbx
  e14154:	4c 89 e2             	mov    rdx,r12
  e14157:	48 8b 4c 24 20       	mov    rcx,QWORD PTR [rsp+0x20]
  e1415c:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e14161:	e8 9a 48 fe ff       	call   df8a00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e14166:	49 83 fe 02          	cmp    r14,0x2
  e1416a:	0f 83 80 03 00 00    	jae    e144f0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1a30>
  e14170:	e9 9b 05 00 00       	jmp    e14710 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1c50>
  e14175:	48 89 de             	mov    rsi,rbx
  e14178:	4c 89 e2             	mov    rdx,r12
  e1417b:	48 8b 4c 24 20       	mov    rcx,QWORD PTR [rsp+0x20]
  e14180:	e8 7b 99 fd ff       	call   dedb00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e14185:	49 83 fe 02          	cmp    r14,0x2
  e14189:	0f 83 21 01 00 00    	jae    e142b0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x17f0>
  e1418f:	e9 7c 05 00 00       	jmp    e14710 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1c50>
  e14194:	48 89 de             	mov    rsi,rbx
  e14197:	4c 89 e2             	mov    rdx,r12
  e1419a:	48 8b 4c 24 20       	mov    rcx,QWORD PTR [rsp+0x20]
  e1419f:	e8 9c 4a fd ff       	call   de8c40 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e141a4:	49 83 fe 02          	cmp    r14,0x2
  e141a8:	0f 83 42 03 00 00    	jae    e144f0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1a30>
  e141ae:	e9 5d 05 00 00       	jmp    e14710 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1c50>
  e141b3:	48 89 de             	mov    rsi,rbx
  e141b6:	4c 89 e2             	mov    rdx,r12
  e141b9:	48 8b 4c 24 20       	mov    rcx,QWORD PTR [rsp+0x20]
  e141be:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e141c3:	e8 b8 76 ff ff       	call   e0b880 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e141c8:	49 83 fe 02          	cmp    r14,0x2
  e141cc:	0f 83 de 00 00 00    	jae    e142b0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x17f0>
  e141d2:	e9 39 05 00 00       	jmp    e14710 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1c50>
  e141d7:	48 89 de             	mov    rsi,rbx
  e141da:	4c 89 e2             	mov    rdx,r12
  e141dd:	48 8b 4c 24 20       	mov    rcx,QWORD PTR [rsp+0x20]
  e141e2:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e141e7:	e8 14 a9 ff ff       	call   e0eb00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e141ec:	49 83 fe 02          	cmp    r14,0x2
  e141f0:	0f 83 fa 02 00 00    	jae    e144f0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1a30>
  e141f6:	e9 15 05 00 00       	jmp    e14710 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1c50>
  e141fb:	48 89 de             	mov    rsi,rbx
  e141fe:	4c 89 e2             	mov    rdx,r12
  e14201:	48 8b 4c 24 20       	mov    rcx,QWORD PTR [rsp+0x20]
  e14206:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e1420b:	e8 f0 85 ff ff       	call   e0c800 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e14210:	49 83 fe 02          	cmp    r14,0x2
  e14214:	0f 83 96 00 00 00    	jae    e142b0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x17f0>
  e1421a:	e9 f1 04 00 00       	jmp    e14710 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1c50>
  e1421f:	48 89 de             	mov    rsi,rbx
  e14222:	4c 89 e2             	mov    rdx,r12
  e14225:	48 8b 4c 24 20       	mov    rcx,QWORD PTR [rsp+0x20]
  e1422a:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e1422f:	e8 4c 38 ff ff       	call   e07a80 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e14234:	49 83 fe 02          	cmp    r14,0x2
  e14238:	0f 83 b2 02 00 00    	jae    e144f0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1a30>
  e1423e:	e9 cd 04 00 00       	jmp    e14710 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1c50>
  e14243:	48 89 de             	mov    rsi,rbx
  e14246:	4c 89 e2             	mov    rdx,r12
  e14249:	48 8b 4c 24 20       	mov    rcx,QWORD PTR [rsp+0x20]
  e1424e:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e14253:	e8 e8 dd fd ff       	call   df2040 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e14258:	49 83 fe 02          	cmp    r14,0x2
  e1425c:	73 52                	jae    e142b0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x17f0>
  e1425e:	e9 ad 04 00 00       	jmp    e14710 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1c50>
  e14263:	48 89 de             	mov    rsi,rbx
  e14266:	4c 89 e2             	mov    rdx,r12
  e14269:	48 8b 4c 24 20       	mov    rcx,QWORD PTR [rsp+0x20]
  e1426e:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e14273:	e8 48 36 fe ff       	call   df78c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e14278:	49 83 fe 02          	cmp    r14,0x2
  e1427c:	0f 83 6e 02 00 00    	jae    e144f0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1a30>
  e14282:	e9 89 04 00 00       	jmp    e14710 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1c50>
  e14287:	48 89 de             	mov    rsi,rbx
  e1428a:	4c 89 e2             	mov    rdx,r12
  e1428d:	48 8b 4c 24 20       	mov    rcx,QWORD PTR [rsp+0x20]
  e14292:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e14297:	e8 a4 d5 fd ff       	call   df1840 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e1429c:	49 83 fe 02          	cmp    r14,0x2
  e142a0:	0f 82 6a 04 00 00    	jb     e14710 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1c50>
  e142a6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  e142ad:	00 00 00 
  e142b0:	48 8b 44 24 50       	mov    rax,QWORD PTR [rsp+0x50]
  e142b5:	4c 8b 38             	mov    r15,QWORD PTR [rax]
  e142b8:	4c 8b a4 24 60 01 00 	mov    r12,QWORD PTR [rsp+0x160]
  e142bf:	00 
  e142c0:	4c 8b ac 24 f0 00 00 	mov    r13,QWORD PTR [rsp+0xf0]
  e142c7:	00 
  e142c8:	48 8b 44 24 68       	mov    rax,QWORD PTR [rsp+0x68]
  e142cd:	48 8b 8c 24 98 00 00 	mov    rcx,QWORD PTR [rsp+0x98]
  e142d4:	00 
  e142d5:	eb 42                	jmp    e14319 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1859>
  e142d7:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e142dc:	0f 29 84 24 90 01 00 	movaps XMMWORD PTR [rsp+0x190],xmm0
  e142e3:	00 
  e142e4:	48 89 d7             	mov    rdi,rdx
  e142e7:	48 89 de             	mov    rsi,rbx
  e142ea:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e142ef:	4c 89 f9             	mov    rcx,r15
  e142f2:	4c 8d 8c 24 90 01 00 	lea    r9,[rsp+0x190]
  e142f9:	00 
  e142fa:	e8 81 9b f3 ff       	call   d4de80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e142ff:	90                   	nop
  e14300:	4d 0f af fe          	imul   r15,r14
  e14304:	49 83 c5 18          	add    r13,0x18
  e14308:	48 89 d8             	mov    rax,rbx
  e1430b:	49 ff cc             	dec    r12
  e1430e:	48 8b 4c 24 60       	mov    rcx,QWORD PTR [rsp+0x60]
  e14313:	0f 84 f7 03 00 00    	je     e14710 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1c50>
  e14319:	48 89 c2             	mov    rdx,rax
  e1431c:	4d 8b 75 f8          	mov    r14,QWORD PTR [r13-0x8]
  e14320:	4d 8b 45 00          	mov    r8,QWORD PTR [r13+0x0]
  e14324:	4c 03 44 24 50       	add    r8,QWORD PTR [rsp+0x50]
  e14329:	4c 89 b4 24 30 01 00 	mov    QWORD PTR [rsp+0x130],r14
  e14330:	00 
  e14331:	49 8d 46 fe          	lea    rax,[r14-0x2]
  e14335:	48 83 f8 0e          	cmp    rax,0xe
  e14339:	0f 87 69 43 00 00    	ja     e186a8 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5be8>
  e1433f:	48 89 cb             	mov    rbx,rcx
  e14342:	48 8d 0d 77 f7 28 ff 	lea    rcx,[rip+0xffffffffff28f777]        # a3ac0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x30f70>
  e14349:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  e1434d:	48 01 c8             	add    rax,rcx
  e14350:	48 89 54 24 60       	mov    QWORD PTR [rsp+0x60],rdx
  e14355:	ff e0                	jmp    rax
  e14357:	48 89 d7             	mov    rdi,rdx
  e1435a:	48 89 de             	mov    rsi,rbx
  e1435d:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e14362:	4c 89 f9             	mov    rcx,r15
  e14365:	e8 56 03 f3 ff       	call   d446c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e1436a:	eb 94                	jmp    e14300 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1840>
  e1436c:	48 89 d7             	mov    rdi,rdx
  e1436f:	48 89 de             	mov    rsi,rbx
  e14372:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e14377:	4c 89 f9             	mov    rcx,r15
  e1437a:	e8 01 58 f3 ff       	call   d49b80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e1437f:	e9 7c ff ff ff       	jmp    e14300 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1840>
  e14384:	48 89 d7             	mov    rdi,rdx
  e14387:	48 89 de             	mov    rsi,rbx
  e1438a:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e1438f:	4c 89 f9             	mov    rcx,r15
  e14392:	e8 69 0d f3 ff       	call   d45100 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e14397:	e9 64 ff ff ff       	jmp    e14300 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1840>
  e1439c:	48 89 d7             	mov    rdi,rdx
  e1439f:	48 89 de             	mov    rsi,rbx
  e143a2:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e143a7:	4c 89 f9             	mov    rcx,r15
  e143aa:	e8 91 70 f3 ff       	call   d4b440 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e143af:	e9 4c ff ff ff       	jmp    e14300 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1840>
  e143b4:	48 89 d7             	mov    rdi,rdx
  e143b7:	48 89 de             	mov    rsi,rbx
  e143ba:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e143bf:	4c 89 f9             	mov    rcx,r15
  e143c2:	e8 f9 36 f3 ff       	call   d47ac0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e143c7:	e9 34 ff ff ff       	jmp    e14300 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1840>
  e143cc:	48 89 d7             	mov    rdi,rdx
  e143cf:	48 89 de             	mov    rsi,rbx
  e143d2:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e143d7:	4c 89 f9             	mov    rcx,r15
  e143da:	e8 a1 06 f3 ff       	call   d44a80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e143df:	e9 1c ff ff ff       	jmp    e14300 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1840>
  e143e4:	48 89 d7             	mov    rdi,rdx
  e143e7:	48 89 de             	mov    rsi,rbx
  e143ea:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e143ef:	4c 89 f9             	mov    rcx,r15
  e143f2:	e8 09 09 f3 ff       	call   d44d00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e143f7:	e9 04 ff ff ff       	jmp    e14300 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1840>
  e143fc:	48 89 d7             	mov    rdi,rdx
  e143ff:	48 89 de             	mov    rsi,rbx
  e14402:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e14407:	4c 89 f9             	mov    rcx,r15
  e1440a:	e8 31 20 f3 ff       	call   d46440 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e1440f:	e9 ec fe ff ff       	jmp    e14300 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1840>
  e14414:	48 89 d7             	mov    rdi,rdx
  e14417:	48 89 de             	mov    rsi,rbx
  e1441a:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e1441f:	4c 89 f9             	mov    rcx,r15
  e14422:	e8 19 04 f3 ff       	call   d44840 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e14427:	e9 d4 fe ff ff       	jmp    e14300 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1840>
  e1442c:	48 89 d7             	mov    rdi,rdx
  e1442f:	48 89 de             	mov    rsi,rbx
  e14432:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e14437:	4c 89 f9             	mov    rcx,r15
  e1443a:	e8 81 11 f3 ff       	call   d455c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e1443f:	e9 bc fe ff ff       	jmp    e14300 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1840>
  e14444:	48 89 d7             	mov    rdi,rdx
  e14447:	48 89 de             	mov    rsi,rbx
  e1444a:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e1444f:	4c 89 f9             	mov    rcx,r15
  e14452:	e8 a9 84 f3 ff       	call   d4c900 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e14457:	e9 a4 fe ff ff       	jmp    e14300 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1840>
  e1445c:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e14461:	0f 29 84 24 90 01 00 	movaps XMMWORD PTR [rsp+0x190],xmm0
  e14468:	00 
  e14469:	48 89 d7             	mov    rdi,rdx
  e1446c:	48 89 de             	mov    rsi,rbx
  e1446f:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e14474:	4c 89 f9             	mov    rcx,r15
  e14477:	4c 8d 8c 24 90 01 00 	lea    r9,[rsp+0x190]
  e1447e:	00 
  e1447f:	e8 bc 18 f3 ff       	call   d45d40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e14484:	e9 77 fe ff ff       	jmp    e14300 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1840>
  e14489:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e1448e:	0f 29 84 24 90 01 00 	movaps XMMWORD PTR [rsp+0x190],xmm0
  e14495:	00 
  e14496:	48 89 d7             	mov    rdi,rdx
  e14499:	48 89 de             	mov    rsi,rbx
  e1449c:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e144a1:	4c 89 f9             	mov    rcx,r15
  e144a4:	4c 8d 8c 24 90 01 00 	lea    r9,[rsp+0x190]
  e144ab:	00 
  e144ac:	e8 cf 48 f3 ff       	call   d48d80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e144b1:	e9 4a fe ff ff       	jmp    e14300 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1840>
  e144b6:	48 89 d7             	mov    rdi,rdx
  e144b9:	48 89 de             	mov    rsi,rbx
  e144bc:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e144c1:	4c 89 f9             	mov    rcx,r15
  e144c4:	e8 f7 29 f3 ff       	call   d46ec0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e144c9:	e9 32 fe ff ff       	jmp    e14300 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1840>
  e144ce:	48 89 de             	mov    rsi,rbx
  e144d1:	4c 89 e2             	mov    rdx,r12
  e144d4:	48 8b 4c 24 20       	mov    rcx,QWORD PTR [rsp+0x20]
  e144d9:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e144de:	e8 dd ce ff ff       	call   e113c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e144e3:	49 83 fe 02          	cmp    r14,0x2
  e144e7:	0f 82 23 02 00 00    	jb     e14710 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1c50>
  e144ed:	0f 1f 00             	nop    DWORD PTR [rax]
  e144f0:	48 8b 44 24 50       	mov    rax,QWORD PTR [rsp+0x50]
  e144f5:	4c 8b 38             	mov    r15,QWORD PTR [rax]
  e144f8:	4c 8b a4 24 60 01 00 	mov    r12,QWORD PTR [rsp+0x160]
  e144ff:	00 
  e14500:	4c 8b ac 24 f0 00 00 	mov    r13,QWORD PTR [rsp+0xf0]
  e14507:	00 
  e14508:	48 8b 44 24 68       	mov    rax,QWORD PTR [rsp+0x68]
  e1450d:	48 8b 8c 24 98 00 00 	mov    rcx,QWORD PTR [rsp+0x98]
  e14514:	00 
  e14515:	eb 42                	jmp    e14559 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1a99>
  e14517:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e1451c:	0f 29 84 24 90 01 00 	movaps XMMWORD PTR [rsp+0x190],xmm0
  e14523:	00 
  e14524:	48 89 d7             	mov    rdi,rdx
  e14527:	48 89 de             	mov    rsi,rbx
  e1452a:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e1452f:	4c 89 f9             	mov    rcx,r15
  e14532:	4c 8d 8c 24 90 01 00 	lea    r9,[rsp+0x190]
  e14539:	00 
  e1453a:	e8 41 99 f3 ff       	call   d4de80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e1453f:	90                   	nop
  e14540:	4d 0f af fe          	imul   r15,r14
  e14544:	49 83 c5 18          	add    r13,0x18
  e14548:	48 89 d8             	mov    rax,rbx
  e1454b:	49 ff cc             	dec    r12
  e1454e:	48 8b 4c 24 60       	mov    rcx,QWORD PTR [rsp+0x60]
  e14553:	0f 84 b7 01 00 00    	je     e14710 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1c50>
  e14559:	48 89 c2             	mov    rdx,rax
  e1455c:	4d 8b 75 f8          	mov    r14,QWORD PTR [r13-0x8]
  e14560:	4d 8b 45 00          	mov    r8,QWORD PTR [r13+0x0]
  e14564:	4c 03 44 24 50       	add    r8,QWORD PTR [rsp+0x50]
  e14569:	4c 89 b4 24 30 01 00 	mov    QWORD PTR [rsp+0x130],r14
  e14570:	00 
  e14571:	49 8d 46 fe          	lea    rax,[r14-0x2]
  e14575:	48 83 f8 0e          	cmp    rax,0xe
  e14579:	0f 87 29 41 00 00    	ja     e186a8 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5be8>
  e1457f:	48 89 cb             	mov    rbx,rcx
  e14582:	48 8d 0d c3 f4 28 ff 	lea    rcx,[rip+0xffffffffff28f4c3]        # a3a4c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x30efc>
  e14589:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  e1458d:	48 01 c8             	add    rax,rcx
  e14590:	48 89 54 24 60       	mov    QWORD PTR [rsp+0x60],rdx
  e14595:	ff e0                	jmp    rax
  e14597:	48 89 d7             	mov    rdi,rdx
  e1459a:	48 89 de             	mov    rsi,rbx
  e1459d:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e145a2:	4c 89 f9             	mov    rcx,r15
  e145a5:	e8 16 01 f3 ff       	call   d446c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e145aa:	eb 94                	jmp    e14540 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1a80>
  e145ac:	48 89 d7             	mov    rdi,rdx
  e145af:	48 89 de             	mov    rsi,rbx
  e145b2:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e145b7:	4c 89 f9             	mov    rcx,r15
  e145ba:	e8 c1 55 f3 ff       	call   d49b80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e145bf:	e9 7c ff ff ff       	jmp    e14540 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1a80>
  e145c4:	48 89 d7             	mov    rdi,rdx
  e145c7:	48 89 de             	mov    rsi,rbx
  e145ca:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e145cf:	4c 89 f9             	mov    rcx,r15
  e145d2:	e8 29 0b f3 ff       	call   d45100 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e145d7:	e9 64 ff ff ff       	jmp    e14540 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1a80>
  e145dc:	48 89 d7             	mov    rdi,rdx
  e145df:	48 89 de             	mov    rsi,rbx
  e145e2:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e145e7:	4c 89 f9             	mov    rcx,r15
  e145ea:	e8 51 6e f3 ff       	call   d4b440 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e145ef:	e9 4c ff ff ff       	jmp    e14540 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1a80>
  e145f4:	48 89 d7             	mov    rdi,rdx
  e145f7:	48 89 de             	mov    rsi,rbx
  e145fa:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e145ff:	4c 89 f9             	mov    rcx,r15
  e14602:	e8 b9 34 f3 ff       	call   d47ac0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e14607:	e9 34 ff ff ff       	jmp    e14540 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1a80>
  e1460c:	48 89 d7             	mov    rdi,rdx
  e1460f:	48 89 de             	mov    rsi,rbx
  e14612:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e14617:	4c 89 f9             	mov    rcx,r15
  e1461a:	e8 61 04 f3 ff       	call   d44a80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e1461f:	e9 1c ff ff ff       	jmp    e14540 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1a80>
  e14624:	48 89 d7             	mov    rdi,rdx
  e14627:	48 89 de             	mov    rsi,rbx
  e1462a:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e1462f:	4c 89 f9             	mov    rcx,r15
  e14632:	e8 c9 06 f3 ff       	call   d44d00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e14637:	e9 04 ff ff ff       	jmp    e14540 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1a80>
  e1463c:	48 89 d7             	mov    rdi,rdx
  e1463f:	48 89 de             	mov    rsi,rbx
  e14642:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e14647:	4c 89 f9             	mov    rcx,r15
  e1464a:	e8 f1 1d f3 ff       	call   d46440 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e1464f:	e9 ec fe ff ff       	jmp    e14540 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1a80>
  e14654:	48 89 d7             	mov    rdi,rdx
  e14657:	48 89 de             	mov    rsi,rbx
  e1465a:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e1465f:	4c 89 f9             	mov    rcx,r15
  e14662:	e8 d9 01 f3 ff       	call   d44840 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e14667:	e9 d4 fe ff ff       	jmp    e14540 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1a80>
  e1466c:	48 89 d7             	mov    rdi,rdx
  e1466f:	48 89 de             	mov    rsi,rbx
  e14672:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e14677:	4c 89 f9             	mov    rcx,r15
  e1467a:	e8 41 0f f3 ff       	call   d455c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e1467f:	e9 bc fe ff ff       	jmp    e14540 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1a80>
  e14684:	48 89 d7             	mov    rdi,rdx
  e14687:	48 89 de             	mov    rsi,rbx
  e1468a:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e1468f:	4c 89 f9             	mov    rcx,r15
  e14692:	e8 69 82 f3 ff       	call   d4c900 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e14697:	e9 a4 fe ff ff       	jmp    e14540 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1a80>
  e1469c:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e146a1:	0f 29 84 24 90 01 00 	movaps XMMWORD PTR [rsp+0x190],xmm0
  e146a8:	00 
  e146a9:	48 89 d7             	mov    rdi,rdx
  e146ac:	48 89 de             	mov    rsi,rbx
  e146af:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e146b4:	4c 89 f9             	mov    rcx,r15
  e146b7:	4c 8d 8c 24 90 01 00 	lea    r9,[rsp+0x190]
  e146be:	00 
  e146bf:	e8 7c 16 f3 ff       	call   d45d40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e146c4:	e9 77 fe ff ff       	jmp    e14540 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1a80>
  e146c9:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e146ce:	0f 29 84 24 90 01 00 	movaps XMMWORD PTR [rsp+0x190],xmm0
  e146d5:	00 
  e146d6:	48 89 d7             	mov    rdi,rdx
  e146d9:	48 89 de             	mov    rsi,rbx
  e146dc:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e146e1:	4c 89 f9             	mov    rcx,r15
  e146e4:	4c 8d 8c 24 90 01 00 	lea    r9,[rsp+0x190]
  e146eb:	00 
  e146ec:	e8 8f 46 f3 ff       	call   d48d80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e146f1:	e9 4a fe ff ff       	jmp    e14540 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1a80>
  e146f6:	48 89 d7             	mov    rdi,rdx
  e146f9:	48 89 de             	mov    rsi,rbx
  e146fc:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  e14701:	4c 89 f9             	mov    rcx,r15
  e14704:	e8 b7 27 f3 ff       	call   d46ec0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e14709:	e9 32 fe ff ff       	jmp    e14540 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1a80>
  e1470e:	66 90                	xchg   ax,ax
  e14710:	80 bc 24 00 01 00 00 	cmp    BYTE PTR [rsp+0x100],0x0
  e14717:	00 
  e14718:	74 56                	je     e14770 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1cb0>
  e1471a:	48 8b 8c 24 68 01 00 	mov    rcx,QWORD PTR [rsp+0x168]
  e14721:	00 
  e14722:	48 85 c9             	test   rcx,rcx
  e14725:	4c 8b 5c 24 58       	mov    r11,QWORD PTR [rsp+0x58]
  e1472a:	4c 8b 64 24 28       	mov    r12,QWORD PTR [rsp+0x28]
  e1472f:	0f 84 29 40 00 00    	je     e1875e <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5c9e>
  e14735:	4c 89 e0             	mov    rax,r12
  e14738:	48 09 c8             	or     rax,rcx
  e1473b:	48 c1 e8 20          	shr    rax,0x20
  e1473f:	0f 84 f0 02 00 00    	je     e14a35 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1f75>
  e14745:	4c 89 e0             	mov    rax,r12
  e14748:	31 d2                	xor    edx,edx
  e1474a:	48 f7 f1             	div    rcx
  e1474d:	48 83 bc 24 d8 00 00 	cmp    QWORD PTR [rsp+0xd8],0x0
  e14754:	00 00 
  e14756:	0f 85 ef 02 00 00    	jne    e14a4b <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1f8b>
  e1475c:	e9 9f f6 ff ff       	jmp    e13e00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1340>
  e14761:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  e14768:	0f 1f 84 00 00 00 00 
  e1476f:	00 
  e14770:	48 83 bc 24 d8 00 00 	cmp    QWORD PTR [rsp+0xd8],0x0
  e14777:	00 00 
  e14779:	4c 8b 5c 24 58       	mov    r11,QWORD PTR [rsp+0x58]
  e1477e:	4c 8b 64 24 28       	mov    r12,QWORD PTR [rsp+0x28]
  e14783:	0f 84 77 f6 ff ff    	je     e13e00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1340>
  e14789:	48 83 c3 10          	add    rbx,0x10
  e1478d:	48 8b 84 24 c8 00 00 	mov    rax,QWORD PTR [rsp+0xc8]
  e14794:	00 
  e14795:	48 89 84 24 b0 00 00 	mov    QWORD PTR [rsp+0xb0],rax
  e1479c:	00 
  e1479d:	4c 8b b4 24 d0 00 00 	mov    r14,QWORD PTR [rsp+0xd0]
  e147a4:	00 
  e147a5:	4c 89 e2             	mov    rdx,r12
  e147a8:	48 8b 84 24 d8 00 00 	mov    rax,QWORD PTR [rsp+0xd8]
  e147af:	00 
  e147b0:	31 f6                	xor    esi,esi
  e147b2:	eb 4e                	jmp    e14802 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1d42>
  e147b4:	66 66 66 2e 0f 1f 84 	data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  e147bb:	00 00 00 00 00 
  e147c0:	48 8b 74 24 70       	mov    rsi,QWORD PTR [rsp+0x70]
  e147c5:	48 83 c6 02          	add    rsi,0x2
  e147c9:	48 8b 44 24 48       	mov    rax,QWORD PTR [rsp+0x48]
  e147ce:	48 ff c8             	dec    rax
  e147d1:	49 83 c6 40          	add    r14,0x40
  e147d5:	48 8b 5c 24 40       	mov    rbx,QWORD PTR [rsp+0x40]
  e147da:	48 83 c3 40          	add    rbx,0x40
  e147de:	48 83 84 24 b0 00 00 	add    QWORD PTR [rsp+0xb0],0x20
  e147e5:	00 20 
  e147e7:	48 85 c0             	test   rax,rax
  e147ea:	4c 8b 64 24 28       	mov    r12,QWORD PTR [rsp+0x28]
  e147ef:	4c 8b 5c 24 58       	mov    r11,QWORD PTR [rsp+0x58]
  e147f4:	48 8b 94 24 b8 00 00 	mov    rdx,QWORD PTR [rsp+0xb8]
  e147fb:	00 
  e147fc:	0f 84 fe f5 ff ff    	je     e13e00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1340>
  e14802:	48 89 44 24 48       	mov    QWORD PTR [rsp+0x48],rax
  e14807:	48 83 ea 02          	sub    rdx,0x2
  e1480b:	b8 02 00 00 00       	mov    eax,0x2
  e14810:	48 83 d8 00          	sbb    rax,0x0
  e14814:	4c 89 e7             	mov    rdi,r12
  e14817:	48 29 f7             	sub    rdi,rsi
  e1481a:	48 83 ff 02          	cmp    rdi,0x2
  e1481e:	b9 02 00 00 00       	mov    ecx,0x2
  e14823:	48 0f 43 f9          	cmovae rdi,rcx
  e14827:	48 89 7c 24 60       	mov    QWORD PTR [rsp+0x60],rdi
  e1482c:	0f 57 c0             	xorps  xmm0,xmm0
  e1482f:	0f 29 84 24 a0 02 00 	movaps XMMWORD PTR [rsp+0x2a0],xmm0
  e14836:	00 
  e14837:	0f 29 84 24 90 02 00 	movaps XMMWORD PTR [rsp+0x290],xmm0
  e1483e:	00 
  e1483f:	0f 29 84 24 40 01 00 	movaps XMMWORD PTR [rsp+0x140],xmm0
  e14846:	00 
  e14847:	0f 29 84 24 30 01 00 	movaps XMMWORD PTR [rsp+0x130],xmm0
  e1484e:	00 
  e1484f:	0f 57 c9             	xorps  xmm1,xmm1
  e14852:	66 0f 57 db          	xorpd  xmm3,xmm3
  e14856:	66 0f 57 d2          	xorpd  xmm2,xmm2
  e1485a:	49 29 f4             	sub    r12,rsi
  e1485d:	0f 84 82 00 00 00    	je     e148e5 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1e25>
  e14863:	31 c9                	xor    ecx,ecx
  e14865:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  e1486c:	00 00 00 00 
  e14870:	66 0f 10 44 4b f0    	movupd xmm0,XMMWORD PTR [rbx+rcx*2-0x10]
  e14876:	66 0f 10 0c 4b       	movupd xmm1,XMMWORD PTR [rbx+rcx*2]
  e1487b:	66 41 0f 10 54 4e f0 	movupd xmm2,XMMWORD PTR [r14+rcx*2-0x10]
  e14882:	66 41 0f 10 1c 4e    	movupd xmm3,XMMWORD PTR [r14+rcx*2]
  e14888:	66 0f 28 e1          	movapd xmm4,xmm1
  e1488c:	66 0f 59 e3          	mulpd  xmm4,xmm3
  e14890:	66 0f 28 e8          	movapd xmm5,xmm0
  e14894:	66 0f 59 ea          	mulpd  xmm5,xmm2
  e14898:	66 0f 5c ec          	subpd  xmm5,xmm4
  e1489c:	66 0f 29 ac 0c 90 02 	movapd XMMWORD PTR [rsp+rcx*1+0x290],xmm5
  e148a3:	00 00 
  e148a5:	66 0f 59 ca          	mulpd  xmm1,xmm2
  e148a9:	66 0f 59 c3          	mulpd  xmm0,xmm3
  e148ad:	66 0f 58 c1          	addpd  xmm0,xmm1
  e148b1:	66 0f 29 84 0c 30 01 	movapd XMMWORD PTR [rsp+rcx*1+0x130],xmm0
  e148b8:	00 00 
  e148ba:	48 83 c1 10          	add    rcx,0x10
  e148be:	48 ff c8             	dec    rax
  e148c1:	75 ad                	jne    e14870 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1db0>
  e148c3:	66 0f 28 94 24 90 02 	movapd xmm2,XMMWORD PTR [rsp+0x290]
  e148ca:	00 00 
  e148cc:	66 0f 28 9c 24 a0 02 	movapd xmm3,XMMWORD PTR [rsp+0x2a0]
  e148d3:	00 00 
  e148d5:	0f 28 84 24 30 01 00 	movaps xmm0,XMMWORD PTR [rsp+0x130]
  e148dc:	00 
  e148dd:	0f 28 8c 24 40 01 00 	movaps xmm1,XMMWORD PTR [rsp+0x140]
  e148e4:	00 
  e148e5:	48 89 74 24 70       	mov    QWORD PTR [rsp+0x70],rsi
  e148ea:	48 89 94 24 b8 00 00 	mov    QWORD PTR [rsp+0xb8],rdx
  e148f1:	00 
  e148f2:	48 89 5c 24 40       	mov    QWORD PTR [rsp+0x40],rbx
  e148f7:	66 0f 28 e2          	movapd xmm4,xmm2
  e148fb:	66 0f 14 e3          	unpcklpd xmm4,xmm3
  e148ff:	66 0f 15 d3          	unpckhpd xmm2,xmm3
  e14903:	66 0f 29 a4 24 90 02 	movapd XMMWORD PTR [rsp+0x290],xmm4
  e1490a:	00 00 
  e1490c:	66 0f 29 94 24 a0 02 	movapd XMMWORD PTR [rsp+0x2a0],xmm2
  e14913:	00 00 
  e14915:	0f 28 d0             	movaps xmm2,xmm0
  e14918:	0f 16 d1             	movlhps xmm2,xmm1
  e1491b:	66 0f 15 c1          	unpckhpd xmm0,xmm1
  e1491f:	0f 29 94 24 30 01 00 	movaps XMMWORD PTR [rsp+0x130],xmm2
  e14926:	00 
  e14927:	0f 29 84 24 40 01 00 	movaps XMMWORD PTR [rsp+0x140],xmm0
  e1492e:	00 
  e1492f:	4c 39 5c 24 20       	cmp    QWORD PTR [rsp+0x20],r11
  e14934:	0f 84 86 fe ff ff    	je     e147c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1d00>
  e1493a:	48 c1 64 24 60 04    	shl    QWORD PTR [rsp+0x60],0x4
  e14940:	4c 8b ac 24 b0 00 00 	mov    r13,QWORD PTR [rsp+0xb0]
  e14947:	00 
  e14948:	48 8b 9c 24 20 01 00 	mov    rbx,QWORD PTR [rsp+0x120]
  e1494f:	00 
  e14950:	45 31 ff             	xor    r15d,r15d
  e14953:	eb 2a                	jmp    e1497f <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1ebf>
  e14955:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  e1495c:	00 00 00 00 
  e14960:	41 0f 11 4d 00       	movups XMMWORD PTR [r13+0x0],xmm1
  e14965:	41 0f 11 45 10       	movups XMMWORD PTR [r13+0x10],xmm0
  e1496a:	49 83 c7 10          	add    r15,0x10
  e1496e:	4c 03 ac 24 90 00 00 	add    r13,QWORD PTR [rsp+0x90]
  e14975:	00 
  e14976:	48 ff cb             	dec    rbx
  e14979:	0f 84 41 fe ff ff    	je     e147c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1d00>
  e1497f:	42 0f 28 84 3c 90 02 	movaps xmm0,XMMWORD PTR [rsp+r15*1+0x290]
  e14986:	00 00 
  e14988:	42 0f 28 94 3c 30 01 	movaps xmm2,XMMWORD PTR [rsp+r15*1+0x130]
  e1498f:	00 00 
  e14991:	0f 28 c8             	movaps xmm1,xmm0
  e14994:	0f 16 ca             	movlhps xmm1,xmm2
  e14997:	66 0f 15 c2          	unpckhpd xmm0,xmm2
  e1499b:	49 83 fc 01          	cmp    r12,0x1
  e1499f:	77 bf                	ja     e14960 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1ea0>
  e149a1:	48 8d 84 24 b0 01 00 	lea    rax,[rsp+0x1b0]
  e149a8:	00 
  e149a9:	0f 57 d2             	xorps  xmm2,xmm2
  e149ac:	0f 29 90 d0 00 00 00 	movaps XMMWORD PTR [rax+0xd0],xmm2
  e149b3:	0f 29 90 c0 00 00 00 	movaps XMMWORD PTR [rax+0xc0],xmm2
  e149ba:	0f 29 90 b0 00 00 00 	movaps XMMWORD PTR [rax+0xb0],xmm2
  e149c1:	0f 29 90 a0 00 00 00 	movaps XMMWORD PTR [rax+0xa0],xmm2
  e149c8:	0f 29 90 90 00 00 00 	movaps XMMWORD PTR [rax+0x90],xmm2
  e149cf:	0f 29 90 80 00 00 00 	movaps XMMWORD PTR [rax+0x80],xmm2
  e149d6:	0f 29 50 70          	movaps XMMWORD PTR [rax+0x70],xmm2
  e149da:	0f 29 50 60          	movaps XMMWORD PTR [rax+0x60],xmm2
  e149de:	0f 29 50 50          	movaps XMMWORD PTR [rax+0x50],xmm2
  e149e2:	0f 29 50 40          	movaps XMMWORD PTR [rax+0x40],xmm2
  e149e6:	0f 29 50 30          	movaps XMMWORD PTR [rax+0x30],xmm2
  e149ea:	0f 29 50 20          	movaps XMMWORD PTR [rax+0x20],xmm2
  e149ee:	0f 29 50 10          	movaps XMMWORD PTR [rax+0x10],xmm2
  e149f2:	0f 29 10             	movaps XMMWORD PTR [rax],xmm2
  e149f5:	0f 29 8c 24 90 01 00 	movaps XMMWORD PTR [rsp+0x190],xmm1
  e149fc:	00 
  e149fd:	0f 29 84 24 a0 01 00 	movaps XMMWORD PTR [rsp+0x1a0],xmm0
  e14a04:	00 
  e14a05:	4c 89 ef             	mov    rdi,r13
  e14a08:	48 8d b4 24 90 01 00 	lea    rsi,[rsp+0x190]
  e14a0f:	00 
  e14a10:	48 8b 54 24 60       	mov    rdx,QWORD PTR [rsp+0x60]
  e14a15:	ff 15 85 d2 43 00    	call   QWORD PTR [rip+0x43d285]        # 1251ca0 <memcpy@GLIBC_2.14>
  e14a1b:	49 83 c7 10          	add    r15,0x10
  e14a1f:	4c 03 ac 24 90 00 00 	add    r13,QWORD PTR [rsp+0x90]
  e14a26:	00 
  e14a27:	48 ff cb             	dec    rbx
  e14a2a:	0f 85 4f ff ff ff    	jne    e1497f <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1ebf>
  e14a30:	e9 8b fd ff ff       	jmp    e147c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1d00>
  e14a35:	44 89 e0             	mov    eax,r12d
  e14a38:	31 d2                	xor    edx,edx
  e14a3a:	f7 f1                	div    ecx
  e14a3c:	48 83 bc 24 d8 00 00 	cmp    QWORD PTR [rsp+0xd8],0x0
  e14a43:	00 00 
  e14a45:	0f 84 b5 f3 ff ff    	je     e13e00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1340>
  e14a4b:	4b 8d 0c 1b          	lea    rcx,[r11+r11*1]
  e14a4f:	48 0f af c1          	imul   rax,rcx
  e14a53:	48 0f af 8c 24 68 01 	imul   rcx,QWORD PTR [rsp+0x168]
  e14a5a:	00 00 
  e14a5c:	48 8b 94 24 58 01 00 	mov    rdx,QWORD PTR [rsp+0x158]
  e14a63:	00 
  e14a64:	48 8d 04 c2          	lea    rax,[rdx+rax*8]
  e14a68:	48 8b 94 24 08 01 00 	mov    rdx,QWORD PTR [rsp+0x108]
  e14a6f:	00 
  e14a70:	48 8d 14 ca          	lea    rdx,[rdx+rcx*8]
  e14a74:	48 83 c3 30          	add    rbx,0x30
  e14a78:	48 8b b4 24 f8 00 00 	mov    rsi,QWORD PTR [rsp+0xf8]
  e14a7f:	00 
  e14a80:	48 8b bc 24 88 01 00 	mov    rdi,QWORD PTR [rsp+0x188]
  e14a87:	00 
  e14a88:	45 31 c0             	xor    r8d,r8d
  e14a8b:	eb 3a                	jmp    e14ac7 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2007>
  e14a8d:	0f 1f 00             	nop    DWORD PTR [rax]
  e14a90:	48 8d 4e e0          	lea    rcx,[rsi-0x20]
  e14a94:	4c 8d 4e f0          	lea    r9,[rsi-0x10]
  e14a98:	4c 8d 56 10          	lea    r10,[rsi+0x10]
  e14a9c:	66 0f 2b 21          	movntpd XMMWORD PTR [rcx],xmm4
  e14aa0:	66 41 0f 2b 19       	movntpd XMMWORD PTR [r9],xmm3
  e14aa5:	66 0f 2b 16          	movntpd XMMWORD PTR [rsi],xmm2
  e14aa9:	66 41 0f 2b 02       	movntpd XMMWORD PTR [r10],xmm0
  e14aae:	48 03 b4 24 28 01 00 	add    rsi,QWORD PTR [rsp+0x128]
  e14ab5:	00 
  e14ab6:	48 83 c3 40          	add    rbx,0x40
  e14aba:	49 83 c0 02          	add    r8,0x2
  e14abe:	48 ff c7             	inc    rdi
  e14ac1:	0f 84 39 f3 ff ff    	je     e13e00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1340>
  e14ac7:	4d 89 c1             	mov    r9,r8
  e14aca:	48 8b 8c 24 a8 00 00 	mov    rcx,QWORD PTR [rsp+0xa8]
  e14ad1:	00 
  e14ad2:	49 d3 e9             	shr    r9,cl
  e14ad5:	49 c1 e1 05          	shl    r9,0x5
  e14ad9:	66 42 0f 10 04 08    	movupd xmm0,XMMWORD PTR [rax+r9*1]
  e14adf:	66 42 0f 10 54 08 10 	movupd xmm2,XMMWORD PTR [rax+r9*1+0x10]
  e14ae6:	4c 89 c1             	mov    rcx,r8
  e14ae9:	48 23 8c 24 a0 00 00 	and    rcx,QWORD PTR [rsp+0xa0]
  e14af0:	00 
  e14af1:	48 c1 e1 05          	shl    rcx,0x5
  e14af5:	66 0f 10 1c 0a       	movupd xmm3,XMMWORD PTR [rdx+rcx*1]
  e14afa:	66 0f 10 4c 0a 10    	movupd xmm1,XMMWORD PTR [rdx+rcx*1+0x10]
  e14b00:	66 0f 10 74 0a 20    	movupd xmm6,XMMWORD PTR [rdx+rcx*1+0x20]
  e14b06:	66 0f 10 64 0a 30    	movupd xmm4,XMMWORD PTR [rdx+rcx*1+0x30]
  e14b0c:	66 0f 28 ea          	movapd xmm5,xmm2
  e14b10:	66 0f 59 e9          	mulpd  xmm5,xmm1
  e14b14:	66 44 0f 28 c0       	movapd xmm8,xmm0
  e14b19:	66 44 0f 59 c3       	mulpd  xmm8,xmm3
  e14b1e:	66 44 0f 5c c5       	subpd  xmm8,xmm5
  e14b23:	66 0f 59 da          	mulpd  xmm3,xmm2
  e14b27:	66 0f 59 c8          	mulpd  xmm1,xmm0
  e14b2b:	66 0f 58 cb          	addpd  xmm1,xmm3
  e14b2f:	66 44 0f 10 4b d0    	movupd xmm9,XMMWORD PTR [rbx-0x30]
  e14b35:	66 44 0f 10 53 e0    	movupd xmm10,XMMWORD PTR [rbx-0x20]
  e14b3b:	66 0f 10 6b f0       	movupd xmm5,XMMWORD PTR [rbx-0x10]
  e14b40:	66 0f 10 3b          	movupd xmm7,XMMWORD PTR [rbx]
  e14b44:	66 41 0f 28 d9       	movapd xmm3,xmm9
  e14b49:	66 41 0f 59 d8       	mulpd  xmm3,xmm8
  e14b4e:	66 45 0f 59 c2       	mulpd  xmm8,xmm10
  e14b53:	66 44 0f 59 d1       	mulpd  xmm10,xmm1
  e14b58:	66 41 0f 5c da       	subpd  xmm3,xmm10
  e14b5d:	66 41 0f 59 c9       	mulpd  xmm1,xmm9
  e14b62:	66 41 0f 58 c8       	addpd  xmm1,xmm8
  e14b67:	66 44 0f 28 c2       	movapd xmm8,xmm2
  e14b6c:	66 44 0f 59 c4       	mulpd  xmm8,xmm4
  e14b71:	66 44 0f 28 c8       	movapd xmm9,xmm0
  e14b76:	66 44 0f 59 ce       	mulpd  xmm9,xmm6
  e14b7b:	66 45 0f 5c c8       	subpd  xmm9,xmm8
  e14b80:	66 0f 59 d6          	mulpd  xmm2,xmm6
  e14b84:	66 0f 59 c4          	mulpd  xmm0,xmm4
  e14b88:	66 0f 58 c2          	addpd  xmm0,xmm2
  e14b8c:	66 0f 28 d5          	movapd xmm2,xmm5
  e14b90:	66 41 0f 59 d1       	mulpd  xmm2,xmm9
  e14b95:	66 44 0f 59 cf       	mulpd  xmm9,xmm7
  e14b9a:	66 0f 59 f8          	mulpd  xmm7,xmm0
  e14b9e:	66 0f 5c d7          	subpd  xmm2,xmm7
  e14ba2:	66 0f 59 c5          	mulpd  xmm0,xmm5
  e14ba6:	66 41 0f 58 c1       	addpd  xmm0,xmm9
  e14bab:	66 0f 28 e3          	movapd xmm4,xmm3
  e14baf:	66 0f 14 e2          	unpcklpd xmm4,xmm2
  e14bb3:	0f 12 d3             	movhlps xmm2,xmm3
  e14bb6:	66 0f 28 d9          	movapd xmm3,xmm1
  e14bba:	66 0f 14 d8          	unpcklpd xmm3,xmm0
  e14bbe:	0f 12 c1             	movhlps xmm0,xmm1
  e14bc1:	80 bc 24 e0 00 00 00 	cmp    BYTE PTR [rsp+0xe0],0x0
  e14bc8:	00 
  e14bc9:	0f 85 c1 fe ff ff    	jne    e14a90 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1fd0>
  e14bcf:	66 0f 11 66 e0       	movupd XMMWORD PTR [rsi-0x20],xmm4
  e14bd4:	66 0f 11 5e f0       	movupd XMMWORD PTR [rsi-0x10],xmm3
  e14bd9:	0f 11 16             	movups XMMWORD PTR [rsi],xmm2
  e14bdc:	0f 11 46 10          	movups XMMWORD PTR [rsi+0x10],xmm0
  e14be0:	e9 c9 fe ff ff       	jmp    e14aae <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x1fee>
  e14be5:	80 bc 24 e0 00 00 00 	cmp    BYTE PTR [rsp+0xe0],0x0
  e14bec:	00 
  e14bed:	74 39                	je     e14c28 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2168>
  e14bef:	0f ae f8             	sfence
  e14bf2:	f6 84 24 e8 00 00 00 	test   BYTE PTR [rsp+0xe8],0x3f
  e14bf9:	3f 
  e14bfa:	0f 94 c0             	sete   al
  e14bfd:	89 44 24 58          	mov    DWORD PTR [rsp+0x58],eax
  e14c01:	eb 2d                	jmp    e14c30 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2170>
  e14c03:	80 bc 24 e0 00 00 00 	cmp    BYTE PTR [rsp+0xe0],0x0
  e14c0a:	00 
  e14c0b:	0f 84 27 10 00 00    	je     e15c38 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3178>
  e14c11:	0f ae f8             	sfence
  e14c14:	f6 84 24 e8 00 00 00 	test   BYTE PTR [rsp+0xe8],0x3f
  e14c1b:	3f 
  e14c1c:	0f 94 c0             	sete   al
  e14c1f:	89 44 24 58          	mov    DWORD PTR [rsp+0x58],eax
  e14c23:	e9 18 10 00 00       	jmp    e15c40 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3180>
  e14c28:	c7 44 24 58 00 00 00 	mov    DWORD PTR [rsp+0x58],0x0
  e14c2f:	00 
  e14c30:	4c 89 e0             	mov    rax,r12
  e14c33:	48 d1 e8             	shr    rax,1
  e14c36:	4c 89 e6             	mov    rsi,r12
  e14c39:	48 29 c6             	sub    rsi,rax
  e14c3c:	0f 84 16 20 00 00    	je     e16c58 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4198>
  e14c42:	4b 8d 04 76          	lea    rax,[r14+r14*2]
  e14c46:	48 8b 4c 24 50       	mov    rcx,QWORD PTR [rsp+0x50]
  e14c4b:	48 8d 14 c1          	lea    rdx,[rcx+rax*8]
  e14c4f:	48 89 54 24 70       	mov    QWORD PTR [rsp+0x70],rdx
  e14c54:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e14c59:	48 01 d2             	add    rdx,rdx
  e14c5c:	48 89 94 24 e0 00 00 	mov    QWORD PTR [rsp+0xe0],rdx
  e14c63:	00 
  e14c64:	48 8d 44 c1 20       	lea    rax,[rcx+rax*8+0x20]
  e14c69:	48 89 84 24 a8 00 00 	mov    QWORD PTR [rsp+0xa8],rax
  e14c70:	00 
  e14c71:	48 8b 84 24 88 00 00 	mov    rax,QWORD PTR [rsp+0x88]
  e14c78:	00 
  e14c79:	48 ff c8             	dec    rax
  e14c7c:	48 89 84 24 a0 00 00 	mov    QWORD PTR [rsp+0xa0],rax
  e14c83:	00 
  e14c84:	4c 89 e0             	mov    rax,r12
  e14c87:	48 c1 e0 04          	shl    rax,0x4
  e14c8b:	48 89 84 24 b0 00 00 	mov    QWORD PTR [rsp+0xb0],rax
  e14c92:	00 
  e14c93:	45 31 c0             	xor    r8d,r8d
  e14c96:	eb 38                	jmp    e14cd0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2210>
  e14c98:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  e14c9f:	00 
  e14ca0:	4c 8b 44 24 48       	mov    r8,QWORD PTR [rsp+0x48]
  e14ca5:	49 83 c0 02          	add    r8,0x2
  e14ca9:	48 8b b4 24 b8 00 00 	mov    rsi,QWORD PTR [rsp+0xb8]
  e14cb0:	00 
  e14cb1:	48 ff ce             	dec    rsi
  e14cb4:	48 83 84 24 e8 00 00 	add    QWORD PTR [rsp+0xe8],0x20
  e14cbb:	00 20 
  e14cbd:	48 85 f6             	test   rsi,rsi
  e14cc0:	4c 8b 64 24 28       	mov    r12,QWORD PTR [rsp+0x28]
  e14cc5:	48 8b 5c 24 68       	mov    rbx,QWORD PTR [rsp+0x68]
  e14cca:	0f 84 88 1f 00 00    	je     e16c58 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4198>
  e14cd0:	4c 89 e0             	mov    rax,r12
  e14cd3:	4c 29 c0             	sub    rax,r8
  e14cd6:	48 83 f8 02          	cmp    rax,0x2
  e14cda:	b9 02 00 00 00       	mov    ecx,0x2
  e14cdf:	48 0f 42 c8          	cmovb  rcx,rax
  e14ce3:	48 89 4c 24 40       	mov    QWORD PTR [rsp+0x40],rcx
  e14ce8:	80 bc 24 00 01 00 00 	cmp    BYTE PTR [rsp+0x100],0x0
  e14cef:	00 
  e14cf0:	48 89 44 24 60       	mov    QWORD PTR [rsp+0x60],rax
  e14cf5:	48 89 b4 24 b8 00 00 	mov    QWORD PTR [rsp+0xb8],rsi
  e14cfc:	00 
  e14cfd:	4c 89 44 24 48       	mov    QWORD PTR [rsp+0x48],r8
  e14d02:	74 7c                	je     e14d80 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x22c0>
  e14d04:	48 83 bc 24 88 00 00 	cmp    QWORD PTR [rsp+0x88],0x0
  e14d0b:	00 00 
  e14d0d:	0f 84 3b 3a 00 00    	je     e1874e <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5c8e>
  e14d13:	48 8b 44 24 70       	mov    rax,QWORD PTR [rsp+0x70]
  e14d18:	48 8b 00             	mov    rax,QWORD PTR [rax]
  e14d1b:	48 83 c0 fe          	add    rax,0xfffffffffffffffe
  e14d1f:	48 83 f8 0d          	cmp    rax,0xd
  e14d23:	0f 87 e9 39 00 00    	ja     e18712 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5c52>
  e14d29:	48 8b 8c 24 e0 00 00 	mov    rcx,QWORD PTR [rsp+0xe0]
  e14d30:	00 
  e14d31:	49 0f af c8          	imul   rcx,r8
  e14d35:	48 8b 94 24 c0 00 00 	mov    rdx,QWORD PTR [rsp+0xc0]
  e14d3c:	00 
  e14d3d:	48 8d 3c ca          	lea    rdi,[rdx+rcx*8]
  e14d41:	48 8d 0d 9c ee 28 ff 	lea    rcx,[rip+0xffffffffff28ee9c]        # a3be4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x31094>
  e14d48:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  e14d4c:	48 01 c8             	add    rax,rcx
  e14d4f:	ff e0                	jmp    rax
  e14d51:	48 89 de             	mov    rsi,rbx
  e14d54:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e14d59:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e14d5e:	e8 1d be ff ff       	call   e10b80 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e14d63:	48 83 bc 24 88 00 00 	cmp    QWORD PTR [rsp+0x88],0x2
  e14d6a:	00 02 
  e14d6c:	0f 83 be 02 00 00    	jae    e15030 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2570>
  e14d72:	e9 69 0d 00 00       	jmp    e15ae0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3020>
  e14d77:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  e14d7e:	00 00 
  e14d80:	4c 89 c7             	mov    rdi,r8
  e14d83:	48 c1 e7 04          	shl    rdi,0x4
  e14d87:	48 03 bc 24 c0 00 00 	add    rdi,QWORD PTR [rsp+0xc0]
  e14d8e:	00 
  e14d8f:	48 83 f8 01          	cmp    rax,0x1
  e14d93:	76 6b                	jbe    e14e00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2340>
  e14d95:	48 83 bc 24 88 00 00 	cmp    QWORD PTR [rsp+0x88],0x0
  e14d9c:	00 00 
  e14d9e:	0f 84 aa 39 00 00    	je     e1874e <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5c8e>
  e14da4:	48 8b 44 24 70       	mov    rax,QWORD PTR [rsp+0x70]
  e14da9:	48 8b 00             	mov    rax,QWORD PTR [rax]
  e14dac:	48 83 c0 fe          	add    rax,0xfffffffffffffffe
  e14db0:	48 83 f8 0d          	cmp    rax,0xd
  e14db4:	0f 87 58 39 00 00    	ja     e18712 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5c52>
  e14dba:	48 8d 0d af ed 28 ff 	lea    rcx,[rip+0xffffffffff28edaf]        # a3b70 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x31020>
  e14dc1:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  e14dc5:	48 01 c8             	add    rax,rcx
  e14dc8:	ff e0                	jmp    rax
  e14dca:	48 89 de             	mov    rsi,rbx
  e14dcd:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e14dd2:	4c 89 e1             	mov    rcx,r12
  e14dd5:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e14dda:	e8 e1 bc ff ff       	call   e10ac0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e14ddf:	48 83 bc 24 88 00 00 	cmp    QWORD PTR [rsp+0x88],0x2
  e14de6:	00 02 
  e14de8:	0f 83 72 08 00 00    	jae    e15660 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2ba0>
  e14dee:	e9 ed 0c 00 00       	jmp    e15ae0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3020>
  e14df3:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  e14dfa:	84 00 00 00 00 00 
  e14e00:	48 83 bc 24 88 00 00 	cmp    QWORD PTR [rsp+0x88],0x0
  e14e07:	00 00 
  e14e09:	0f 84 3f 39 00 00    	je     e1874e <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5c8e>
  e14e0f:	48 8b 44 24 70       	mov    rax,QWORD PTR [rsp+0x70]
  e14e14:	48 8b 00             	mov    rax,QWORD PTR [rax]
  e14e17:	48 83 c0 fe          	add    rax,0xfffffffffffffffe
  e14e1b:	48 83 f8 0d          	cmp    rax,0xd
  e14e1f:	0f 87 ed 38 00 00    	ja     e18712 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5c52>
  e14e25:	48 8d 0d d0 ec 28 ff 	lea    rcx,[rip+0xffffffffff28ecd0]        # a3afc <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x30fac>
  e14e2c:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  e14e30:	48 01 c8             	add    rax,rcx
  e14e33:	ff e0                	jmp    rax
  e14e35:	48 89 de             	mov    rsi,rbx
  e14e38:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e14e3d:	4c 89 e1             	mov    rcx,r12
  e14e40:	4c 8b 44 24 40       	mov    r8,QWORD PTR [rsp+0x40]
  e14e45:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e14e4a:	e8 b1 30 fd ff       	call   de7f00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e14e4f:	48 83 bc 24 88 00 00 	cmp    QWORD PTR [rsp+0x88],0x2
  e14e56:	00 02 
  e14e58:	0f 83 4f 0a 00 00    	jae    e158ad <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2ded>
  e14e5e:	e9 7d 0c 00 00       	jmp    e15ae0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3020>
  e14e63:	48 89 de             	mov    rsi,rbx
  e14e66:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e14e6b:	e8 d0 89 fe ff       	call   dfd840 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e14e70:	48 83 bc 24 88 00 00 	cmp    QWORD PTR [rsp+0x88],0x2
  e14e77:	00 02 
  e14e79:	0f 83 b1 01 00 00    	jae    e15030 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2570>
  e14e7f:	e9 5c 0c 00 00       	jmp    e15ae0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3020>
  e14e84:	48 89 de             	mov    rsi,rbx
  e14e87:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e14e8c:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e14e91:	e8 aa 02 fe ff       	call   df5140 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e14e96:	48 83 bc 24 88 00 00 	cmp    QWORD PTR [rsp+0x88],0x2
  e14e9d:	00 02 
  e14e9f:	0f 83 8b 01 00 00    	jae    e15030 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2570>
  e14ea5:	e9 36 0c 00 00       	jmp    e15ae0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3020>
  e14eaa:	48 89 de             	mov    rsi,rbx
  e14ead:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e14eb2:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e14eb7:	e8 84 43 ff ff       	call   e09240 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e14ebc:	48 83 bc 24 88 00 00 	cmp    QWORD PTR [rsp+0x88],0x2
  e14ec3:	00 02 
  e14ec5:	0f 83 65 01 00 00    	jae    e15030 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2570>
  e14ecb:	e9 10 0c 00 00       	jmp    e15ae0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3020>
  e14ed0:	48 89 de             	mov    rsi,rbx
  e14ed3:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e14ed8:	e8 23 05 fe ff       	call   df5400 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e14edd:	48 83 bc 24 88 00 00 	cmp    QWORD PTR [rsp+0x88],0x2
  e14ee4:	00 02 
  e14ee6:	0f 83 44 01 00 00    	jae    e15030 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2570>
  e14eec:	e9 ef 0b 00 00       	jmp    e15ae0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3020>
  e14ef1:	48 89 de             	mov    rsi,rbx
  e14ef4:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e14ef9:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e14efe:	e8 bd 9d fe ff       	call   dfecc0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e14f03:	48 83 bc 24 88 00 00 	cmp    QWORD PTR [rsp+0x88],0x2
  e14f0a:	00 02 
  e14f0c:	0f 83 1e 01 00 00    	jae    e15030 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2570>
  e14f12:	e9 c9 0b 00 00       	jmp    e15ae0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3020>
  e14f17:	48 89 de             	mov    rsi,rbx
  e14f1a:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e14f1f:	e8 dc 66 ff ff       	call   e0b600 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e14f24:	48 83 bc 24 88 00 00 	cmp    QWORD PTR [rsp+0x88],0x2
  e14f2b:	00 02 
  e14f2d:	0f 83 fd 00 00 00    	jae    e15030 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2570>
  e14f33:	e9 a8 0b 00 00       	jmp    e15ae0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3020>
  e14f38:	48 89 de             	mov    rsi,rbx
  e14f3b:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e14f40:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e14f45:	e8 76 94 fd ff       	call   dee3c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e14f4a:	48 83 bc 24 88 00 00 	cmp    QWORD PTR [rsp+0x88],0x2
  e14f51:	00 02 
  e14f53:	0f 83 d7 00 00 00    	jae    e15030 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2570>
  e14f59:	e9 82 0b 00 00       	jmp    e15ae0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3020>
  e14f5e:	48 89 de             	mov    rsi,rbx
  e14f61:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e14f66:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e14f6b:	e8 10 9c fe ff       	call   dfeb80 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e14f70:	48 83 bc 24 88 00 00 	cmp    QWORD PTR [rsp+0x88],0x2
  e14f77:	00 02 
  e14f79:	0f 83 b1 00 00 00    	jae    e15030 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2570>
  e14f7f:	e9 5c 0b 00 00       	jmp    e15ae0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3020>
  e14f84:	48 89 de             	mov    rsi,rbx
  e14f87:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e14f8c:	e8 af b5 ff ff       	call   e10540 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e14f91:	48 83 bc 24 88 00 00 	cmp    QWORD PTR [rsp+0x88],0x2
  e14f98:	00 02 
  e14f9a:	0f 83 90 00 00 00    	jae    e15030 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2570>
  e14fa0:	e9 3b 0b 00 00       	jmp    e15ae0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3020>
  e14fa5:	48 89 de             	mov    rsi,rbx
  e14fa8:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e14fad:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e14fb2:	e8 49 47 fd ff       	call   de9700 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e14fb7:	48 83 bc 24 88 00 00 	cmp    QWORD PTR [rsp+0x88],0x2
  e14fbe:	00 02 
  e14fc0:	73 6e                	jae    e15030 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2570>
  e14fc2:	e9 19 0b 00 00       	jmp    e15ae0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3020>
  e14fc7:	48 89 de             	mov    rsi,rbx
  e14fca:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e14fcf:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e14fd4:	e8 e7 a8 fe ff       	call   dff8c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e14fd9:	48 83 bc 24 88 00 00 	cmp    QWORD PTR [rsp+0x88],0x2
  e14fe0:	00 02 
  e14fe2:	73 4c                	jae    e15030 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2570>
  e14fe4:	e9 f7 0a 00 00       	jmp    e15ae0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3020>
  e14fe9:	48 89 de             	mov    rsi,rbx
  e14fec:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e14ff1:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e14ff6:	e8 c5 55 fd ff       	call   dea5c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e14ffb:	48 83 bc 24 88 00 00 	cmp    QWORD PTR [rsp+0x88],0x2
  e15002:	00 02 
  e15004:	73 2a                	jae    e15030 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2570>
  e15006:	e9 d5 0a 00 00       	jmp    e15ae0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3020>
  e1500b:	48 89 de             	mov    rsi,rbx
  e1500e:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e15013:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e15018:	e8 e3 f4 fd ff       	call   df4500 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e1501d:	48 83 bc 24 88 00 00 	cmp    QWORD PTR [rsp+0x88],0x2
  e15024:	00 02 
  e15026:	0f 82 b4 0a 00 00    	jb     e15ae0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3020>
  e1502c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  e15030:	48 8b 44 24 70       	mov    rax,QWORD PTR [rsp+0x70]
  e15035:	4c 8b 38             	mov    r15,QWORD PTR [rax]
  e15038:	4c 8b a4 24 a0 00 00 	mov    r12,QWORD PTR [rsp+0xa0]
  e1503f:	00 
  e15040:	4c 8b ac 24 a8 00 00 	mov    r13,QWORD PTR [rsp+0xa8]
  e15047:	00 
  e15048:	48 8b 44 24 68       	mov    rax,QWORD PTR [rsp+0x68]
  e1504d:	48 8b 8c 24 98 00 00 	mov    rcx,QWORD PTR [rsp+0x98]
  e15054:	00 
  e15055:	eb 45                	jmp    e1509c <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x25dc>
  e15057:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e1505c:	0f 29 84 24 90 01 00 	movaps XMMWORD PTR [rsp+0x190],xmm0
  e15063:	00 
  e15064:	48 89 d7             	mov    rdi,rdx
  e15067:	48 89 de             	mov    rsi,rbx
  e1506a:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e1506f:	4c 89 f9             	mov    rcx,r15
  e15072:	4c 8d 8c 24 90 01 00 	lea    r9,[rsp+0x190]
  e15079:	00 
  e1507a:	e8 01 8e f3 ff       	call   d4de80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e1507f:	90                   	nop
  e15080:	4d 0f af fe          	imul   r15,r14
  e15084:	49 83 c5 18          	add    r13,0x18
  e15088:	48 89 d8             	mov    rax,rbx
  e1508b:	49 ff cc             	dec    r12
  e1508e:	48 8b 8c 24 90 00 00 	mov    rcx,QWORD PTR [rsp+0x90]
  e15095:	00 
  e15096:	0f 84 44 0a 00 00    	je     e15ae0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3020>
  e1509c:	48 89 c2             	mov    rdx,rax
  e1509f:	4d 8b 75 f8          	mov    r14,QWORD PTR [r13-0x8]
  e150a3:	4d 8b 45 00          	mov    r8,QWORD PTR [r13+0x0]
  e150a7:	4c 03 44 24 50       	add    r8,QWORD PTR [rsp+0x50]
  e150ac:	4c 89 b4 24 30 01 00 	mov    QWORD PTR [rsp+0x130],r14
  e150b3:	00 
  e150b4:	49 8d 46 fe          	lea    rax,[r14-0x2]
  e150b8:	48 83 f8 0e          	cmp    rax,0xe
  e150bc:	0f 87 e6 35 00 00    	ja     e186a8 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5be8>
  e150c2:	48 89 cb             	mov    rbx,rcx
  e150c5:	48 8d 0d 50 eb 28 ff 	lea    rcx,[rip+0xffffffffff28eb50]        # a3c1c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x310cc>
  e150cc:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  e150d0:	48 01 c8             	add    rax,rcx
  e150d3:	48 89 94 24 90 00 00 	mov    QWORD PTR [rsp+0x90],rdx
  e150da:	00 
  e150db:	ff e0                	jmp    rax
  e150dd:	48 89 d7             	mov    rdi,rdx
  e150e0:	48 89 de             	mov    rsi,rbx
  e150e3:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e150e8:	4c 89 f9             	mov    rcx,r15
  e150eb:	e8 d0 f5 f2 ff       	call   d446c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e150f0:	eb 8e                	jmp    e15080 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x25c0>
  e150f2:	48 89 d7             	mov    rdi,rdx
  e150f5:	48 89 de             	mov    rsi,rbx
  e150f8:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e150fd:	4c 89 f9             	mov    rcx,r15
  e15100:	e8 7b 4a f3 ff       	call   d49b80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e15105:	e9 76 ff ff ff       	jmp    e15080 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x25c0>
  e1510a:	48 89 d7             	mov    rdi,rdx
  e1510d:	48 89 de             	mov    rsi,rbx
  e15110:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e15115:	4c 89 f9             	mov    rcx,r15
  e15118:	e8 e3 ff f2 ff       	call   d45100 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e1511d:	e9 5e ff ff ff       	jmp    e15080 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x25c0>
  e15122:	48 89 d7             	mov    rdi,rdx
  e15125:	48 89 de             	mov    rsi,rbx
  e15128:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e1512d:	4c 89 f9             	mov    rcx,r15
  e15130:	e8 0b 63 f3 ff       	call   d4b440 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e15135:	e9 46 ff ff ff       	jmp    e15080 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x25c0>
  e1513a:	48 89 d7             	mov    rdi,rdx
  e1513d:	48 89 de             	mov    rsi,rbx
  e15140:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e15145:	4c 89 f9             	mov    rcx,r15
  e15148:	e8 73 29 f3 ff       	call   d47ac0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e1514d:	e9 2e ff ff ff       	jmp    e15080 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x25c0>
  e15152:	48 89 d7             	mov    rdi,rdx
  e15155:	48 89 de             	mov    rsi,rbx
  e15158:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e1515d:	4c 89 f9             	mov    rcx,r15
  e15160:	e8 1b f9 f2 ff       	call   d44a80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e15165:	e9 16 ff ff ff       	jmp    e15080 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x25c0>
  e1516a:	48 89 d7             	mov    rdi,rdx
  e1516d:	48 89 de             	mov    rsi,rbx
  e15170:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e15175:	4c 89 f9             	mov    rcx,r15
  e15178:	e8 83 fb f2 ff       	call   d44d00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e1517d:	e9 fe fe ff ff       	jmp    e15080 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x25c0>
  e15182:	48 89 d7             	mov    rdi,rdx
  e15185:	48 89 de             	mov    rsi,rbx
  e15188:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e1518d:	4c 89 f9             	mov    rcx,r15
  e15190:	e8 ab 12 f3 ff       	call   d46440 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e15195:	e9 e6 fe ff ff       	jmp    e15080 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x25c0>
  e1519a:	48 89 d7             	mov    rdi,rdx
  e1519d:	48 89 de             	mov    rsi,rbx
  e151a0:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e151a5:	4c 89 f9             	mov    rcx,r15
  e151a8:	e8 93 f6 f2 ff       	call   d44840 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e151ad:	e9 ce fe ff ff       	jmp    e15080 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x25c0>
  e151b2:	48 89 d7             	mov    rdi,rdx
  e151b5:	48 89 de             	mov    rsi,rbx
  e151b8:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e151bd:	4c 89 f9             	mov    rcx,r15
  e151c0:	e8 fb 03 f3 ff       	call   d455c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e151c5:	e9 b6 fe ff ff       	jmp    e15080 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x25c0>
  e151ca:	48 89 d7             	mov    rdi,rdx
  e151cd:	48 89 de             	mov    rsi,rbx
  e151d0:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e151d5:	4c 89 f9             	mov    rcx,r15
  e151d8:	e8 23 77 f3 ff       	call   d4c900 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e151dd:	e9 9e fe ff ff       	jmp    e15080 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x25c0>
  e151e2:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e151e7:	0f 29 84 24 90 01 00 	movaps XMMWORD PTR [rsp+0x190],xmm0
  e151ee:	00 
  e151ef:	48 89 d7             	mov    rdi,rdx
  e151f2:	48 89 de             	mov    rsi,rbx
  e151f5:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e151fa:	4c 89 f9             	mov    rcx,r15
  e151fd:	4c 8d 8c 24 90 01 00 	lea    r9,[rsp+0x190]
  e15204:	00 
  e15205:	e8 36 0b f3 ff       	call   d45d40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e1520a:	e9 71 fe ff ff       	jmp    e15080 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x25c0>
  e1520f:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e15214:	0f 29 84 24 90 01 00 	movaps XMMWORD PTR [rsp+0x190],xmm0
  e1521b:	00 
  e1521c:	48 89 d7             	mov    rdi,rdx
  e1521f:	48 89 de             	mov    rsi,rbx
  e15222:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e15227:	4c 89 f9             	mov    rcx,r15
  e1522a:	4c 8d 8c 24 90 01 00 	lea    r9,[rsp+0x190]
  e15231:	00 
  e15232:	e8 49 3b f3 ff       	call   d48d80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e15237:	e9 44 fe ff ff       	jmp    e15080 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x25c0>
  e1523c:	48 89 d7             	mov    rdi,rdx
  e1523f:	48 89 de             	mov    rsi,rbx
  e15242:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e15247:	4c 89 f9             	mov    rcx,r15
  e1524a:	e8 71 1c f3 ff       	call   d46ec0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e1524f:	e9 2c fe ff ff       	jmp    e15080 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x25c0>
  e15254:	48 89 de             	mov    rsi,rbx
  e15257:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e1525c:	4c 89 e1             	mov    rcx,r12
  e1525f:	e8 dc 84 ff ff       	call   e0d740 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e15264:	48 83 bc 24 88 00 00 	cmp    QWORD PTR [rsp+0x88],0x2
  e1526b:	00 02 
  e1526d:	0f 83 ed 03 00 00    	jae    e15660 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2ba0>
  e15273:	e9 68 08 00 00       	jmp    e15ae0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3020>
  e15278:	48 89 de             	mov    rsi,rbx
  e1527b:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e15280:	4c 89 e1             	mov    rcx,r12
  e15283:	4c 8b 44 24 40       	mov    r8,QWORD PTR [rsp+0x40]
  e15288:	e8 b3 b0 fe ff       	call   e00340 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e1528d:	48 83 bc 24 88 00 00 	cmp    QWORD PTR [rsp+0x88],0x2
  e15294:	00 02 
  e15296:	0f 83 11 06 00 00    	jae    e158ad <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2ded>
  e1529c:	e9 3f 08 00 00       	jmp    e15ae0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3020>
  e152a1:	48 89 de             	mov    rsi,rbx
  e152a4:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e152a9:	4c 89 e1             	mov    rcx,r12
  e152ac:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e152b1:	e8 4a 21 fe ff       	call   df7400 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e152b6:	48 83 bc 24 88 00 00 	cmp    QWORD PTR [rsp+0x88],0x2
  e152bd:	00 02 
  e152bf:	0f 83 9b 03 00 00    	jae    e15660 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2ba0>
  e152c5:	e9 16 08 00 00       	jmp    e15ae0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3020>
  e152ca:	48 89 de             	mov    rsi,rbx
  e152cd:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e152d2:	4c 89 e1             	mov    rcx,r12
  e152d5:	4c 8b 44 24 40       	mov    r8,QWORD PTR [rsp+0x40]
  e152da:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e152df:	e8 5c 9e fe ff       	call   dff140 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e152e4:	48 83 bc 24 88 00 00 	cmp    QWORD PTR [rsp+0x88],0x2
  e152eb:	00 02 
  e152ed:	0f 83 ba 05 00 00    	jae    e158ad <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2ded>
  e152f3:	e9 e8 07 00 00       	jmp    e15ae0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3020>
  e152f8:	48 89 de             	mov    rsi,rbx
  e152fb:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e15300:	4c 89 e1             	mov    rcx,r12
  e15303:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e15308:	e8 b3 cc fe ff       	call   e01fc0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e1530d:	48 83 bc 24 88 00 00 	cmp    QWORD PTR [rsp+0x88],0x2
  e15314:	00 02 
  e15316:	0f 83 44 03 00 00    	jae    e15660 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2ba0>
  e1531c:	e9 bf 07 00 00       	jmp    e15ae0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3020>
  e15321:	48 89 de             	mov    rsi,rbx
  e15324:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e15329:	4c 89 e1             	mov    rcx,r12
  e1532c:	4c 8b 44 24 40       	mov    r8,QWORD PTR [rsp+0x40]
  e15331:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e15336:	e8 45 d6 fd ff       	call   df2980 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e1533b:	48 83 bc 24 88 00 00 	cmp    QWORD PTR [rsp+0x88],0x2
  e15342:	00 02 
  e15344:	0f 83 63 05 00 00    	jae    e158ad <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2ded>
  e1534a:	e9 91 07 00 00       	jmp    e15ae0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3020>
  e1534f:	48 89 de             	mov    rsi,rbx
  e15352:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e15357:	4c 89 e1             	mov    rcx,r12
  e1535a:	e8 21 3d fe ff       	call   df9080 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e1535f:	48 83 bc 24 88 00 00 	cmp    QWORD PTR [rsp+0x88],0x2
  e15366:	00 02 
  e15368:	0f 83 f2 02 00 00    	jae    e15660 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2ba0>
  e1536e:	e9 6d 07 00 00       	jmp    e15ae0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3020>
  e15373:	48 89 de             	mov    rsi,rbx
  e15376:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e1537b:	4c 89 e1             	mov    rcx,r12
  e1537e:	4c 8b 44 24 40       	mov    r8,QWORD PTR [rsp+0x40]
  e15383:	e8 f8 a6 fd ff       	call   defa80 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e15388:	48 83 bc 24 88 00 00 	cmp    QWORD PTR [rsp+0x88],0x2
  e1538f:	00 02 
  e15391:	0f 83 16 05 00 00    	jae    e158ad <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2ded>
  e15397:	e9 44 07 00 00       	jmp    e15ae0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3020>
  e1539c:	48 89 de             	mov    rsi,rbx
  e1539f:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e153a4:	4c 89 e1             	mov    rcx,r12
  e153a7:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e153ac:	e8 0f db fe ff       	call   e02ec0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e153b1:	48 83 bc 24 88 00 00 	cmp    QWORD PTR [rsp+0x88],0x2
  e153b8:	00 02 
  e153ba:	0f 83 a0 02 00 00    	jae    e15660 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2ba0>
  e153c0:	e9 1b 07 00 00       	jmp    e15ae0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3020>
  e153c5:	48 89 de             	mov    rsi,rbx
  e153c8:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e153cd:	4c 89 e1             	mov    rcx,r12
  e153d0:	4c 8b 44 24 40       	mov    r8,QWORD PTR [rsp+0x40]
  e153d5:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e153da:	e8 21 a9 fe ff       	call   dffd00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e153df:	48 83 bc 24 88 00 00 	cmp    QWORD PTR [rsp+0x88],0x2
  e153e6:	00 02 
  e153e8:	0f 83 bf 04 00 00    	jae    e158ad <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2ded>
  e153ee:	e9 ed 06 00 00       	jmp    e15ae0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3020>
  e153f3:	48 89 de             	mov    rsi,rbx
  e153f6:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e153fb:	4c 89 e1             	mov    rcx,r12
  e153fe:	e8 bd 8c fd ff       	call   dee0c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e15403:	48 83 bc 24 88 00 00 	cmp    QWORD PTR [rsp+0x88],0x2
  e1540a:	00 02 
  e1540c:	0f 83 4e 02 00 00    	jae    e15660 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2ba0>
  e15412:	e9 c9 06 00 00       	jmp    e15ae0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3020>
  e15417:	48 89 de             	mov    rsi,rbx
  e1541a:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e1541f:	4c 89 e1             	mov    rcx,r12
  e15422:	4c 8b 44 24 40       	mov    r8,QWORD PTR [rsp+0x40]
  e15427:	e8 14 0d fe ff       	call   df6140 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e1542c:	48 83 bc 24 88 00 00 	cmp    QWORD PTR [rsp+0x88],0x2
  e15433:	00 02 
  e15435:	0f 83 72 04 00 00    	jae    e158ad <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2ded>
  e1543b:	e9 a0 06 00 00       	jmp    e15ae0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3020>
  e15440:	48 89 de             	mov    rsi,rbx
  e15443:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e15448:	4c 89 e1             	mov    rcx,r12
  e1544b:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e15450:	e8 eb ce ff ff       	call   e12340 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e15455:	48 83 bc 24 88 00 00 	cmp    QWORD PTR [rsp+0x88],0x2
  e1545c:	00 02 
  e1545e:	0f 83 fc 01 00 00    	jae    e15660 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2ba0>
  e15464:	e9 77 06 00 00       	jmp    e15ae0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3020>
  e15469:	48 89 de             	mov    rsi,rbx
  e1546c:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e15471:	4c 89 e1             	mov    rcx,r12
  e15474:	4c 8b 44 24 40       	mov    r8,QWORD PTR [rsp+0x40]
  e15479:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e1547e:	e8 fd 2f ff ff       	call   e08480 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e15483:	48 83 bc 24 88 00 00 	cmp    QWORD PTR [rsp+0x88],0x2
  e1548a:	00 02 
  e1548c:	0f 83 1b 04 00 00    	jae    e158ad <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2ded>
  e15492:	e9 49 06 00 00       	jmp    e15ae0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3020>
  e15497:	48 89 de             	mov    rsi,rbx
  e1549a:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e1549f:	4c 89 e1             	mov    rcx,r12
  e154a2:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e154a7:	e8 14 ad fe ff       	call   e001c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e154ac:	48 83 bc 24 88 00 00 	cmp    QWORD PTR [rsp+0x88],0x2
  e154b3:	00 02 
  e154b5:	0f 83 a5 01 00 00    	jae    e15660 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2ba0>
  e154bb:	e9 20 06 00 00       	jmp    e15ae0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3020>
  e154c0:	48 89 de             	mov    rsi,rbx
  e154c3:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e154c8:	4c 89 e1             	mov    rcx,r12
  e154cb:	4c 8b 44 24 40       	mov    r8,QWORD PTR [rsp+0x40]
  e154d0:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e154d5:	e8 26 35 fe ff       	call   df8a00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e154da:	48 83 bc 24 88 00 00 	cmp    QWORD PTR [rsp+0x88],0x2
  e154e1:	00 02 
  e154e3:	0f 83 c4 03 00 00    	jae    e158ad <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2ded>
  e154e9:	e9 f2 05 00 00       	jmp    e15ae0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3020>
  e154ee:	48 89 de             	mov    rsi,rbx
  e154f1:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e154f6:	4c 89 e1             	mov    rcx,r12
  e154f9:	e8 02 86 fd ff       	call   dedb00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e154fe:	48 83 bc 24 88 00 00 	cmp    QWORD PTR [rsp+0x88],0x2
  e15505:	00 02 
  e15507:	0f 83 53 01 00 00    	jae    e15660 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2ba0>
  e1550d:	e9 ce 05 00 00       	jmp    e15ae0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3020>
  e15512:	48 89 de             	mov    rsi,rbx
  e15515:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e1551a:	4c 89 e1             	mov    rcx,r12
  e1551d:	4c 8b 44 24 40       	mov    r8,QWORD PTR [rsp+0x40]
  e15522:	e8 19 37 fd ff       	call   de8c40 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e15527:	48 83 bc 24 88 00 00 	cmp    QWORD PTR [rsp+0x88],0x2
  e1552e:	00 02 
  e15530:	0f 83 77 03 00 00    	jae    e158ad <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2ded>
  e15536:	e9 a5 05 00 00       	jmp    e15ae0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3020>
  e1553b:	48 89 de             	mov    rsi,rbx
  e1553e:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e15543:	4c 89 e1             	mov    rcx,r12
  e15546:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e1554b:	e8 30 63 ff ff       	call   e0b880 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e15550:	48 83 bc 24 88 00 00 	cmp    QWORD PTR [rsp+0x88],0x2
  e15557:	00 02 
  e15559:	0f 83 01 01 00 00    	jae    e15660 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2ba0>
  e1555f:	e9 7c 05 00 00       	jmp    e15ae0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3020>
  e15564:	48 89 de             	mov    rsi,rbx
  e15567:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e1556c:	4c 89 e1             	mov    rcx,r12
  e1556f:	4c 8b 44 24 40       	mov    r8,QWORD PTR [rsp+0x40]
  e15574:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e15579:	e8 82 95 ff ff       	call   e0eb00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e1557e:	48 83 bc 24 88 00 00 	cmp    QWORD PTR [rsp+0x88],0x2
  e15585:	00 02 
  e15587:	0f 83 20 03 00 00    	jae    e158ad <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2ded>
  e1558d:	e9 4e 05 00 00       	jmp    e15ae0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3020>
  e15592:	48 89 de             	mov    rsi,rbx
  e15595:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e1559a:	4c 89 e1             	mov    rcx,r12
  e1559d:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e155a2:	e8 59 72 ff ff       	call   e0c800 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e155a7:	48 83 bc 24 88 00 00 	cmp    QWORD PTR [rsp+0x88],0x2
  e155ae:	00 02 
  e155b0:	0f 83 aa 00 00 00    	jae    e15660 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2ba0>
  e155b6:	e9 25 05 00 00       	jmp    e15ae0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3020>
  e155bb:	48 89 de             	mov    rsi,rbx
  e155be:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e155c3:	4c 89 e1             	mov    rcx,r12
  e155c6:	4c 8b 44 24 40       	mov    r8,QWORD PTR [rsp+0x40]
  e155cb:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e155d0:	e8 ab 24 ff ff       	call   e07a80 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e155d5:	48 83 bc 24 88 00 00 	cmp    QWORD PTR [rsp+0x88],0x2
  e155dc:	00 02 
  e155de:	0f 83 c9 02 00 00    	jae    e158ad <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2ded>
  e155e4:	e9 f7 04 00 00       	jmp    e15ae0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3020>
  e155e9:	48 89 de             	mov    rsi,rbx
  e155ec:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e155f1:	4c 89 e1             	mov    rcx,r12
  e155f4:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e155f9:	e8 42 ca fd ff       	call   df2040 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e155fe:	48 83 bc 24 88 00 00 	cmp    QWORD PTR [rsp+0x88],0x2
  e15605:	00 02 
  e15607:	73 57                	jae    e15660 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2ba0>
  e15609:	e9 d2 04 00 00       	jmp    e15ae0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3020>
  e1560e:	48 89 de             	mov    rsi,rbx
  e15611:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e15616:	4c 89 e1             	mov    rcx,r12
  e15619:	4c 8b 44 24 40       	mov    r8,QWORD PTR [rsp+0x40]
  e1561e:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e15623:	e8 98 22 fe ff       	call   df78c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e15628:	48 83 bc 24 88 00 00 	cmp    QWORD PTR [rsp+0x88],0x2
  e1562f:	00 02 
  e15631:	0f 83 76 02 00 00    	jae    e158ad <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2ded>
  e15637:	e9 a4 04 00 00       	jmp    e15ae0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3020>
  e1563c:	48 89 de             	mov    rsi,rbx
  e1563f:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e15644:	4c 89 e1             	mov    rcx,r12
  e15647:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e1564c:	e8 ef c1 fd ff       	call   df1840 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e15651:	48 83 bc 24 88 00 00 	cmp    QWORD PTR [rsp+0x88],0x2
  e15658:	00 02 
  e1565a:	0f 82 80 04 00 00    	jb     e15ae0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3020>
  e15660:	48 8b 44 24 70       	mov    rax,QWORD PTR [rsp+0x70]
  e15665:	4c 8b 38             	mov    r15,QWORD PTR [rax]
  e15668:	4c 8b a4 24 a0 00 00 	mov    r12,QWORD PTR [rsp+0xa0]
  e1566f:	00 
  e15670:	4c 8b ac 24 a8 00 00 	mov    r13,QWORD PTR [rsp+0xa8]
  e15677:	00 
  e15678:	48 8b 44 24 68       	mov    rax,QWORD PTR [rsp+0x68]
  e1567d:	48 8b 8c 24 98 00 00 	mov    rcx,QWORD PTR [rsp+0x98]
  e15684:	00 
  e15685:	eb 45                	jmp    e156cc <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2c0c>
  e15687:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e1568c:	0f 29 84 24 90 01 00 	movaps XMMWORD PTR [rsp+0x190],xmm0
  e15693:	00 
  e15694:	48 89 d7             	mov    rdi,rdx
  e15697:	48 89 de             	mov    rsi,rbx
  e1569a:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e1569f:	4c 89 f9             	mov    rcx,r15
  e156a2:	4c 8d 8c 24 90 01 00 	lea    r9,[rsp+0x190]
  e156a9:	00 
  e156aa:	e8 d1 87 f3 ff       	call   d4de80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e156af:	90                   	nop
  e156b0:	4d 0f af fe          	imul   r15,r14
  e156b4:	49 83 c5 18          	add    r13,0x18
  e156b8:	48 89 d8             	mov    rax,rbx
  e156bb:	49 ff cc             	dec    r12
  e156be:	48 8b 8c 24 90 00 00 	mov    rcx,QWORD PTR [rsp+0x90]
  e156c5:	00 
  e156c6:	0f 84 14 04 00 00    	je     e15ae0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3020>
  e156cc:	48 89 c2             	mov    rdx,rax
  e156cf:	4d 8b 75 f8          	mov    r14,QWORD PTR [r13-0x8]
  e156d3:	4d 8b 45 00          	mov    r8,QWORD PTR [r13+0x0]
  e156d7:	4c 03 44 24 50       	add    r8,QWORD PTR [rsp+0x50]
  e156dc:	4c 89 b4 24 30 01 00 	mov    QWORD PTR [rsp+0x130],r14
  e156e3:	00 
  e156e4:	49 8d 46 fe          	lea    rax,[r14-0x2]
  e156e8:	48 83 f8 0e          	cmp    rax,0xe
  e156ec:	0f 87 b6 2f 00 00    	ja     e186a8 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5be8>
  e156f2:	48 89 cb             	mov    rbx,rcx
  e156f5:	48 8d 0d ac e4 28 ff 	lea    rcx,[rip+0xffffffffff28e4ac]        # a3ba8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x31058>
  e156fc:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  e15700:	48 01 c8             	add    rax,rcx
  e15703:	48 89 94 24 90 00 00 	mov    QWORD PTR [rsp+0x90],rdx
  e1570a:	00 
  e1570b:	ff e0                	jmp    rax
  e1570d:	48 89 d7             	mov    rdi,rdx
  e15710:	48 89 de             	mov    rsi,rbx
  e15713:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e15718:	4c 89 f9             	mov    rcx,r15
  e1571b:	e8 a0 ef f2 ff       	call   d446c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e15720:	eb 8e                	jmp    e156b0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2bf0>
  e15722:	48 89 d7             	mov    rdi,rdx
  e15725:	48 89 de             	mov    rsi,rbx
  e15728:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e1572d:	4c 89 f9             	mov    rcx,r15
  e15730:	e8 4b 44 f3 ff       	call   d49b80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e15735:	e9 76 ff ff ff       	jmp    e156b0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2bf0>
  e1573a:	48 89 d7             	mov    rdi,rdx
  e1573d:	48 89 de             	mov    rsi,rbx
  e15740:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e15745:	4c 89 f9             	mov    rcx,r15
  e15748:	e8 b3 f9 f2 ff       	call   d45100 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e1574d:	e9 5e ff ff ff       	jmp    e156b0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2bf0>
  e15752:	48 89 d7             	mov    rdi,rdx
  e15755:	48 89 de             	mov    rsi,rbx
  e15758:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e1575d:	4c 89 f9             	mov    rcx,r15
  e15760:	e8 db 5c f3 ff       	call   d4b440 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e15765:	e9 46 ff ff ff       	jmp    e156b0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2bf0>
  e1576a:	48 89 d7             	mov    rdi,rdx
  e1576d:	48 89 de             	mov    rsi,rbx
  e15770:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e15775:	4c 89 f9             	mov    rcx,r15
  e15778:	e8 43 23 f3 ff       	call   d47ac0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e1577d:	e9 2e ff ff ff       	jmp    e156b0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2bf0>
  e15782:	48 89 d7             	mov    rdi,rdx
  e15785:	48 89 de             	mov    rsi,rbx
  e15788:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e1578d:	4c 89 f9             	mov    rcx,r15
  e15790:	e8 eb f2 f2 ff       	call   d44a80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e15795:	e9 16 ff ff ff       	jmp    e156b0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2bf0>
  e1579a:	48 89 d7             	mov    rdi,rdx
  e1579d:	48 89 de             	mov    rsi,rbx
  e157a0:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e157a5:	4c 89 f9             	mov    rcx,r15
  e157a8:	e8 53 f5 f2 ff       	call   d44d00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e157ad:	e9 fe fe ff ff       	jmp    e156b0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2bf0>
  e157b2:	48 89 d7             	mov    rdi,rdx
  e157b5:	48 89 de             	mov    rsi,rbx
  e157b8:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e157bd:	4c 89 f9             	mov    rcx,r15
  e157c0:	e8 7b 0c f3 ff       	call   d46440 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e157c5:	e9 e6 fe ff ff       	jmp    e156b0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2bf0>
  e157ca:	48 89 d7             	mov    rdi,rdx
  e157cd:	48 89 de             	mov    rsi,rbx
  e157d0:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e157d5:	4c 89 f9             	mov    rcx,r15
  e157d8:	e8 63 f0 f2 ff       	call   d44840 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e157dd:	e9 ce fe ff ff       	jmp    e156b0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2bf0>
  e157e2:	48 89 d7             	mov    rdi,rdx
  e157e5:	48 89 de             	mov    rsi,rbx
  e157e8:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e157ed:	4c 89 f9             	mov    rcx,r15
  e157f0:	e8 cb fd f2 ff       	call   d455c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e157f5:	e9 b6 fe ff ff       	jmp    e156b0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2bf0>
  e157fa:	48 89 d7             	mov    rdi,rdx
  e157fd:	48 89 de             	mov    rsi,rbx
  e15800:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e15805:	4c 89 f9             	mov    rcx,r15
  e15808:	e8 f3 70 f3 ff       	call   d4c900 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e1580d:	e9 9e fe ff ff       	jmp    e156b0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2bf0>
  e15812:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e15817:	0f 29 84 24 90 01 00 	movaps XMMWORD PTR [rsp+0x190],xmm0
  e1581e:	00 
  e1581f:	48 89 d7             	mov    rdi,rdx
  e15822:	48 89 de             	mov    rsi,rbx
  e15825:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e1582a:	4c 89 f9             	mov    rcx,r15
  e1582d:	4c 8d 8c 24 90 01 00 	lea    r9,[rsp+0x190]
  e15834:	00 
  e15835:	e8 06 05 f3 ff       	call   d45d40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e1583a:	e9 71 fe ff ff       	jmp    e156b0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2bf0>
  e1583f:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e15844:	0f 29 84 24 90 01 00 	movaps XMMWORD PTR [rsp+0x190],xmm0
  e1584b:	00 
  e1584c:	48 89 d7             	mov    rdi,rdx
  e1584f:	48 89 de             	mov    rsi,rbx
  e15852:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e15857:	4c 89 f9             	mov    rcx,r15
  e1585a:	4c 8d 8c 24 90 01 00 	lea    r9,[rsp+0x190]
  e15861:	00 
  e15862:	e8 19 35 f3 ff       	call   d48d80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e15867:	e9 44 fe ff ff       	jmp    e156b0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2bf0>
  e1586c:	48 89 d7             	mov    rdi,rdx
  e1586f:	48 89 de             	mov    rsi,rbx
  e15872:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e15877:	4c 89 f9             	mov    rcx,r15
  e1587a:	e8 41 16 f3 ff       	call   d46ec0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e1587f:	e9 2c fe ff ff       	jmp    e156b0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2bf0>
  e15884:	48 89 de             	mov    rsi,rbx
  e15887:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e1588c:	4c 89 e1             	mov    rcx,r12
  e1588f:	4c 8b 44 24 40       	mov    r8,QWORD PTR [rsp+0x40]
  e15894:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e15899:	e8 22 bb ff ff       	call   e113c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e1589e:	48 83 bc 24 88 00 00 	cmp    QWORD PTR [rsp+0x88],0x2
  e158a5:	00 02 
  e158a7:	0f 82 33 02 00 00    	jb     e15ae0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3020>
  e158ad:	48 8b 44 24 70       	mov    rax,QWORD PTR [rsp+0x70]
  e158b2:	4c 8b 38             	mov    r15,QWORD PTR [rax]
  e158b5:	4c 8b a4 24 a0 00 00 	mov    r12,QWORD PTR [rsp+0xa0]
  e158bc:	00 
  e158bd:	4c 8b ac 24 a8 00 00 	mov    r13,QWORD PTR [rsp+0xa8]
  e158c4:	00 
  e158c5:	48 8b 44 24 68       	mov    rax,QWORD PTR [rsp+0x68]
  e158ca:	48 8b 8c 24 98 00 00 	mov    rcx,QWORD PTR [rsp+0x98]
  e158d1:	00 
  e158d2:	eb 48                	jmp    e1591c <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2e5c>
  e158d4:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e158d9:	0f 29 84 24 90 01 00 	movaps XMMWORD PTR [rsp+0x190],xmm0
  e158e0:	00 
  e158e1:	48 89 d7             	mov    rdi,rdx
  e158e4:	48 89 de             	mov    rsi,rbx
  e158e7:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e158ec:	4c 89 f9             	mov    rcx,r15
  e158ef:	4c 8d 8c 24 90 01 00 	lea    r9,[rsp+0x190]
  e158f6:	00 
  e158f7:	e8 84 85 f3 ff       	call   d4de80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e158fc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  e15900:	4d 0f af fe          	imul   r15,r14
  e15904:	49 83 c5 18          	add    r13,0x18
  e15908:	48 89 d8             	mov    rax,rbx
  e1590b:	49 ff cc             	dec    r12
  e1590e:	48 8b 8c 24 90 00 00 	mov    rcx,QWORD PTR [rsp+0x90]
  e15915:	00 
  e15916:	0f 84 c4 01 00 00    	je     e15ae0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3020>
  e1591c:	48 89 c2             	mov    rdx,rax
  e1591f:	4d 8b 75 f8          	mov    r14,QWORD PTR [r13-0x8]
  e15923:	4d 8b 45 00          	mov    r8,QWORD PTR [r13+0x0]
  e15927:	4c 03 44 24 50       	add    r8,QWORD PTR [rsp+0x50]
  e1592c:	4c 89 b4 24 30 01 00 	mov    QWORD PTR [rsp+0x130],r14
  e15933:	00 
  e15934:	49 8d 46 fe          	lea    rax,[r14-0x2]
  e15938:	48 83 f8 0e          	cmp    rax,0xe
  e1593c:	0f 87 66 2d 00 00    	ja     e186a8 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5be8>
  e15942:	48 89 cb             	mov    rbx,rcx
  e15945:	48 8d 0d e8 e1 28 ff 	lea    rcx,[rip+0xffffffffff28e1e8]        # a3b34 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x30fe4>
  e1594c:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  e15950:	48 01 c8             	add    rax,rcx
  e15953:	48 89 94 24 90 00 00 	mov    QWORD PTR [rsp+0x90],rdx
  e1595a:	00 
  e1595b:	ff e0                	jmp    rax
  e1595d:	48 89 d7             	mov    rdi,rdx
  e15960:	48 89 de             	mov    rsi,rbx
  e15963:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e15968:	4c 89 f9             	mov    rcx,r15
  e1596b:	e8 50 ed f2 ff       	call   d446c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e15970:	eb 8e                	jmp    e15900 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2e40>
  e15972:	48 89 d7             	mov    rdi,rdx
  e15975:	48 89 de             	mov    rsi,rbx
  e15978:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e1597d:	4c 89 f9             	mov    rcx,r15
  e15980:	e8 fb 41 f3 ff       	call   d49b80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e15985:	e9 76 ff ff ff       	jmp    e15900 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2e40>
  e1598a:	48 89 d7             	mov    rdi,rdx
  e1598d:	48 89 de             	mov    rsi,rbx
  e15990:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e15995:	4c 89 f9             	mov    rcx,r15
  e15998:	e8 63 f7 f2 ff       	call   d45100 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e1599d:	e9 5e ff ff ff       	jmp    e15900 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2e40>
  e159a2:	48 89 d7             	mov    rdi,rdx
  e159a5:	48 89 de             	mov    rsi,rbx
  e159a8:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e159ad:	4c 89 f9             	mov    rcx,r15
  e159b0:	e8 8b 5a f3 ff       	call   d4b440 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e159b5:	e9 46 ff ff ff       	jmp    e15900 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2e40>
  e159ba:	48 89 d7             	mov    rdi,rdx
  e159bd:	48 89 de             	mov    rsi,rbx
  e159c0:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e159c5:	4c 89 f9             	mov    rcx,r15
  e159c8:	e8 f3 20 f3 ff       	call   d47ac0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e159cd:	e9 2e ff ff ff       	jmp    e15900 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2e40>
  e159d2:	48 89 d7             	mov    rdi,rdx
  e159d5:	48 89 de             	mov    rsi,rbx
  e159d8:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e159dd:	4c 89 f9             	mov    rcx,r15
  e159e0:	e8 9b f0 f2 ff       	call   d44a80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e159e5:	e9 16 ff ff ff       	jmp    e15900 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2e40>
  e159ea:	48 89 d7             	mov    rdi,rdx
  e159ed:	48 89 de             	mov    rsi,rbx
  e159f0:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e159f5:	4c 89 f9             	mov    rcx,r15
  e159f8:	e8 03 f3 f2 ff       	call   d44d00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e159fd:	e9 fe fe ff ff       	jmp    e15900 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2e40>
  e15a02:	48 89 d7             	mov    rdi,rdx
  e15a05:	48 89 de             	mov    rsi,rbx
  e15a08:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e15a0d:	4c 89 f9             	mov    rcx,r15
  e15a10:	e8 2b 0a f3 ff       	call   d46440 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e15a15:	e9 e6 fe ff ff       	jmp    e15900 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2e40>
  e15a1a:	48 89 d7             	mov    rdi,rdx
  e15a1d:	48 89 de             	mov    rsi,rbx
  e15a20:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e15a25:	4c 89 f9             	mov    rcx,r15
  e15a28:	e8 13 ee f2 ff       	call   d44840 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e15a2d:	e9 ce fe ff ff       	jmp    e15900 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2e40>
  e15a32:	48 89 d7             	mov    rdi,rdx
  e15a35:	48 89 de             	mov    rsi,rbx
  e15a38:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e15a3d:	4c 89 f9             	mov    rcx,r15
  e15a40:	e8 7b fb f2 ff       	call   d455c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e15a45:	e9 b6 fe ff ff       	jmp    e15900 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2e40>
  e15a4a:	48 89 d7             	mov    rdi,rdx
  e15a4d:	48 89 de             	mov    rsi,rbx
  e15a50:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e15a55:	4c 89 f9             	mov    rcx,r15
  e15a58:	e8 a3 6e f3 ff       	call   d4c900 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e15a5d:	e9 9e fe ff ff       	jmp    e15900 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2e40>
  e15a62:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e15a67:	0f 29 84 24 90 01 00 	movaps XMMWORD PTR [rsp+0x190],xmm0
  e15a6e:	00 
  e15a6f:	48 89 d7             	mov    rdi,rdx
  e15a72:	48 89 de             	mov    rsi,rbx
  e15a75:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e15a7a:	4c 89 f9             	mov    rcx,r15
  e15a7d:	4c 8d 8c 24 90 01 00 	lea    r9,[rsp+0x190]
  e15a84:	00 
  e15a85:	e8 b6 02 f3 ff       	call   d45d40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e15a8a:	e9 71 fe ff ff       	jmp    e15900 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2e40>
  e15a8f:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e15a94:	0f 29 84 24 90 01 00 	movaps XMMWORD PTR [rsp+0x190],xmm0
  e15a9b:	00 
  e15a9c:	48 89 d7             	mov    rdi,rdx
  e15a9f:	48 89 de             	mov    rsi,rbx
  e15aa2:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e15aa7:	4c 89 f9             	mov    rcx,r15
  e15aaa:	4c 8d 8c 24 90 01 00 	lea    r9,[rsp+0x190]
  e15ab1:	00 
  e15ab2:	e8 c9 32 f3 ff       	call   d48d80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e15ab7:	e9 44 fe ff ff       	jmp    e15900 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2e40>
  e15abc:	48 89 d7             	mov    rdi,rdx
  e15abf:	48 89 de             	mov    rsi,rbx
  e15ac2:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e15ac7:	4c 89 f9             	mov    rcx,r15
  e15aca:	e8 f1 13 f3 ff       	call   d46ec0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e15acf:	e9 2c fe ff ff       	jmp    e15900 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x2e40>
  e15ad4:	66 66 66 2e 0f 1f 84 	data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  e15adb:	00 00 00 00 00 
  e15ae0:	48 83 7c 24 20 00    	cmp    QWORD PTR [rsp+0x20],0x0
  e15ae6:	4c 8d a4 24 b0 01 00 	lea    r12,[rsp+0x1b0]
  e15aed:	00 
  e15aee:	4c 8b ac 24 b0 00 00 	mov    r13,QWORD PTR [rsp+0xb0]
  e15af5:	00 
  e15af6:	48 8b 44 24 60       	mov    rax,QWORD PTR [rsp+0x60]
  e15afb:	0f 84 9f f1 ff ff    	je     e14ca0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x21e0>
  e15b01:	80 7c 24 58 00       	cmp    BYTE PTR [rsp+0x58],0x0
  e15b06:	74 48                	je     e15b50 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3090>
  e15b08:	48 83 c3 10          	add    rbx,0x10
  e15b0c:	48 8b 44 24 20       	mov    rax,QWORD PTR [rsp+0x20]
  e15b11:	48 8b 8c 24 e8 00 00 	mov    rcx,QWORD PTR [rsp+0xe8]
  e15b18:	00 
  e15b19:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  e15b20:	0f 10 43 f0          	movups xmm0,XMMWORD PTR [rbx-0x10]
  e15b24:	0f 10 0b             	movups xmm1,XMMWORD PTR [rbx]
  e15b27:	0f 28 d0             	movaps xmm2,xmm0
  e15b2a:	0f 16 d1             	movlhps xmm2,xmm1
  e15b2d:	66 0f 15 c1          	unpckhpd xmm0,xmm1
  e15b31:	66 0f 2b 11          	movntpd XMMWORD PTR [rcx],xmm2
  e15b35:	48 8d 51 10          	lea    rdx,[rcx+0x10]
  e15b39:	66 0f 2b 02          	movntpd XMMWORD PTR [rdx],xmm0
  e15b3d:	4c 01 e9             	add    rcx,r13
  e15b40:	48 83 c3 20          	add    rbx,0x20
  e15b44:	48 ff c8             	dec    rax
  e15b47:	75 d7                	jne    e15b20 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3060>
  e15b49:	e9 52 f1 ff ff       	jmp    e14ca0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x21e0>
  e15b4e:	66 90                	xchg   ax,ax
  e15b50:	48 c1 64 24 40 04    	shl    QWORD PTR [rsp+0x40],0x4
  e15b56:	48 83 c3 10          	add    rbx,0x10
  e15b5a:	4c 8b 7c 24 20       	mov    r15,QWORD PTR [rsp+0x20]
  e15b5f:	4c 8b b4 24 e8 00 00 	mov    r14,QWORD PTR [rsp+0xe8]
  e15b66:	00 
  e15b67:	eb 20                	jmp    e15b89 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x30c9>
  e15b69:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  e15b70:	41 0f 11 0e          	movups XMMWORD PTR [r14],xmm1
  e15b74:	41 0f 11 46 10       	movups XMMWORD PTR [r14+0x10],xmm0
  e15b79:	4d 01 ee             	add    r14,r13
  e15b7c:	48 83 c3 20          	add    rbx,0x20
  e15b80:	49 ff cf             	dec    r15
  e15b83:	0f 84 17 f1 ff ff    	je     e14ca0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x21e0>
  e15b89:	0f 10 43 f0          	movups xmm0,XMMWORD PTR [rbx-0x10]
  e15b8d:	0f 10 13             	movups xmm2,XMMWORD PTR [rbx]
  e15b90:	0f 28 c8             	movaps xmm1,xmm0
  e15b93:	0f 16 ca             	movlhps xmm1,xmm2
  e15b96:	66 0f 15 c2          	unpckhpd xmm0,xmm2
  e15b9a:	48 83 f8 01          	cmp    rax,0x1
  e15b9e:	77 d0                	ja     e15b70 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x30b0>
  e15ba0:	0f 57 d2             	xorps  xmm2,xmm2
  e15ba3:	41 0f 29 94 24 d0 00 	movaps XMMWORD PTR [r12+0xd0],xmm2
  e15baa:	00 00 
  e15bac:	41 0f 29 94 24 c0 00 	movaps XMMWORD PTR [r12+0xc0],xmm2
  e15bb3:	00 00 
  e15bb5:	41 0f 29 94 24 b0 00 	movaps XMMWORD PTR [r12+0xb0],xmm2
  e15bbc:	00 00 
  e15bbe:	41 0f 29 94 24 a0 00 	movaps XMMWORD PTR [r12+0xa0],xmm2
  e15bc5:	00 00 
  e15bc7:	41 0f 29 94 24 90 00 	movaps XMMWORD PTR [r12+0x90],xmm2
  e15bce:	00 00 
  e15bd0:	41 0f 29 94 24 80 00 	movaps XMMWORD PTR [r12+0x80],xmm2
  e15bd7:	00 00 
  e15bd9:	41 0f 29 54 24 70    	movaps XMMWORD PTR [r12+0x70],xmm2
  e15bdf:	41 0f 29 54 24 60    	movaps XMMWORD PTR [r12+0x60],xmm2
  e15be5:	41 0f 29 54 24 50    	movaps XMMWORD PTR [r12+0x50],xmm2
  e15beb:	41 0f 29 54 24 40    	movaps XMMWORD PTR [r12+0x40],xmm2
  e15bf1:	41 0f 29 54 24 30    	movaps XMMWORD PTR [r12+0x30],xmm2
  e15bf7:	41 0f 29 54 24 20    	movaps XMMWORD PTR [r12+0x20],xmm2
  e15bfd:	41 0f 29 54 24 10    	movaps XMMWORD PTR [r12+0x10],xmm2
  e15c03:	41 0f 29 14 24       	movaps XMMWORD PTR [r12],xmm2
  e15c08:	0f 29 8c 24 90 01 00 	movaps XMMWORD PTR [rsp+0x190],xmm1
  e15c0f:	00 
  e15c10:	0f 29 84 24 a0 01 00 	movaps XMMWORD PTR [rsp+0x1a0],xmm0
  e15c17:	00 
  e15c18:	4c 89 f7             	mov    rdi,r14
  e15c1b:	48 8d b4 24 90 01 00 	lea    rsi,[rsp+0x190]
  e15c22:	00 
  e15c23:	48 8b 54 24 40       	mov    rdx,QWORD PTR [rsp+0x40]
  e15c28:	ff 15 72 c0 43 00    	call   QWORD PTR [rip+0x43c072]        # 1251ca0 <memcpy@GLIBC_2.14>
  e15c2e:	48 8b 44 24 60       	mov    rax,QWORD PTR [rsp+0x60]
  e15c33:	e9 41 ff ff ff       	jmp    e15b79 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x30b9>
  e15c38:	c7 44 24 58 00 00 00 	mov    DWORD PTR [rsp+0x58],0x0
  e15c3f:	00 
  e15c40:	4c 89 e0             	mov    rax,r12
  e15c43:	48 d1 e8             	shr    rax,1
  e15c46:	4c 89 e6             	mov    rsi,r12
  e15c49:	48 29 c6             	sub    rsi,rax
  e15c4c:	0f 84 06 10 00 00    	je     e16c58 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4198>
  e15c52:	4b 8d 04 76          	lea    rax,[r14+r14*2]
  e15c56:	48 8b 4c 24 50       	mov    rcx,QWORD PTR [rsp+0x50]
  e15c5b:	48 8d 14 c1          	lea    rdx,[rcx+rax*8]
  e15c5f:	48 89 54 24 70       	mov    QWORD PTR [rsp+0x70],rdx
  e15c64:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e15c69:	48 01 d2             	add    rdx,rdx
  e15c6c:	48 89 94 24 e0 00 00 	mov    QWORD PTR [rsp+0xe0],rdx
  e15c73:	00 
  e15c74:	48 8d 44 c1 20       	lea    rax,[rcx+rax*8+0x20]
  e15c79:	48 89 84 24 a8 00 00 	mov    QWORD PTR [rsp+0xa8],rax
  e15c80:	00 
  e15c81:	48 8b 84 24 88 00 00 	mov    rax,QWORD PTR [rsp+0x88]
  e15c88:	00 
  e15c89:	48 ff c8             	dec    rax
  e15c8c:	48 89 84 24 a0 00 00 	mov    QWORD PTR [rsp+0xa0],rax
  e15c93:	00 
  e15c94:	4c 89 e0             	mov    rax,r12
  e15c97:	48 c1 e0 04          	shl    rax,0x4
  e15c9b:	48 89 84 24 b0 00 00 	mov    QWORD PTR [rsp+0xb0],rax
  e15ca2:	00 
  e15ca3:	45 31 c0             	xor    r8d,r8d
  e15ca6:	eb 38                	jmp    e15ce0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3220>
  e15ca8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  e15caf:	00 
  e15cb0:	4c 8b 44 24 48       	mov    r8,QWORD PTR [rsp+0x48]
  e15cb5:	49 83 c0 02          	add    r8,0x2
  e15cb9:	48 8b b4 24 b8 00 00 	mov    rsi,QWORD PTR [rsp+0xb8]
  e15cc0:	00 
  e15cc1:	48 ff ce             	dec    rsi
  e15cc4:	48 83 84 24 e8 00 00 	add    QWORD PTR [rsp+0xe8],0x20
  e15ccb:	00 20 
  e15ccd:	48 85 f6             	test   rsi,rsi
  e15cd0:	4c 8b 64 24 28       	mov    r12,QWORD PTR [rsp+0x28]
  e15cd5:	48 8b 5c 24 68       	mov    rbx,QWORD PTR [rsp+0x68]
  e15cda:	0f 84 78 0f 00 00    	je     e16c58 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4198>
  e15ce0:	4c 89 e0             	mov    rax,r12
  e15ce3:	4c 29 c0             	sub    rax,r8
  e15ce6:	48 83 f8 02          	cmp    rax,0x2
  e15cea:	b9 02 00 00 00       	mov    ecx,0x2
  e15cef:	48 0f 42 c8          	cmovb  rcx,rax
  e15cf3:	48 89 4c 24 40       	mov    QWORD PTR [rsp+0x40],rcx
  e15cf8:	80 bc 24 00 01 00 00 	cmp    BYTE PTR [rsp+0x100],0x0
  e15cff:	00 
  e15d00:	48 89 44 24 60       	mov    QWORD PTR [rsp+0x60],rax
  e15d05:	48 89 b4 24 b8 00 00 	mov    QWORD PTR [rsp+0xb8],rsi
  e15d0c:	00 
  e15d0d:	4c 89 44 24 48       	mov    QWORD PTR [rsp+0x48],r8
  e15d12:	74 7c                	je     e15d90 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x32d0>
  e15d14:	48 83 bc 24 88 00 00 	cmp    QWORD PTR [rsp+0x88],0x0
  e15d1b:	00 00 
  e15d1d:	0f 84 2b 2a 00 00    	je     e1874e <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5c8e>
  e15d23:	48 8b 44 24 70       	mov    rax,QWORD PTR [rsp+0x70]
  e15d28:	48 8b 00             	mov    rax,QWORD PTR [rax]
  e15d2b:	48 83 c0 fe          	add    rax,0xfffffffffffffffe
  e15d2f:	48 83 f8 0d          	cmp    rax,0xd
  e15d33:	0f 87 d9 29 00 00    	ja     e18712 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5c52>
  e15d39:	48 8b 8c 24 e0 00 00 	mov    rcx,QWORD PTR [rsp+0xe0]
  e15d40:	00 
  e15d41:	49 0f af c8          	imul   rcx,r8
  e15d45:	48 8b 94 24 c0 00 00 	mov    rdx,QWORD PTR [rsp+0xc0]
  e15d4c:	00 
  e15d4d:	48 8d 3c ca          	lea    rdi,[rdx+rcx*8]
  e15d51:	48 8d 0d 48 e1 28 ff 	lea    rcx,[rip+0xffffffffff28e148]        # a3ea0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x31350>
  e15d58:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  e15d5c:	48 01 c8             	add    rax,rcx
  e15d5f:	ff e0                	jmp    rax
  e15d61:	48 89 de             	mov    rsi,rbx
  e15d64:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e15d69:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e15d6e:	e8 0d ae ff ff       	call   e10b80 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e15d73:	48 83 bc 24 88 00 00 	cmp    QWORD PTR [rsp+0x88],0x2
  e15d7a:	00 02 
  e15d7c:	0f 83 be 02 00 00    	jae    e16040 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3580>
  e15d82:	e9 69 0d 00 00       	jmp    e16af0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4030>
  e15d87:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  e15d8e:	00 00 
  e15d90:	4c 89 c7             	mov    rdi,r8
  e15d93:	48 c1 e7 04          	shl    rdi,0x4
  e15d97:	48 03 bc 24 c0 00 00 	add    rdi,QWORD PTR [rsp+0xc0]
  e15d9e:	00 
  e15d9f:	48 83 f8 01          	cmp    rax,0x1
  e15da3:	76 6b                	jbe    e15e10 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3350>
  e15da5:	48 83 bc 24 88 00 00 	cmp    QWORD PTR [rsp+0x88],0x0
  e15dac:	00 00 
  e15dae:	0f 84 9a 29 00 00    	je     e1874e <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5c8e>
  e15db4:	48 8b 44 24 70       	mov    rax,QWORD PTR [rsp+0x70]
  e15db9:	48 8b 00             	mov    rax,QWORD PTR [rax]
  e15dbc:	48 83 c0 fe          	add    rax,0xfffffffffffffffe
  e15dc0:	48 83 f8 0d          	cmp    rax,0xd
  e15dc4:	0f 87 48 29 00 00    	ja     e18712 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5c52>
  e15dca:	48 8d 0d 5b e0 28 ff 	lea    rcx,[rip+0xffffffffff28e05b]        # a3e2c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x312dc>
  e15dd1:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  e15dd5:	48 01 c8             	add    rax,rcx
  e15dd8:	ff e0                	jmp    rax
  e15dda:	48 89 de             	mov    rsi,rbx
  e15ddd:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e15de2:	4c 89 e1             	mov    rcx,r12
  e15de5:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e15dea:	e8 d1 ac ff ff       	call   e10ac0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e15def:	48 83 bc 24 88 00 00 	cmp    QWORD PTR [rsp+0x88],0x2
  e15df6:	00 02 
  e15df8:	0f 83 72 08 00 00    	jae    e16670 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3bb0>
  e15dfe:	e9 ed 0c 00 00       	jmp    e16af0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4030>
  e15e03:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  e15e0a:	84 00 00 00 00 00 
  e15e10:	48 83 bc 24 88 00 00 	cmp    QWORD PTR [rsp+0x88],0x0
  e15e17:	00 00 
  e15e19:	0f 84 2f 29 00 00    	je     e1874e <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5c8e>
  e15e1f:	48 8b 44 24 70       	mov    rax,QWORD PTR [rsp+0x70]
  e15e24:	48 8b 00             	mov    rax,QWORD PTR [rax]
  e15e27:	48 83 c0 fe          	add    rax,0xfffffffffffffffe
  e15e2b:	48 83 f8 0d          	cmp    rax,0xd
  e15e2f:	0f 87 dd 28 00 00    	ja     e18712 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5c52>
  e15e35:	48 8d 0d 7c df 28 ff 	lea    rcx,[rip+0xffffffffff28df7c]        # a3db8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x31268>
  e15e3c:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  e15e40:	48 01 c8             	add    rax,rcx
  e15e43:	ff e0                	jmp    rax
  e15e45:	48 89 de             	mov    rsi,rbx
  e15e48:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e15e4d:	4c 89 e1             	mov    rcx,r12
  e15e50:	4c 8b 44 24 40       	mov    r8,QWORD PTR [rsp+0x40]
  e15e55:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e15e5a:	e8 a1 20 fd ff       	call   de7f00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e15e5f:	48 83 bc 24 88 00 00 	cmp    QWORD PTR [rsp+0x88],0x2
  e15e66:	00 02 
  e15e68:	0f 83 4f 0a 00 00    	jae    e168bd <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3dfd>
  e15e6e:	e9 7d 0c 00 00       	jmp    e16af0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4030>
  e15e73:	48 89 de             	mov    rsi,rbx
  e15e76:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e15e7b:	e8 c0 79 fe ff       	call   dfd840 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e15e80:	48 83 bc 24 88 00 00 	cmp    QWORD PTR [rsp+0x88],0x2
  e15e87:	00 02 
  e15e89:	0f 83 b1 01 00 00    	jae    e16040 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3580>
  e15e8f:	e9 5c 0c 00 00       	jmp    e16af0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4030>
  e15e94:	48 89 de             	mov    rsi,rbx
  e15e97:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e15e9c:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e15ea1:	e8 9a f2 fd ff       	call   df5140 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e15ea6:	48 83 bc 24 88 00 00 	cmp    QWORD PTR [rsp+0x88],0x2
  e15ead:	00 02 
  e15eaf:	0f 83 8b 01 00 00    	jae    e16040 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3580>
  e15eb5:	e9 36 0c 00 00       	jmp    e16af0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4030>
  e15eba:	48 89 de             	mov    rsi,rbx
  e15ebd:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e15ec2:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e15ec7:	e8 74 33 ff ff       	call   e09240 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e15ecc:	48 83 bc 24 88 00 00 	cmp    QWORD PTR [rsp+0x88],0x2
  e15ed3:	00 02 
  e15ed5:	0f 83 65 01 00 00    	jae    e16040 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3580>
  e15edb:	e9 10 0c 00 00       	jmp    e16af0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4030>
  e15ee0:	48 89 de             	mov    rsi,rbx
  e15ee3:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e15ee8:	e8 13 f5 fd ff       	call   df5400 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e15eed:	48 83 bc 24 88 00 00 	cmp    QWORD PTR [rsp+0x88],0x2
  e15ef4:	00 02 
  e15ef6:	0f 83 44 01 00 00    	jae    e16040 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3580>
  e15efc:	e9 ef 0b 00 00       	jmp    e16af0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4030>
  e15f01:	48 89 de             	mov    rsi,rbx
  e15f04:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e15f09:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e15f0e:	e8 ad 8d fe ff       	call   dfecc0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e15f13:	48 83 bc 24 88 00 00 	cmp    QWORD PTR [rsp+0x88],0x2
  e15f1a:	00 02 
  e15f1c:	0f 83 1e 01 00 00    	jae    e16040 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3580>
  e15f22:	e9 c9 0b 00 00       	jmp    e16af0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4030>
  e15f27:	48 89 de             	mov    rsi,rbx
  e15f2a:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e15f2f:	e8 cc 56 ff ff       	call   e0b600 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e15f34:	48 83 bc 24 88 00 00 	cmp    QWORD PTR [rsp+0x88],0x2
  e15f3b:	00 02 
  e15f3d:	0f 83 fd 00 00 00    	jae    e16040 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3580>
  e15f43:	e9 a8 0b 00 00       	jmp    e16af0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4030>
  e15f48:	48 89 de             	mov    rsi,rbx
  e15f4b:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e15f50:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e15f55:	e8 66 84 fd ff       	call   dee3c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e15f5a:	48 83 bc 24 88 00 00 	cmp    QWORD PTR [rsp+0x88],0x2
  e15f61:	00 02 
  e15f63:	0f 83 d7 00 00 00    	jae    e16040 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3580>
  e15f69:	e9 82 0b 00 00       	jmp    e16af0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4030>
  e15f6e:	48 89 de             	mov    rsi,rbx
  e15f71:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e15f76:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e15f7b:	e8 00 8c fe ff       	call   dfeb80 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e15f80:	48 83 bc 24 88 00 00 	cmp    QWORD PTR [rsp+0x88],0x2
  e15f87:	00 02 
  e15f89:	0f 83 b1 00 00 00    	jae    e16040 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3580>
  e15f8f:	e9 5c 0b 00 00       	jmp    e16af0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4030>
  e15f94:	48 89 de             	mov    rsi,rbx
  e15f97:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e15f9c:	e8 9f a5 ff ff       	call   e10540 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e15fa1:	48 83 bc 24 88 00 00 	cmp    QWORD PTR [rsp+0x88],0x2
  e15fa8:	00 02 
  e15faa:	0f 83 90 00 00 00    	jae    e16040 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3580>
  e15fb0:	e9 3b 0b 00 00       	jmp    e16af0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4030>
  e15fb5:	48 89 de             	mov    rsi,rbx
  e15fb8:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e15fbd:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e15fc2:	e8 39 37 fd ff       	call   de9700 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e15fc7:	48 83 bc 24 88 00 00 	cmp    QWORD PTR [rsp+0x88],0x2
  e15fce:	00 02 
  e15fd0:	73 6e                	jae    e16040 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3580>
  e15fd2:	e9 19 0b 00 00       	jmp    e16af0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4030>
  e15fd7:	48 89 de             	mov    rsi,rbx
  e15fda:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e15fdf:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e15fe4:	e8 d7 98 fe ff       	call   dff8c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e15fe9:	48 83 bc 24 88 00 00 	cmp    QWORD PTR [rsp+0x88],0x2
  e15ff0:	00 02 
  e15ff2:	73 4c                	jae    e16040 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3580>
  e15ff4:	e9 f7 0a 00 00       	jmp    e16af0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4030>
  e15ff9:	48 89 de             	mov    rsi,rbx
  e15ffc:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e16001:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e16006:	e8 b5 45 fd ff       	call   dea5c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e1600b:	48 83 bc 24 88 00 00 	cmp    QWORD PTR [rsp+0x88],0x2
  e16012:	00 02 
  e16014:	73 2a                	jae    e16040 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3580>
  e16016:	e9 d5 0a 00 00       	jmp    e16af0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4030>
  e1601b:	48 89 de             	mov    rsi,rbx
  e1601e:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e16023:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e16028:	e8 d3 e4 fd ff       	call   df4500 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e1602d:	48 83 bc 24 88 00 00 	cmp    QWORD PTR [rsp+0x88],0x2
  e16034:	00 02 
  e16036:	0f 82 b4 0a 00 00    	jb     e16af0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4030>
  e1603c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  e16040:	48 8b 44 24 70       	mov    rax,QWORD PTR [rsp+0x70]
  e16045:	4c 8b 38             	mov    r15,QWORD PTR [rax]
  e16048:	4c 8b a4 24 a0 00 00 	mov    r12,QWORD PTR [rsp+0xa0]
  e1604f:	00 
  e16050:	4c 8b ac 24 a8 00 00 	mov    r13,QWORD PTR [rsp+0xa8]
  e16057:	00 
  e16058:	48 8b 44 24 68       	mov    rax,QWORD PTR [rsp+0x68]
  e1605d:	48 8b 8c 24 98 00 00 	mov    rcx,QWORD PTR [rsp+0x98]
  e16064:	00 
  e16065:	eb 45                	jmp    e160ac <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x35ec>
  e16067:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e1606c:	0f 29 84 24 90 01 00 	movaps XMMWORD PTR [rsp+0x190],xmm0
  e16073:	00 
  e16074:	48 89 d7             	mov    rdi,rdx
  e16077:	48 89 de             	mov    rsi,rbx
  e1607a:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e1607f:	4c 89 f9             	mov    rcx,r15
  e16082:	4c 8d 8c 24 90 01 00 	lea    r9,[rsp+0x190]
  e16089:	00 
  e1608a:	e8 f1 7d f3 ff       	call   d4de80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e1608f:	90                   	nop
  e16090:	4d 0f af fe          	imul   r15,r14
  e16094:	49 83 c5 18          	add    r13,0x18
  e16098:	48 89 d8             	mov    rax,rbx
  e1609b:	49 ff cc             	dec    r12
  e1609e:	48 8b 8c 24 90 00 00 	mov    rcx,QWORD PTR [rsp+0x90]
  e160a5:	00 
  e160a6:	0f 84 44 0a 00 00    	je     e16af0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4030>
  e160ac:	48 89 c2             	mov    rdx,rax
  e160af:	4d 8b 75 f8          	mov    r14,QWORD PTR [r13-0x8]
  e160b3:	4d 8b 45 00          	mov    r8,QWORD PTR [r13+0x0]
  e160b7:	4c 03 44 24 50       	add    r8,QWORD PTR [rsp+0x50]
  e160bc:	4c 89 b4 24 30 01 00 	mov    QWORD PTR [rsp+0x130],r14
  e160c3:	00 
  e160c4:	49 8d 46 fe          	lea    rax,[r14-0x2]
  e160c8:	48 83 f8 0e          	cmp    rax,0xe
  e160cc:	0f 87 d6 25 00 00    	ja     e186a8 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5be8>
  e160d2:	48 89 cb             	mov    rbx,rcx
  e160d5:	48 8d 0d fc dd 28 ff 	lea    rcx,[rip+0xffffffffff28ddfc]        # a3ed8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x31388>
  e160dc:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  e160e0:	48 01 c8             	add    rax,rcx
  e160e3:	48 89 94 24 90 00 00 	mov    QWORD PTR [rsp+0x90],rdx
  e160ea:	00 
  e160eb:	ff e0                	jmp    rax
  e160ed:	48 89 d7             	mov    rdi,rdx
  e160f0:	48 89 de             	mov    rsi,rbx
  e160f3:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e160f8:	4c 89 f9             	mov    rcx,r15
  e160fb:	e8 c0 e5 f2 ff       	call   d446c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e16100:	eb 8e                	jmp    e16090 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x35d0>
  e16102:	48 89 d7             	mov    rdi,rdx
  e16105:	48 89 de             	mov    rsi,rbx
  e16108:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e1610d:	4c 89 f9             	mov    rcx,r15
  e16110:	e8 6b 3a f3 ff       	call   d49b80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e16115:	e9 76 ff ff ff       	jmp    e16090 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x35d0>
  e1611a:	48 89 d7             	mov    rdi,rdx
  e1611d:	48 89 de             	mov    rsi,rbx
  e16120:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e16125:	4c 89 f9             	mov    rcx,r15
  e16128:	e8 d3 ef f2 ff       	call   d45100 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e1612d:	e9 5e ff ff ff       	jmp    e16090 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x35d0>
  e16132:	48 89 d7             	mov    rdi,rdx
  e16135:	48 89 de             	mov    rsi,rbx
  e16138:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e1613d:	4c 89 f9             	mov    rcx,r15
  e16140:	e8 fb 52 f3 ff       	call   d4b440 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e16145:	e9 46 ff ff ff       	jmp    e16090 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x35d0>
  e1614a:	48 89 d7             	mov    rdi,rdx
  e1614d:	48 89 de             	mov    rsi,rbx
  e16150:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e16155:	4c 89 f9             	mov    rcx,r15
  e16158:	e8 63 19 f3 ff       	call   d47ac0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e1615d:	e9 2e ff ff ff       	jmp    e16090 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x35d0>
  e16162:	48 89 d7             	mov    rdi,rdx
  e16165:	48 89 de             	mov    rsi,rbx
  e16168:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e1616d:	4c 89 f9             	mov    rcx,r15
  e16170:	e8 0b e9 f2 ff       	call   d44a80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e16175:	e9 16 ff ff ff       	jmp    e16090 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x35d0>
  e1617a:	48 89 d7             	mov    rdi,rdx
  e1617d:	48 89 de             	mov    rsi,rbx
  e16180:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e16185:	4c 89 f9             	mov    rcx,r15
  e16188:	e8 73 eb f2 ff       	call   d44d00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e1618d:	e9 fe fe ff ff       	jmp    e16090 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x35d0>
  e16192:	48 89 d7             	mov    rdi,rdx
  e16195:	48 89 de             	mov    rsi,rbx
  e16198:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e1619d:	4c 89 f9             	mov    rcx,r15
  e161a0:	e8 9b 02 f3 ff       	call   d46440 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e161a5:	e9 e6 fe ff ff       	jmp    e16090 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x35d0>
  e161aa:	48 89 d7             	mov    rdi,rdx
  e161ad:	48 89 de             	mov    rsi,rbx
  e161b0:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e161b5:	4c 89 f9             	mov    rcx,r15
  e161b8:	e8 83 e6 f2 ff       	call   d44840 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e161bd:	e9 ce fe ff ff       	jmp    e16090 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x35d0>
  e161c2:	48 89 d7             	mov    rdi,rdx
  e161c5:	48 89 de             	mov    rsi,rbx
  e161c8:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e161cd:	4c 89 f9             	mov    rcx,r15
  e161d0:	e8 eb f3 f2 ff       	call   d455c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e161d5:	e9 b6 fe ff ff       	jmp    e16090 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x35d0>
  e161da:	48 89 d7             	mov    rdi,rdx
  e161dd:	48 89 de             	mov    rsi,rbx
  e161e0:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e161e5:	4c 89 f9             	mov    rcx,r15
  e161e8:	e8 13 67 f3 ff       	call   d4c900 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e161ed:	e9 9e fe ff ff       	jmp    e16090 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x35d0>
  e161f2:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e161f7:	0f 29 84 24 90 01 00 	movaps XMMWORD PTR [rsp+0x190],xmm0
  e161fe:	00 
  e161ff:	48 89 d7             	mov    rdi,rdx
  e16202:	48 89 de             	mov    rsi,rbx
  e16205:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e1620a:	4c 89 f9             	mov    rcx,r15
  e1620d:	4c 8d 8c 24 90 01 00 	lea    r9,[rsp+0x190]
  e16214:	00 
  e16215:	e8 26 fb f2 ff       	call   d45d40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e1621a:	e9 71 fe ff ff       	jmp    e16090 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x35d0>
  e1621f:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e16224:	0f 29 84 24 90 01 00 	movaps XMMWORD PTR [rsp+0x190],xmm0
  e1622b:	00 
  e1622c:	48 89 d7             	mov    rdi,rdx
  e1622f:	48 89 de             	mov    rsi,rbx
  e16232:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e16237:	4c 89 f9             	mov    rcx,r15
  e1623a:	4c 8d 8c 24 90 01 00 	lea    r9,[rsp+0x190]
  e16241:	00 
  e16242:	e8 39 2b f3 ff       	call   d48d80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e16247:	e9 44 fe ff ff       	jmp    e16090 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x35d0>
  e1624c:	48 89 d7             	mov    rdi,rdx
  e1624f:	48 89 de             	mov    rsi,rbx
  e16252:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e16257:	4c 89 f9             	mov    rcx,r15
  e1625a:	e8 61 0c f3 ff       	call   d46ec0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e1625f:	e9 2c fe ff ff       	jmp    e16090 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x35d0>
  e16264:	48 89 de             	mov    rsi,rbx
  e16267:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e1626c:	4c 89 e1             	mov    rcx,r12
  e1626f:	e8 cc 74 ff ff       	call   e0d740 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e16274:	48 83 bc 24 88 00 00 	cmp    QWORD PTR [rsp+0x88],0x2
  e1627b:	00 02 
  e1627d:	0f 83 ed 03 00 00    	jae    e16670 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3bb0>
  e16283:	e9 68 08 00 00       	jmp    e16af0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4030>
  e16288:	48 89 de             	mov    rsi,rbx
  e1628b:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e16290:	4c 89 e1             	mov    rcx,r12
  e16293:	4c 8b 44 24 40       	mov    r8,QWORD PTR [rsp+0x40]
  e16298:	e8 a3 a0 fe ff       	call   e00340 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e1629d:	48 83 bc 24 88 00 00 	cmp    QWORD PTR [rsp+0x88],0x2
  e162a4:	00 02 
  e162a6:	0f 83 11 06 00 00    	jae    e168bd <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3dfd>
  e162ac:	e9 3f 08 00 00       	jmp    e16af0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4030>
  e162b1:	48 89 de             	mov    rsi,rbx
  e162b4:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e162b9:	4c 89 e1             	mov    rcx,r12
  e162bc:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e162c1:	e8 3a 11 fe ff       	call   df7400 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e162c6:	48 83 bc 24 88 00 00 	cmp    QWORD PTR [rsp+0x88],0x2
  e162cd:	00 02 
  e162cf:	0f 83 9b 03 00 00    	jae    e16670 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3bb0>
  e162d5:	e9 16 08 00 00       	jmp    e16af0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4030>
  e162da:	48 89 de             	mov    rsi,rbx
  e162dd:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e162e2:	4c 89 e1             	mov    rcx,r12
  e162e5:	4c 8b 44 24 40       	mov    r8,QWORD PTR [rsp+0x40]
  e162ea:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e162ef:	e8 4c 8e fe ff       	call   dff140 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e162f4:	48 83 bc 24 88 00 00 	cmp    QWORD PTR [rsp+0x88],0x2
  e162fb:	00 02 
  e162fd:	0f 83 ba 05 00 00    	jae    e168bd <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3dfd>
  e16303:	e9 e8 07 00 00       	jmp    e16af0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4030>
  e16308:	48 89 de             	mov    rsi,rbx
  e1630b:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e16310:	4c 89 e1             	mov    rcx,r12
  e16313:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e16318:	e8 a3 bc fe ff       	call   e01fc0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e1631d:	48 83 bc 24 88 00 00 	cmp    QWORD PTR [rsp+0x88],0x2
  e16324:	00 02 
  e16326:	0f 83 44 03 00 00    	jae    e16670 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3bb0>
  e1632c:	e9 bf 07 00 00       	jmp    e16af0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4030>
  e16331:	48 89 de             	mov    rsi,rbx
  e16334:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e16339:	4c 89 e1             	mov    rcx,r12
  e1633c:	4c 8b 44 24 40       	mov    r8,QWORD PTR [rsp+0x40]
  e16341:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e16346:	e8 35 c6 fd ff       	call   df2980 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e1634b:	48 83 bc 24 88 00 00 	cmp    QWORD PTR [rsp+0x88],0x2
  e16352:	00 02 
  e16354:	0f 83 63 05 00 00    	jae    e168bd <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3dfd>
  e1635a:	e9 91 07 00 00       	jmp    e16af0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4030>
  e1635f:	48 89 de             	mov    rsi,rbx
  e16362:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e16367:	4c 89 e1             	mov    rcx,r12
  e1636a:	e8 11 2d fe ff       	call   df9080 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e1636f:	48 83 bc 24 88 00 00 	cmp    QWORD PTR [rsp+0x88],0x2
  e16376:	00 02 
  e16378:	0f 83 f2 02 00 00    	jae    e16670 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3bb0>
  e1637e:	e9 6d 07 00 00       	jmp    e16af0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4030>
  e16383:	48 89 de             	mov    rsi,rbx
  e16386:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e1638b:	4c 89 e1             	mov    rcx,r12
  e1638e:	4c 8b 44 24 40       	mov    r8,QWORD PTR [rsp+0x40]
  e16393:	e8 e8 96 fd ff       	call   defa80 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e16398:	48 83 bc 24 88 00 00 	cmp    QWORD PTR [rsp+0x88],0x2
  e1639f:	00 02 
  e163a1:	0f 83 16 05 00 00    	jae    e168bd <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3dfd>
  e163a7:	e9 44 07 00 00       	jmp    e16af0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4030>
  e163ac:	48 89 de             	mov    rsi,rbx
  e163af:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e163b4:	4c 89 e1             	mov    rcx,r12
  e163b7:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e163bc:	e8 ff ca fe ff       	call   e02ec0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e163c1:	48 83 bc 24 88 00 00 	cmp    QWORD PTR [rsp+0x88],0x2
  e163c8:	00 02 
  e163ca:	0f 83 a0 02 00 00    	jae    e16670 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3bb0>
  e163d0:	e9 1b 07 00 00       	jmp    e16af0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4030>
  e163d5:	48 89 de             	mov    rsi,rbx
  e163d8:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e163dd:	4c 89 e1             	mov    rcx,r12
  e163e0:	4c 8b 44 24 40       	mov    r8,QWORD PTR [rsp+0x40]
  e163e5:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e163ea:	e8 11 99 fe ff       	call   dffd00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e163ef:	48 83 bc 24 88 00 00 	cmp    QWORD PTR [rsp+0x88],0x2
  e163f6:	00 02 
  e163f8:	0f 83 bf 04 00 00    	jae    e168bd <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3dfd>
  e163fe:	e9 ed 06 00 00       	jmp    e16af0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4030>
  e16403:	48 89 de             	mov    rsi,rbx
  e16406:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e1640b:	4c 89 e1             	mov    rcx,r12
  e1640e:	e8 ad 7c fd ff       	call   dee0c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e16413:	48 83 bc 24 88 00 00 	cmp    QWORD PTR [rsp+0x88],0x2
  e1641a:	00 02 
  e1641c:	0f 83 4e 02 00 00    	jae    e16670 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3bb0>
  e16422:	e9 c9 06 00 00       	jmp    e16af0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4030>
  e16427:	48 89 de             	mov    rsi,rbx
  e1642a:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e1642f:	4c 89 e1             	mov    rcx,r12
  e16432:	4c 8b 44 24 40       	mov    r8,QWORD PTR [rsp+0x40]
  e16437:	e8 04 fd fd ff       	call   df6140 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e1643c:	48 83 bc 24 88 00 00 	cmp    QWORD PTR [rsp+0x88],0x2
  e16443:	00 02 
  e16445:	0f 83 72 04 00 00    	jae    e168bd <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3dfd>
  e1644b:	e9 a0 06 00 00       	jmp    e16af0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4030>
  e16450:	48 89 de             	mov    rsi,rbx
  e16453:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e16458:	4c 89 e1             	mov    rcx,r12
  e1645b:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e16460:	e8 db be ff ff       	call   e12340 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e16465:	48 83 bc 24 88 00 00 	cmp    QWORD PTR [rsp+0x88],0x2
  e1646c:	00 02 
  e1646e:	0f 83 fc 01 00 00    	jae    e16670 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3bb0>
  e16474:	e9 77 06 00 00       	jmp    e16af0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4030>
  e16479:	48 89 de             	mov    rsi,rbx
  e1647c:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e16481:	4c 89 e1             	mov    rcx,r12
  e16484:	4c 8b 44 24 40       	mov    r8,QWORD PTR [rsp+0x40]
  e16489:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e1648e:	e8 ed 1f ff ff       	call   e08480 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e16493:	48 83 bc 24 88 00 00 	cmp    QWORD PTR [rsp+0x88],0x2
  e1649a:	00 02 
  e1649c:	0f 83 1b 04 00 00    	jae    e168bd <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3dfd>
  e164a2:	e9 49 06 00 00       	jmp    e16af0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4030>
  e164a7:	48 89 de             	mov    rsi,rbx
  e164aa:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e164af:	4c 89 e1             	mov    rcx,r12
  e164b2:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e164b7:	e8 04 9d fe ff       	call   e001c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e164bc:	48 83 bc 24 88 00 00 	cmp    QWORD PTR [rsp+0x88],0x2
  e164c3:	00 02 
  e164c5:	0f 83 a5 01 00 00    	jae    e16670 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3bb0>
  e164cb:	e9 20 06 00 00       	jmp    e16af0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4030>
  e164d0:	48 89 de             	mov    rsi,rbx
  e164d3:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e164d8:	4c 89 e1             	mov    rcx,r12
  e164db:	4c 8b 44 24 40       	mov    r8,QWORD PTR [rsp+0x40]
  e164e0:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e164e5:	e8 16 25 fe ff       	call   df8a00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e164ea:	48 83 bc 24 88 00 00 	cmp    QWORD PTR [rsp+0x88],0x2
  e164f1:	00 02 
  e164f3:	0f 83 c4 03 00 00    	jae    e168bd <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3dfd>
  e164f9:	e9 f2 05 00 00       	jmp    e16af0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4030>
  e164fe:	48 89 de             	mov    rsi,rbx
  e16501:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e16506:	4c 89 e1             	mov    rcx,r12
  e16509:	e8 f2 75 fd ff       	call   dedb00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e1650e:	48 83 bc 24 88 00 00 	cmp    QWORD PTR [rsp+0x88],0x2
  e16515:	00 02 
  e16517:	0f 83 53 01 00 00    	jae    e16670 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3bb0>
  e1651d:	e9 ce 05 00 00       	jmp    e16af0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4030>
  e16522:	48 89 de             	mov    rsi,rbx
  e16525:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e1652a:	4c 89 e1             	mov    rcx,r12
  e1652d:	4c 8b 44 24 40       	mov    r8,QWORD PTR [rsp+0x40]
  e16532:	e8 09 27 fd ff       	call   de8c40 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e16537:	48 83 bc 24 88 00 00 	cmp    QWORD PTR [rsp+0x88],0x2
  e1653e:	00 02 
  e16540:	0f 83 77 03 00 00    	jae    e168bd <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3dfd>
  e16546:	e9 a5 05 00 00       	jmp    e16af0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4030>
  e1654b:	48 89 de             	mov    rsi,rbx
  e1654e:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e16553:	4c 89 e1             	mov    rcx,r12
  e16556:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e1655b:	e8 20 53 ff ff       	call   e0b880 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e16560:	48 83 bc 24 88 00 00 	cmp    QWORD PTR [rsp+0x88],0x2
  e16567:	00 02 
  e16569:	0f 83 01 01 00 00    	jae    e16670 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3bb0>
  e1656f:	e9 7c 05 00 00       	jmp    e16af0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4030>
  e16574:	48 89 de             	mov    rsi,rbx
  e16577:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e1657c:	4c 89 e1             	mov    rcx,r12
  e1657f:	4c 8b 44 24 40       	mov    r8,QWORD PTR [rsp+0x40]
  e16584:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e16589:	e8 72 85 ff ff       	call   e0eb00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e1658e:	48 83 bc 24 88 00 00 	cmp    QWORD PTR [rsp+0x88],0x2
  e16595:	00 02 
  e16597:	0f 83 20 03 00 00    	jae    e168bd <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3dfd>
  e1659d:	e9 4e 05 00 00       	jmp    e16af0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4030>
  e165a2:	48 89 de             	mov    rsi,rbx
  e165a5:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e165aa:	4c 89 e1             	mov    rcx,r12
  e165ad:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e165b2:	e8 49 62 ff ff       	call   e0c800 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e165b7:	48 83 bc 24 88 00 00 	cmp    QWORD PTR [rsp+0x88],0x2
  e165be:	00 02 
  e165c0:	0f 83 aa 00 00 00    	jae    e16670 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3bb0>
  e165c6:	e9 25 05 00 00       	jmp    e16af0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4030>
  e165cb:	48 89 de             	mov    rsi,rbx
  e165ce:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e165d3:	4c 89 e1             	mov    rcx,r12
  e165d6:	4c 8b 44 24 40       	mov    r8,QWORD PTR [rsp+0x40]
  e165db:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e165e0:	e8 9b 14 ff ff       	call   e07a80 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e165e5:	48 83 bc 24 88 00 00 	cmp    QWORD PTR [rsp+0x88],0x2
  e165ec:	00 02 
  e165ee:	0f 83 c9 02 00 00    	jae    e168bd <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3dfd>
  e165f4:	e9 f7 04 00 00       	jmp    e16af0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4030>
  e165f9:	48 89 de             	mov    rsi,rbx
  e165fc:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e16601:	4c 89 e1             	mov    rcx,r12
  e16604:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e16609:	e8 32 ba fd ff       	call   df2040 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e1660e:	48 83 bc 24 88 00 00 	cmp    QWORD PTR [rsp+0x88],0x2
  e16615:	00 02 
  e16617:	73 57                	jae    e16670 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3bb0>
  e16619:	e9 d2 04 00 00       	jmp    e16af0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4030>
  e1661e:	48 89 de             	mov    rsi,rbx
  e16621:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e16626:	4c 89 e1             	mov    rcx,r12
  e16629:	4c 8b 44 24 40       	mov    r8,QWORD PTR [rsp+0x40]
  e1662e:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e16633:	e8 88 12 fe ff       	call   df78c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e16638:	48 83 bc 24 88 00 00 	cmp    QWORD PTR [rsp+0x88],0x2
  e1663f:	00 02 
  e16641:	0f 83 76 02 00 00    	jae    e168bd <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3dfd>
  e16647:	e9 a4 04 00 00       	jmp    e16af0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4030>
  e1664c:	48 89 de             	mov    rsi,rbx
  e1664f:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e16654:	4c 89 e1             	mov    rcx,r12
  e16657:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e1665c:	e8 df b1 fd ff       	call   df1840 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e16661:	48 83 bc 24 88 00 00 	cmp    QWORD PTR [rsp+0x88],0x2
  e16668:	00 02 
  e1666a:	0f 82 80 04 00 00    	jb     e16af0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4030>
  e16670:	48 8b 44 24 70       	mov    rax,QWORD PTR [rsp+0x70]
  e16675:	4c 8b 38             	mov    r15,QWORD PTR [rax]
  e16678:	4c 8b a4 24 a0 00 00 	mov    r12,QWORD PTR [rsp+0xa0]
  e1667f:	00 
  e16680:	4c 8b ac 24 a8 00 00 	mov    r13,QWORD PTR [rsp+0xa8]
  e16687:	00 
  e16688:	48 8b 44 24 68       	mov    rax,QWORD PTR [rsp+0x68]
  e1668d:	48 8b 8c 24 98 00 00 	mov    rcx,QWORD PTR [rsp+0x98]
  e16694:	00 
  e16695:	eb 45                	jmp    e166dc <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3c1c>
  e16697:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e1669c:	0f 29 84 24 90 01 00 	movaps XMMWORD PTR [rsp+0x190],xmm0
  e166a3:	00 
  e166a4:	48 89 d7             	mov    rdi,rdx
  e166a7:	48 89 de             	mov    rsi,rbx
  e166aa:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e166af:	4c 89 f9             	mov    rcx,r15
  e166b2:	4c 8d 8c 24 90 01 00 	lea    r9,[rsp+0x190]
  e166b9:	00 
  e166ba:	e8 c1 77 f3 ff       	call   d4de80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e166bf:	90                   	nop
  e166c0:	4d 0f af fe          	imul   r15,r14
  e166c4:	49 83 c5 18          	add    r13,0x18
  e166c8:	48 89 d8             	mov    rax,rbx
  e166cb:	49 ff cc             	dec    r12
  e166ce:	48 8b 8c 24 90 00 00 	mov    rcx,QWORD PTR [rsp+0x90]
  e166d5:	00 
  e166d6:	0f 84 14 04 00 00    	je     e16af0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4030>
  e166dc:	48 89 c2             	mov    rdx,rax
  e166df:	4d 8b 75 f8          	mov    r14,QWORD PTR [r13-0x8]
  e166e3:	4d 8b 45 00          	mov    r8,QWORD PTR [r13+0x0]
  e166e7:	4c 03 44 24 50       	add    r8,QWORD PTR [rsp+0x50]
  e166ec:	4c 89 b4 24 30 01 00 	mov    QWORD PTR [rsp+0x130],r14
  e166f3:	00 
  e166f4:	49 8d 46 fe          	lea    rax,[r14-0x2]
  e166f8:	48 83 f8 0e          	cmp    rax,0xe
  e166fc:	0f 87 a6 1f 00 00    	ja     e186a8 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5be8>
  e16702:	48 89 cb             	mov    rbx,rcx
  e16705:	48 8d 0d 58 d7 28 ff 	lea    rcx,[rip+0xffffffffff28d758]        # a3e64 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x31314>
  e1670c:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  e16710:	48 01 c8             	add    rax,rcx
  e16713:	48 89 94 24 90 00 00 	mov    QWORD PTR [rsp+0x90],rdx
  e1671a:	00 
  e1671b:	ff e0                	jmp    rax
  e1671d:	48 89 d7             	mov    rdi,rdx
  e16720:	48 89 de             	mov    rsi,rbx
  e16723:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e16728:	4c 89 f9             	mov    rcx,r15
  e1672b:	e8 90 df f2 ff       	call   d446c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e16730:	eb 8e                	jmp    e166c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3c00>
  e16732:	48 89 d7             	mov    rdi,rdx
  e16735:	48 89 de             	mov    rsi,rbx
  e16738:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e1673d:	4c 89 f9             	mov    rcx,r15
  e16740:	e8 3b 34 f3 ff       	call   d49b80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e16745:	e9 76 ff ff ff       	jmp    e166c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3c00>
  e1674a:	48 89 d7             	mov    rdi,rdx
  e1674d:	48 89 de             	mov    rsi,rbx
  e16750:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e16755:	4c 89 f9             	mov    rcx,r15
  e16758:	e8 a3 e9 f2 ff       	call   d45100 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e1675d:	e9 5e ff ff ff       	jmp    e166c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3c00>
  e16762:	48 89 d7             	mov    rdi,rdx
  e16765:	48 89 de             	mov    rsi,rbx
  e16768:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e1676d:	4c 89 f9             	mov    rcx,r15
  e16770:	e8 cb 4c f3 ff       	call   d4b440 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e16775:	e9 46 ff ff ff       	jmp    e166c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3c00>
  e1677a:	48 89 d7             	mov    rdi,rdx
  e1677d:	48 89 de             	mov    rsi,rbx
  e16780:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e16785:	4c 89 f9             	mov    rcx,r15
  e16788:	e8 33 13 f3 ff       	call   d47ac0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e1678d:	e9 2e ff ff ff       	jmp    e166c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3c00>
  e16792:	48 89 d7             	mov    rdi,rdx
  e16795:	48 89 de             	mov    rsi,rbx
  e16798:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e1679d:	4c 89 f9             	mov    rcx,r15
  e167a0:	e8 db e2 f2 ff       	call   d44a80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e167a5:	e9 16 ff ff ff       	jmp    e166c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3c00>
  e167aa:	48 89 d7             	mov    rdi,rdx
  e167ad:	48 89 de             	mov    rsi,rbx
  e167b0:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e167b5:	4c 89 f9             	mov    rcx,r15
  e167b8:	e8 43 e5 f2 ff       	call   d44d00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e167bd:	e9 fe fe ff ff       	jmp    e166c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3c00>
  e167c2:	48 89 d7             	mov    rdi,rdx
  e167c5:	48 89 de             	mov    rsi,rbx
  e167c8:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e167cd:	4c 89 f9             	mov    rcx,r15
  e167d0:	e8 6b fc f2 ff       	call   d46440 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e167d5:	e9 e6 fe ff ff       	jmp    e166c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3c00>
  e167da:	48 89 d7             	mov    rdi,rdx
  e167dd:	48 89 de             	mov    rsi,rbx
  e167e0:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e167e5:	4c 89 f9             	mov    rcx,r15
  e167e8:	e8 53 e0 f2 ff       	call   d44840 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e167ed:	e9 ce fe ff ff       	jmp    e166c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3c00>
  e167f2:	48 89 d7             	mov    rdi,rdx
  e167f5:	48 89 de             	mov    rsi,rbx
  e167f8:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e167fd:	4c 89 f9             	mov    rcx,r15
  e16800:	e8 bb ed f2 ff       	call   d455c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e16805:	e9 b6 fe ff ff       	jmp    e166c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3c00>
  e1680a:	48 89 d7             	mov    rdi,rdx
  e1680d:	48 89 de             	mov    rsi,rbx
  e16810:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e16815:	4c 89 f9             	mov    rcx,r15
  e16818:	e8 e3 60 f3 ff       	call   d4c900 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e1681d:	e9 9e fe ff ff       	jmp    e166c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3c00>
  e16822:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e16827:	0f 29 84 24 90 01 00 	movaps XMMWORD PTR [rsp+0x190],xmm0
  e1682e:	00 
  e1682f:	48 89 d7             	mov    rdi,rdx
  e16832:	48 89 de             	mov    rsi,rbx
  e16835:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e1683a:	4c 89 f9             	mov    rcx,r15
  e1683d:	4c 8d 8c 24 90 01 00 	lea    r9,[rsp+0x190]
  e16844:	00 
  e16845:	e8 f6 f4 f2 ff       	call   d45d40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e1684a:	e9 71 fe ff ff       	jmp    e166c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3c00>
  e1684f:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e16854:	0f 29 84 24 90 01 00 	movaps XMMWORD PTR [rsp+0x190],xmm0
  e1685b:	00 
  e1685c:	48 89 d7             	mov    rdi,rdx
  e1685f:	48 89 de             	mov    rsi,rbx
  e16862:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e16867:	4c 89 f9             	mov    rcx,r15
  e1686a:	4c 8d 8c 24 90 01 00 	lea    r9,[rsp+0x190]
  e16871:	00 
  e16872:	e8 09 25 f3 ff       	call   d48d80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e16877:	e9 44 fe ff ff       	jmp    e166c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3c00>
  e1687c:	48 89 d7             	mov    rdi,rdx
  e1687f:	48 89 de             	mov    rsi,rbx
  e16882:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e16887:	4c 89 f9             	mov    rcx,r15
  e1688a:	e8 31 06 f3 ff       	call   d46ec0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e1688f:	e9 2c fe ff ff       	jmp    e166c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3c00>
  e16894:	48 89 de             	mov    rsi,rbx
  e16897:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e1689c:	4c 89 e1             	mov    rcx,r12
  e1689f:	4c 8b 44 24 40       	mov    r8,QWORD PTR [rsp+0x40]
  e168a4:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e168a9:	e8 12 ab ff ff       	call   e113c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e168ae:	48 83 bc 24 88 00 00 	cmp    QWORD PTR [rsp+0x88],0x2
  e168b5:	00 02 
  e168b7:	0f 82 33 02 00 00    	jb     e16af0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4030>
  e168bd:	48 8b 44 24 70       	mov    rax,QWORD PTR [rsp+0x70]
  e168c2:	4c 8b 38             	mov    r15,QWORD PTR [rax]
  e168c5:	4c 8b a4 24 a0 00 00 	mov    r12,QWORD PTR [rsp+0xa0]
  e168cc:	00 
  e168cd:	4c 8b ac 24 a8 00 00 	mov    r13,QWORD PTR [rsp+0xa8]
  e168d4:	00 
  e168d5:	48 8b 44 24 68       	mov    rax,QWORD PTR [rsp+0x68]
  e168da:	48 8b 8c 24 98 00 00 	mov    rcx,QWORD PTR [rsp+0x98]
  e168e1:	00 
  e168e2:	eb 48                	jmp    e1692c <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3e6c>
  e168e4:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e168e9:	0f 29 84 24 90 01 00 	movaps XMMWORD PTR [rsp+0x190],xmm0
  e168f0:	00 
  e168f1:	48 89 d7             	mov    rdi,rdx
  e168f4:	48 89 de             	mov    rsi,rbx
  e168f7:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e168fc:	4c 89 f9             	mov    rcx,r15
  e168ff:	4c 8d 8c 24 90 01 00 	lea    r9,[rsp+0x190]
  e16906:	00 
  e16907:	e8 74 75 f3 ff       	call   d4de80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e1690c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  e16910:	4d 0f af fe          	imul   r15,r14
  e16914:	49 83 c5 18          	add    r13,0x18
  e16918:	48 89 d8             	mov    rax,rbx
  e1691b:	49 ff cc             	dec    r12
  e1691e:	48 8b 8c 24 90 00 00 	mov    rcx,QWORD PTR [rsp+0x90]
  e16925:	00 
  e16926:	0f 84 c4 01 00 00    	je     e16af0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4030>
  e1692c:	48 89 c2             	mov    rdx,rax
  e1692f:	4d 8b 75 f8          	mov    r14,QWORD PTR [r13-0x8]
  e16933:	4d 8b 45 00          	mov    r8,QWORD PTR [r13+0x0]
  e16937:	4c 03 44 24 50       	add    r8,QWORD PTR [rsp+0x50]
  e1693c:	4c 89 b4 24 30 01 00 	mov    QWORD PTR [rsp+0x130],r14
  e16943:	00 
  e16944:	49 8d 46 fe          	lea    rax,[r14-0x2]
  e16948:	48 83 f8 0e          	cmp    rax,0xe
  e1694c:	0f 87 56 1d 00 00    	ja     e186a8 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5be8>
  e16952:	48 89 cb             	mov    rbx,rcx
  e16955:	48 8d 0d 94 d4 28 ff 	lea    rcx,[rip+0xffffffffff28d494]        # a3df0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x312a0>
  e1695c:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  e16960:	48 01 c8             	add    rax,rcx
  e16963:	48 89 94 24 90 00 00 	mov    QWORD PTR [rsp+0x90],rdx
  e1696a:	00 
  e1696b:	ff e0                	jmp    rax
  e1696d:	48 89 d7             	mov    rdi,rdx
  e16970:	48 89 de             	mov    rsi,rbx
  e16973:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e16978:	4c 89 f9             	mov    rcx,r15
  e1697b:	e8 40 dd f2 ff       	call   d446c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e16980:	eb 8e                	jmp    e16910 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3e50>
  e16982:	48 89 d7             	mov    rdi,rdx
  e16985:	48 89 de             	mov    rsi,rbx
  e16988:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e1698d:	4c 89 f9             	mov    rcx,r15
  e16990:	e8 eb 31 f3 ff       	call   d49b80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e16995:	e9 76 ff ff ff       	jmp    e16910 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3e50>
  e1699a:	48 89 d7             	mov    rdi,rdx
  e1699d:	48 89 de             	mov    rsi,rbx
  e169a0:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e169a5:	4c 89 f9             	mov    rcx,r15
  e169a8:	e8 53 e7 f2 ff       	call   d45100 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e169ad:	e9 5e ff ff ff       	jmp    e16910 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3e50>
  e169b2:	48 89 d7             	mov    rdi,rdx
  e169b5:	48 89 de             	mov    rsi,rbx
  e169b8:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e169bd:	4c 89 f9             	mov    rcx,r15
  e169c0:	e8 7b 4a f3 ff       	call   d4b440 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e169c5:	e9 46 ff ff ff       	jmp    e16910 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3e50>
  e169ca:	48 89 d7             	mov    rdi,rdx
  e169cd:	48 89 de             	mov    rsi,rbx
  e169d0:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e169d5:	4c 89 f9             	mov    rcx,r15
  e169d8:	e8 e3 10 f3 ff       	call   d47ac0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e169dd:	e9 2e ff ff ff       	jmp    e16910 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3e50>
  e169e2:	48 89 d7             	mov    rdi,rdx
  e169e5:	48 89 de             	mov    rsi,rbx
  e169e8:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e169ed:	4c 89 f9             	mov    rcx,r15
  e169f0:	e8 8b e0 f2 ff       	call   d44a80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e169f5:	e9 16 ff ff ff       	jmp    e16910 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3e50>
  e169fa:	48 89 d7             	mov    rdi,rdx
  e169fd:	48 89 de             	mov    rsi,rbx
  e16a00:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e16a05:	4c 89 f9             	mov    rcx,r15
  e16a08:	e8 f3 e2 f2 ff       	call   d44d00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e16a0d:	e9 fe fe ff ff       	jmp    e16910 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3e50>
  e16a12:	48 89 d7             	mov    rdi,rdx
  e16a15:	48 89 de             	mov    rsi,rbx
  e16a18:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e16a1d:	4c 89 f9             	mov    rcx,r15
  e16a20:	e8 1b fa f2 ff       	call   d46440 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e16a25:	e9 e6 fe ff ff       	jmp    e16910 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3e50>
  e16a2a:	48 89 d7             	mov    rdi,rdx
  e16a2d:	48 89 de             	mov    rsi,rbx
  e16a30:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e16a35:	4c 89 f9             	mov    rcx,r15
  e16a38:	e8 03 de f2 ff       	call   d44840 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e16a3d:	e9 ce fe ff ff       	jmp    e16910 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3e50>
  e16a42:	48 89 d7             	mov    rdi,rdx
  e16a45:	48 89 de             	mov    rsi,rbx
  e16a48:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e16a4d:	4c 89 f9             	mov    rcx,r15
  e16a50:	e8 6b eb f2 ff       	call   d455c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e16a55:	e9 b6 fe ff ff       	jmp    e16910 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3e50>
  e16a5a:	48 89 d7             	mov    rdi,rdx
  e16a5d:	48 89 de             	mov    rsi,rbx
  e16a60:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e16a65:	4c 89 f9             	mov    rcx,r15
  e16a68:	e8 93 5e f3 ff       	call   d4c900 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e16a6d:	e9 9e fe ff ff       	jmp    e16910 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3e50>
  e16a72:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e16a77:	0f 29 84 24 90 01 00 	movaps XMMWORD PTR [rsp+0x190],xmm0
  e16a7e:	00 
  e16a7f:	48 89 d7             	mov    rdi,rdx
  e16a82:	48 89 de             	mov    rsi,rbx
  e16a85:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e16a8a:	4c 89 f9             	mov    rcx,r15
  e16a8d:	4c 8d 8c 24 90 01 00 	lea    r9,[rsp+0x190]
  e16a94:	00 
  e16a95:	e8 a6 f2 f2 ff       	call   d45d40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e16a9a:	e9 71 fe ff ff       	jmp    e16910 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3e50>
  e16a9f:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [rsp+0x30]
  e16aa4:	0f 29 84 24 90 01 00 	movaps XMMWORD PTR [rsp+0x190],xmm0
  e16aab:	00 
  e16aac:	48 89 d7             	mov    rdi,rdx
  e16aaf:	48 89 de             	mov    rsi,rbx
  e16ab2:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e16ab7:	4c 89 f9             	mov    rcx,r15
  e16aba:	4c 8d 8c 24 90 01 00 	lea    r9,[rsp+0x190]
  e16ac1:	00 
  e16ac2:	e8 b9 22 f3 ff       	call   d48d80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e16ac7:	e9 44 fe ff ff       	jmp    e16910 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3e50>
  e16acc:	48 89 d7             	mov    rdi,rdx
  e16acf:	48 89 de             	mov    rsi,rbx
  e16ad2:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e16ad7:	4c 89 f9             	mov    rcx,r15
  e16ada:	e8 e1 03 f3 ff       	call   d46ec0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e16adf:	e9 2c fe ff ff       	jmp    e16910 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x3e50>
  e16ae4:	66 66 66 2e 0f 1f 84 	data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  e16aeb:	00 00 00 00 00 
  e16af0:	48 83 7c 24 20 00    	cmp    QWORD PTR [rsp+0x20],0x0
  e16af6:	4c 8d a4 24 b0 01 00 	lea    r12,[rsp+0x1b0]
  e16afd:	00 
  e16afe:	4c 8b ac 24 b0 00 00 	mov    r13,QWORD PTR [rsp+0xb0]
  e16b05:	00 
  e16b06:	48 8b 44 24 60       	mov    rax,QWORD PTR [rsp+0x60]
  e16b0b:	0f 84 9f f1 ff ff    	je     e15cb0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x31f0>
  e16b11:	80 7c 24 58 00       	cmp    BYTE PTR [rsp+0x58],0x0
  e16b16:	74 48                	je     e16b60 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x40a0>
  e16b18:	48 83 c3 10          	add    rbx,0x10
  e16b1c:	48 8b 44 24 20       	mov    rax,QWORD PTR [rsp+0x20]
  e16b21:	48 8b 8c 24 e8 00 00 	mov    rcx,QWORD PTR [rsp+0xe8]
  e16b28:	00 
  e16b29:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  e16b30:	0f 10 43 f0          	movups xmm0,XMMWORD PTR [rbx-0x10]
  e16b34:	0f 10 0b             	movups xmm1,XMMWORD PTR [rbx]
  e16b37:	0f 28 d1             	movaps xmm2,xmm1
  e16b3a:	0f 16 d0             	movlhps xmm2,xmm0
  e16b3d:	66 0f 15 c8          	unpckhpd xmm1,xmm0
  e16b41:	66 0f 2b 11          	movntpd XMMWORD PTR [rcx],xmm2
  e16b45:	48 8d 51 10          	lea    rdx,[rcx+0x10]
  e16b49:	66 0f 2b 0a          	movntpd XMMWORD PTR [rdx],xmm1
  e16b4d:	4c 01 e9             	add    rcx,r13
  e16b50:	48 83 c3 20          	add    rbx,0x20
  e16b54:	48 ff c8             	dec    rax
  e16b57:	75 d7                	jne    e16b30 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4070>
  e16b59:	e9 52 f1 ff ff       	jmp    e15cb0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x31f0>
  e16b5e:	66 90                	xchg   ax,ax
  e16b60:	48 c1 64 24 40 04    	shl    QWORD PTR [rsp+0x40],0x4
  e16b66:	48 83 c3 10          	add    rbx,0x10
  e16b6a:	4c 8b 7c 24 20       	mov    r15,QWORD PTR [rsp+0x20]
  e16b6f:	4c 8b b4 24 e8 00 00 	mov    r14,QWORD PTR [rsp+0xe8]
  e16b76:	00 
  e16b77:	eb 20                	jmp    e16b99 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x40d9>
  e16b79:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  e16b80:	41 0f 11 0e          	movups XMMWORD PTR [r14],xmm1
  e16b84:	41 0f 11 46 10       	movups XMMWORD PTR [r14+0x10],xmm0
  e16b89:	4d 01 ee             	add    r14,r13
  e16b8c:	48 83 c3 20          	add    rbx,0x20
  e16b90:	49 ff cf             	dec    r15
  e16b93:	0f 84 17 f1 ff ff    	je     e15cb0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x31f0>
  e16b99:	0f 10 53 f0          	movups xmm2,XMMWORD PTR [rbx-0x10]
  e16b9d:	0f 10 03             	movups xmm0,XMMWORD PTR [rbx]
  e16ba0:	0f 28 c8             	movaps xmm1,xmm0
  e16ba3:	0f 16 ca             	movlhps xmm1,xmm2
  e16ba6:	66 0f 15 c2          	unpckhpd xmm0,xmm2
  e16baa:	48 83 f8 01          	cmp    rax,0x1
  e16bae:	77 d0                	ja     e16b80 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x40c0>
  e16bb0:	0f 57 d2             	xorps  xmm2,xmm2
  e16bb3:	41 0f 29 94 24 d0 00 	movaps XMMWORD PTR [r12+0xd0],xmm2
  e16bba:	00 00 
  e16bbc:	41 0f 29 94 24 c0 00 	movaps XMMWORD PTR [r12+0xc0],xmm2
  e16bc3:	00 00 
  e16bc5:	41 0f 29 94 24 b0 00 	movaps XMMWORD PTR [r12+0xb0],xmm2
  e16bcc:	00 00 
  e16bce:	41 0f 29 94 24 a0 00 	movaps XMMWORD PTR [r12+0xa0],xmm2
  e16bd5:	00 00 
  e16bd7:	41 0f 29 94 24 90 00 	movaps XMMWORD PTR [r12+0x90],xmm2
  e16bde:	00 00 
  e16be0:	41 0f 29 94 24 80 00 	movaps XMMWORD PTR [r12+0x80],xmm2
  e16be7:	00 00 
  e16be9:	41 0f 29 54 24 70    	movaps XMMWORD PTR [r12+0x70],xmm2
  e16bef:	41 0f 29 54 24 60    	movaps XMMWORD PTR [r12+0x60],xmm2
  e16bf5:	41 0f 29 54 24 50    	movaps XMMWORD PTR [r12+0x50],xmm2
  e16bfb:	41 0f 29 54 24 40    	movaps XMMWORD PTR [r12+0x40],xmm2
  e16c01:	41 0f 29 54 24 30    	movaps XMMWORD PTR [r12+0x30],xmm2
  e16c07:	41 0f 29 54 24 20    	movaps XMMWORD PTR [r12+0x20],xmm2
  e16c0d:	41 0f 29 54 24 10    	movaps XMMWORD PTR [r12+0x10],xmm2
  e16c13:	41 0f 29 14 24       	movaps XMMWORD PTR [r12],xmm2
  e16c18:	0f 29 8c 24 90 01 00 	movaps XMMWORD PTR [rsp+0x190],xmm1
  e16c1f:	00 
  e16c20:	0f 29 84 24 a0 01 00 	movaps XMMWORD PTR [rsp+0x1a0],xmm0
  e16c27:	00 
  e16c28:	4c 89 f7             	mov    rdi,r14
  e16c2b:	48 8d b4 24 90 01 00 	lea    rsi,[rsp+0x190]
  e16c32:	00 
  e16c33:	48 8b 54 24 40       	mov    rdx,QWORD PTR [rsp+0x40]
  e16c38:	ff 15 62 b0 43 00    	call   QWORD PTR [rip+0x43b062]        # 1251ca0 <memcpy@GLIBC_2.14>
  e16c3e:	48 8b 44 24 60       	mov    rax,QWORD PTR [rsp+0x60]
  e16c43:	4d 01 ee             	add    r14,r13
  e16c46:	48 83 c3 20          	add    rbx,0x20
  e16c4a:	49 ff cf             	dec    r15
  e16c4d:	0f 85 46 ff ff ff    	jne    e16b99 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x40d9>
  e16c53:	e9 58 f0 ff ff       	jmp    e15cb0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x31f0>
  e16c58:	80 7c 24 58 00       	cmp    BYTE PTR [rsp+0x58],0x0
  e16c5d:	74 03                	je     e16c62 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x41a2>
  e16c5f:	0f ae f8             	sfence
  e16c62:	48 8d 65 d8          	lea    rsp,[rbp-0x28]
  e16c66:	5b                   	pop    rbx
  e16c67:	41 5c                	pop    r12
  e16c69:	41 5d                	pop    r13
  e16c6b:	41 5e                	pop    r14
  e16c6d:	41 5f                	pop    r15
  e16c6f:	5d                   	pop    rbp
  e16c70:	c3                   	ret
  e16c71:	89 d8                	mov    eax,ebx
  e16c73:	31 d2                	xor    edx,edx
  e16c75:	f7 f6                	div    esi
  e16c77:	48 8b 74 24 58       	mov    rsi,QWORD PTR [rsp+0x58]
  e16c7c:	48 03 b4 24 18 01 00 	add    rsi,QWORD PTR [rsp+0x118]
  e16c83:	00 
  e16c84:	48 89 74 24 58       	mov    QWORD PTR [rsp+0x58],rsi
  e16c89:	0f 28 44 24 70       	movaps xmm0,XMMWORD PTR [rsp+0x70]
  e16c8e:	0f 16 c0             	movlhps xmm0,xmm0
  e16c91:	0f 29 44 24 70       	movaps XMMWORD PTR [rsp+0x70],xmm0
  e16c96:	31 f6                	xor    esi,esi
  e16c98:	48 85 d2             	test   rdx,rdx
  e16c9b:	40 0f 95 c6          	setne  sil
  e16c9f:	48 01 c6             	add    rsi,rax
  e16ca2:	48 89 b4 24 78 01 00 	mov    QWORD PTR [rsp+0x178],rsi
  e16ca9:	00 
  e16caa:	4c 89 84 24 e0 00 00 	mov    QWORD PTR [rsp+0xe0],r8
  e16cb1:	00 
  e16cb2:	48 89 ca             	mov    rdx,rcx
  e16cb5:	48 89 8c 24 b8 00 00 	mov    QWORD PTR [rsp+0xb8],rcx
  e16cbc:	00 
  e16cbd:	48 89 5c 24 48       	mov    QWORD PTR [rsp+0x48],rbx
  e16cc2:	4c 89 b4 24 a8 00 00 	mov    QWORD PTR [rsp+0xa8],r14
  e16cc9:	00 
  e16cca:	0f 84 67 06 00 00    	je     e17337 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4877>
  e16cd0:	4d 85 ff             	test   r15,r15
  e16cd3:	48 8b 84 24 58 01 00 	mov    rax,QWORD PTR [rsp+0x158]
  e16cda:	00 
  e16cdb:	0f 84 89 1a 00 00    	je     e1876a <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5caa>
  e16ce1:	4c 8b 68 70          	mov    r13,QWORD PTR [rax+0x70]
  e16ce5:	48 8b 80 90 00 00 00 	mov    rax,QWORD PTR [rax+0x90]
  e16cec:	48 89 44 24 30       	mov    QWORD PTR [rsp+0x30],rax
  e16cf1:	48 89 d1             	mov    rcx,rdx
  e16cf4:	48 d1 e9             	shr    rcx,1
  e16cf7:	48 89 d0             	mov    rax,rdx
  e16cfa:	48 29 c8             	sub    rax,rcx
  e16cfd:	48 89 84 24 00 01 00 	mov    QWORD PTR [rsp+0x100],rax
  e16d04:	00 
  e16d05:	f3 49 0f bc c5       	tzcnt  rax,r13
  e16d0a:	48 89 44 24 50       	mov    QWORD PTR [rsp+0x50],rax
  e16d0f:	48 b8 ff ff ff ff ff 	movabs rax,0x7ffffffffffffff
  e16d16:	ff ff 07 
  e16d19:	4c 01 e8             	add    rax,r13
  e16d1c:	48 89 44 24 20       	mov    QWORD PTR [rsp+0x20],rax
  e16d21:	48 8b 44 24 60       	mov    rax,QWORD PTR [rsp+0x60]
  e16d26:	48 83 c0 20          	add    rax,0x20
  e16d2a:	48 89 84 24 f8 00 00 	mov    QWORD PTR [rsp+0xf8],rax
  e16d31:	00 
  e16d32:	49 8d 47 ff          	lea    rax,[r15-0x1]
  e16d36:	48 89 84 24 98 00 00 	mov    QWORD PTR [rsp+0x98],rax
  e16d3d:	00 
  e16d3e:	48 29 d1             	sub    rcx,rdx
  e16d41:	48 89 8c 24 c8 00 00 	mov    QWORD PTR [rsp+0xc8],rcx
  e16d48:	00 
  e16d49:	48 8b 84 24 c0 00 00 	mov    rax,QWORD PTR [rsp+0xc0]
  e16d50:	00 
  e16d51:	48 83 c0 20          	add    rax,0x20
  e16d55:	48 89 84 24 70 01 00 	mov    QWORD PTR [rsp+0x170],rax
  e16d5c:	00 
  e16d5d:	4c 89 c0             	mov    rax,r8
  e16d60:	48 c1 e0 06          	shl    rax,0x6
  e16d64:	48 89 84 24 60 01 00 	mov    QWORD PTR [rsp+0x160],rax
  e16d6b:	00 
  e16d6c:	48 89 d8             	mov    rax,rbx
  e16d6f:	48 c1 e0 05          	shl    rax,0x5
  e16d73:	48 89 44 24 28       	mov    QWORD PTR [rsp+0x28],rax
  e16d78:	31 c9                	xor    ecx,ecx
  e16d7a:	4c 89 7c 24 68       	mov    QWORD PTR [rsp+0x68],r15
  e16d7f:	44 88 a4 24 88 00 00 	mov    BYTE PTR [rsp+0x88],r12b
  e16d86:	00 
  e16d87:	4c 89 ac 24 20 01 00 	mov    QWORD PTR [rsp+0x120],r13
  e16d8e:	00 
  e16d8f:	eb 3b                	jmp    e16dcc <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x430c>
  e16d91:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  e16d98:	0f 1f 84 00 00 00 00 
  e16d9f:	00 
  e16da0:	48 8b 84 24 60 01 00 	mov    rax,QWORD PTR [rsp+0x160]
  e16da7:	00 
  e16da8:	48 01 84 24 70 01 00 	add    QWORD PTR [rsp+0x170],rax
  e16daf:	00 
  e16db0:	48 8b 8c 24 68 01 00 	mov    rcx,QWORD PTR [rsp+0x168]
  e16db7:	00 
  e16db8:	48 83 bc 24 78 01 00 	cmp    QWORD PTR [rsp+0x178],0x0
  e16dbf:	00 00 
  e16dc1:	48 8b 5c 24 48       	mov    rbx,QWORD PTR [rsp+0x48]
  e16dc6:	0f 84 6b 05 00 00    	je     e17337 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4877>
  e16dcc:	48 8b 44 24 60       	mov    rax,QWORD PTR [rsp+0x60]
  e16dd1:	48 8b 00             	mov    rax,QWORD PTR [rax]
  e16dd4:	48 83 f8 02          	cmp    rax,0x2
  e16dd8:	74 76                	je     e16e50 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4390>
  e16dda:	48 83 f8 04          	cmp    rax,0x4
  e16dde:	74 40                	je     e16e20 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4360>
  e16de0:	48 83 f8 08          	cmp    rax,0x8
  e16de4:	0f 85 10 19 00 00    	jne    e186fa <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5c3a>
  e16dea:	48 89 cf             	mov    rdi,rcx
  e16ded:	48 c1 e7 04          	shl    rdi,0x4
  e16df1:	48 03 bc 24 80 01 00 	add    rdi,QWORD PTR [rsp+0x180]
  e16df8:	00 
  e16df9:	48 8b 74 24 58       	mov    rsi,QWORD PTR [rsp+0x58]
  e16dfe:	49 89 ce             	mov    r14,rcx
  e16e01:	48 89 d9             	mov    rcx,rbx
  e16e04:	4c 8b 4c 24 30       	mov    r9,QWORD PTR [rsp+0x30]
  e16e09:	0f 28 44 24 70       	movaps xmm0,XMMWORD PTR [rsp+0x70]
  e16e0e:	e8 2d eb fc ff       	call   de5940 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first_group>
  e16e13:	eb 64                	jmp    e16e79 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x43b9>
  e16e15:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  e16e1c:	00 00 00 00 
  e16e20:	48 89 cf             	mov    rdi,rcx
  e16e23:	48 c1 e7 04          	shl    rdi,0x4
  e16e27:	48 03 bc 24 80 01 00 	add    rdi,QWORD PTR [rsp+0x180]
  e16e2e:	00 
  e16e2f:	48 8b 74 24 58       	mov    rsi,QWORD PTR [rsp+0x58]
  e16e34:	49 89 ce             	mov    r14,rcx
  e16e37:	48 89 d9             	mov    rcx,rbx
  e16e3a:	4c 8b 4c 24 30       	mov    r9,QWORD PTR [rsp+0x30]
  e16e3f:	0f 28 44 24 70       	movaps xmm0,XMMWORD PTR [rsp+0x70]
  e16e44:	e8 77 f6 fc ff       	call   de64c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first_group>
  e16e49:	eb 2e                	jmp    e16e79 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x43b9>
  e16e4b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  e16e50:	48 89 cf             	mov    rdi,rcx
  e16e53:	48 c1 e7 04          	shl    rdi,0x4
  e16e57:	48 03 bc 24 80 01 00 	add    rdi,QWORD PTR [rsp+0x180]
  e16e5e:	00 
  e16e5f:	48 8b 74 24 58       	mov    rsi,QWORD PTR [rsp+0x58]
  e16e64:	49 89 ce             	mov    r14,rcx
  e16e67:	48 89 d9             	mov    rcx,rbx
  e16e6a:	4c 8b 4c 24 30       	mov    r9,QWORD PTR [rsp+0x30]
  e16e6f:	0f 28 44 24 70       	movaps xmm0,XMMWORD PTR [rsp+0x70]
  e16e74:	e8 87 ef fc ff       	call   de5e00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first_group>
  e16e79:	48 8b 84 24 f0 00 00 	mov    rax,QWORD PTR [rsp+0xf0]
  e16e80:	00 
  e16e81:	4c 89 b4 24 10 01 00 	mov    QWORD PTR [rsp+0x110],r14
  e16e88:	00 
  e16e89:	4c 01 f0             	add    rax,r14
  e16e8c:	48 89 84 24 68 01 00 	mov    QWORD PTR [rsp+0x168],rax
  e16e93:	00 
  e16e94:	48 ff 8c 24 78 01 00 	dec    QWORD PTR [rsp+0x178]
  e16e9b:	00 
  e16e9c:	48 8b 84 24 70 01 00 	mov    rax,QWORD PTR [rsp+0x170]
  e16ea3:	00 
  e16ea4:	48 89 84 24 a0 00 00 	mov    QWORD PTR [rsp+0xa0],rax
  e16eab:	00 
  e16eac:	31 c0                	xor    eax,eax
  e16eae:	48 8b 94 24 b8 00 00 	mov    rdx,QWORD PTR [rsp+0xb8]
  e16eb5:	00 
  e16eb6:	eb 30                	jmp    e16ee8 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4428>
  e16eb8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  e16ebf:	00 
  e16ec0:	48 8b 84 24 b0 00 00 	mov    rax,QWORD PTR [rsp+0xb0]
  e16ec7:	00 
  e16ec8:	48 ff c0             	inc    rax
  e16ecb:	48 83 84 24 a0 00 00 	add    QWORD PTR [rsp+0xa0],0x40
  e16ed2:	00 40 
  e16ed4:	4c 8b 84 24 e0 00 00 	mov    r8,QWORD PTR [rsp+0xe0]
  e16edb:	00 
  e16edc:	4c 39 c0             	cmp    rax,r8
  e16edf:	4c 89 da             	mov    rdx,r11
  e16ee2:	0f 84 b8 fe ff ff    	je     e16da0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x42e0>
  e16ee8:	48 89 84 24 b0 00 00 	mov    QWORD PTR [rsp+0xb0],rax
  e16eef:	00 
  e16ef0:	48 8d 0c 00          	lea    rcx,[rax+rax*1]
  e16ef4:	48 8b 44 24 30       	mov    rax,QWORD PTR [rsp+0x30]
  e16ef9:	48 89 8c 24 28 01 00 	mov    QWORD PTR [rsp+0x128],rcx
  e16f00:	00 
  e16f01:	48 0f af c1          	imul   rax,rcx
  e16f05:	48 8b 4c 24 58       	mov    rcx,QWORD PTR [rsp+0x58]
  e16f0a:	48 8d 0c c1          	lea    rcx,[rcx+rax*8]
  e16f0e:	49 83 ff 02          	cmp    r15,0x2
  e16f12:	0f 82 08 02 00 00    	jb     e17120 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4660>
  e16f18:	48 8b 44 24 60       	mov    rax,QWORD PTR [rsp+0x60]
  e16f1d:	4c 8b 30             	mov    r14,QWORD PTR [rax]
  e16f20:	4c 8b bc 24 98 00 00 	mov    r15,QWORD PTR [rsp+0x98]
  e16f27:	00 
  e16f28:	4c 8b ac 24 f8 00 00 	mov    r13,QWORD PTR [rsp+0xf8]
  e16f2f:	00 
  e16f30:	48 89 cb             	mov    rbx,rcx
  e16f33:	48 8b 84 24 18 01 00 	mov    rax,QWORD PTR [rsp+0x118]
  e16f3a:	00 
  e16f3b:	48 89 4c 24 40       	mov    QWORD PTR [rsp+0x40],rcx
  e16f40:	eb 54                	jmp    e16f96 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x44d6>
  e16f42:	0f 28 44 24 70       	movaps xmm0,XMMWORD PTR [rsp+0x70]
  e16f47:	0f 29 84 24 90 01 00 	movaps XMMWORD PTR [rsp+0x190],xmm0
  e16f4e:	00 
  e16f4f:	48 89 f7             	mov    rdi,rsi
  e16f52:	48 89 de             	mov    rsi,rbx
  e16f55:	4c 89 f1             	mov    rcx,r14
  e16f58:	4c 8d 8c 24 90 01 00 	lea    r9,[rsp+0x190]
  e16f5f:	00 
  e16f60:	e8 1b 6f f3 ff       	call   d4de80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e16f65:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  e16f6c:	00 00 00 00 
  e16f70:	4d 0f af f4          	imul   r14,r12
  e16f74:	49 83 c5 18          	add    r13,0x18
  e16f78:	49 ff cf             	dec    r15
  e16f7b:	48 8b 94 24 b8 00 00 	mov    rdx,QWORD PTR [rsp+0xb8]
  e16f82:	00 
  e16f83:	48 8b 4c 24 40       	mov    rcx,QWORD PTR [rsp+0x40]
  e16f88:	48 8b 84 24 90 00 00 	mov    rax,QWORD PTR [rsp+0x90]
  e16f8f:	00 
  e16f90:	0f 84 8d 01 00 00    	je     e17123 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4663>
  e16f96:	48 89 de             	mov    rsi,rbx
  e16f99:	4d 8b 65 f8          	mov    r12,QWORD PTR [r13-0x8]
  e16f9d:	49 83 ff 01          	cmp    r15,0x1
  e16fa1:	48 89 c3             	mov    rbx,rax
  e16fa4:	48 0f 44 d9          	cmove  rbx,rcx
  e16fa8:	4d 8b 45 00          	mov    r8,QWORD PTR [r13+0x0]
  e16fac:	4c 03 44 24 60       	add    r8,QWORD PTR [rsp+0x60]
  e16fb1:	4c 89 a4 24 30 01 00 	mov    QWORD PTR [rsp+0x130],r12
  e16fb8:	00 
  e16fb9:	49 8d 44 24 fe       	lea    rax,[r12-0x2]
  e16fbe:	48 83 f8 0e          	cmp    rax,0xe
  e16fc2:	0f 87 e0 16 00 00    	ja     e186a8 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5be8>
  e16fc8:	48 8d 0d 45 cf 28 ff 	lea    rcx,[rip+0xffffffffff28cf45]        # a3f14 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x313c4>
  e16fcf:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  e16fd3:	48 01 c8             	add    rax,rcx
  e16fd6:	48 89 b4 24 90 00 00 	mov    QWORD PTR [rsp+0x90],rsi
  e16fdd:	00 
  e16fde:	ff e0                	jmp    rax
  e16fe0:	48 89 f7             	mov    rdi,rsi
  e16fe3:	48 89 de             	mov    rsi,rbx
  e16fe6:	4c 89 f1             	mov    rcx,r14
  e16fe9:	e8 d2 d6 f2 ff       	call   d446c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e16fee:	eb 80                	jmp    e16f70 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x44b0>
  e16ff0:	48 89 f7             	mov    rdi,rsi
  e16ff3:	48 89 de             	mov    rsi,rbx
  e16ff6:	4c 89 f1             	mov    rcx,r14
  e16ff9:	e8 82 2b f3 ff       	call   d49b80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e16ffe:	e9 6d ff ff ff       	jmp    e16f70 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x44b0>
  e17003:	48 89 f7             	mov    rdi,rsi
  e17006:	48 89 de             	mov    rsi,rbx
  e17009:	4c 89 f1             	mov    rcx,r14
  e1700c:	e8 ef e0 f2 ff       	call   d45100 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e17011:	e9 5a ff ff ff       	jmp    e16f70 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x44b0>
  e17016:	48 89 f7             	mov    rdi,rsi
  e17019:	48 89 de             	mov    rsi,rbx
  e1701c:	4c 89 f1             	mov    rcx,r14
  e1701f:	e8 1c 44 f3 ff       	call   d4b440 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e17024:	e9 47 ff ff ff       	jmp    e16f70 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x44b0>
  e17029:	48 89 f7             	mov    rdi,rsi
  e1702c:	48 89 de             	mov    rsi,rbx
  e1702f:	4c 89 f1             	mov    rcx,r14
  e17032:	e8 89 0a f3 ff       	call   d47ac0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e17037:	e9 34 ff ff ff       	jmp    e16f70 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x44b0>
  e1703c:	48 89 f7             	mov    rdi,rsi
  e1703f:	48 89 de             	mov    rsi,rbx
  e17042:	4c 89 f1             	mov    rcx,r14
  e17045:	e8 36 da f2 ff       	call   d44a80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e1704a:	e9 21 ff ff ff       	jmp    e16f70 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x44b0>
  e1704f:	48 89 f7             	mov    rdi,rsi
  e17052:	48 89 de             	mov    rsi,rbx
  e17055:	4c 89 f1             	mov    rcx,r14
  e17058:	e8 a3 dc f2 ff       	call   d44d00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e1705d:	e9 0e ff ff ff       	jmp    e16f70 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x44b0>
  e17062:	48 89 f7             	mov    rdi,rsi
  e17065:	48 89 de             	mov    rsi,rbx
  e17068:	4c 89 f1             	mov    rcx,r14
  e1706b:	e8 d0 f3 f2 ff       	call   d46440 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e17070:	e9 fb fe ff ff       	jmp    e16f70 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x44b0>
  e17075:	48 89 f7             	mov    rdi,rsi
  e17078:	48 89 de             	mov    rsi,rbx
  e1707b:	4c 89 f1             	mov    rcx,r14
  e1707e:	e8 bd d7 f2 ff       	call   d44840 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e17083:	e9 e8 fe ff ff       	jmp    e16f70 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x44b0>
  e17088:	48 89 f7             	mov    rdi,rsi
  e1708b:	48 89 de             	mov    rsi,rbx
  e1708e:	4c 89 f1             	mov    rcx,r14
  e17091:	e8 2a e5 f2 ff       	call   d455c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e17096:	e9 d5 fe ff ff       	jmp    e16f70 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x44b0>
  e1709b:	48 89 f7             	mov    rdi,rsi
  e1709e:	48 89 de             	mov    rsi,rbx
  e170a1:	4c 89 f1             	mov    rcx,r14
  e170a4:	e8 57 58 f3 ff       	call   d4c900 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e170a9:	e9 c2 fe ff ff       	jmp    e16f70 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x44b0>
  e170ae:	0f 28 44 24 70       	movaps xmm0,XMMWORD PTR [rsp+0x70]
  e170b3:	0f 29 84 24 90 01 00 	movaps XMMWORD PTR [rsp+0x190],xmm0
  e170ba:	00 
  e170bb:	48 89 f7             	mov    rdi,rsi
  e170be:	48 89 de             	mov    rsi,rbx
  e170c1:	4c 89 f1             	mov    rcx,r14
  e170c4:	4c 8d 8c 24 90 01 00 	lea    r9,[rsp+0x190]
  e170cb:	00 
  e170cc:	e8 6f ec f2 ff       	call   d45d40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e170d1:	e9 9a fe ff ff       	jmp    e16f70 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x44b0>
  e170d6:	0f 28 44 24 70       	movaps xmm0,XMMWORD PTR [rsp+0x70]
  e170db:	0f 29 84 24 90 01 00 	movaps XMMWORD PTR [rsp+0x190],xmm0
  e170e2:	00 
  e170e3:	48 89 f7             	mov    rdi,rsi
  e170e6:	48 89 de             	mov    rsi,rbx
  e170e9:	4c 89 f1             	mov    rcx,r14
  e170ec:	4c 8d 8c 24 90 01 00 	lea    r9,[rsp+0x190]
  e170f3:	00 
  e170f4:	e8 87 1c f3 ff       	call   d48d80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e170f9:	e9 72 fe ff ff       	jmp    e16f70 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x44b0>
  e170fe:	48 89 f7             	mov    rdi,rsi
  e17101:	48 89 de             	mov    rsi,rbx
  e17104:	4c 89 f1             	mov    rcx,r14
  e17107:	e8 b4 fd f2 ff       	call   d46ec0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e1710c:	e9 5f fe ff ff       	jmp    e16f70 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x44b0>
  e17111:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  e17118:	0f 1f 84 00 00 00 00 
  e1711f:	00 
  e17120:	48 89 cb             	mov    rbx,rcx
  e17123:	4c 8b ac 24 20 01 00 	mov    r13,QWORD PTR [rsp+0x120]
  e1712a:	00 
  e1712b:	4d 85 ed             	test   r13,r13
  e1712e:	0f 84 0e 16 00 00    	je     e18742 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5c82>
  e17134:	48 89 d0             	mov    rax,rdx
  e17137:	4c 09 e8             	or     rax,r13
  e1713a:	48 c1 e8 20          	shr    rax,0x20
  e1713e:	4c 8b b4 24 a8 00 00 	mov    r14,QWORD PTR [rsp+0xa8]
  e17145:	00 
  e17146:	4c 8b 7c 24 68       	mov    r15,QWORD PTR [rsp+0x68]
  e1714b:	44 0f b6 a4 24 88 00 	movzx  r12d,BYTE PTR [rsp+0x88]
  e17152:	00 00 
  e17154:	49 89 d3             	mov    r11,rdx
  e17157:	74 27                	je     e17180 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x46c0>
  e17159:	48 89 d0             	mov    rax,rdx
  e1715c:	31 d2                	xor    edx,edx
  e1715e:	49 f7 f5             	div    r13
  e17161:	48 83 bc 24 00 01 00 	cmp    QWORD PTR [rsp+0x100],0x0
  e17168:	00 00 
  e1716a:	75 2a                	jne    e17196 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x46d6>
  e1716c:	e9 4f fd ff ff       	jmp    e16ec0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4400>
  e17171:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  e17178:	0f 1f 84 00 00 00 00 
  e1717f:	00 
  e17180:	89 d0                	mov    eax,edx
  e17182:	31 d2                	xor    edx,edx
  e17184:	41 f7 f5             	div    r13d
  e17187:	48 83 bc 24 00 01 00 	cmp    QWORD PTR [rsp+0x100],0x0
  e1718e:	00 00 
  e17190:	0f 84 2a fd ff ff    	je     e16ec0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4400>
  e17196:	48 8b 94 24 28 01 00 	mov    rdx,QWORD PTR [rsp+0x128]
  e1719d:	00 
  e1719e:	48 03 94 24 10 01 00 	add    rdx,QWORD PTR [rsp+0x110]
  e171a5:	00 
  e171a6:	48 01 d2             	add    rdx,rdx
  e171a9:	48 0f af c2          	imul   rax,rdx
  e171ad:	49 0f af d5          	imul   rdx,r13
  e171b1:	48 8b 8c 24 d8 00 00 	mov    rcx,QWORD PTR [rsp+0xd8]
  e171b8:	00 
  e171b9:	48 8d 04 c1          	lea    rax,[rcx+rax*8]
  e171bd:	48 8b 8c 24 d0 00 00 	mov    rcx,QWORD PTR [rsp+0xd0]
  e171c4:	00 
  e171c5:	48 8d 14 d1          	lea    rdx,[rcx+rdx*8]
  e171c9:	48 83 c3 30          	add    rbx,0x30
  e171cd:	48 8b b4 24 a0 00 00 	mov    rsi,QWORD PTR [rsp+0xa0]
  e171d4:	00 
  e171d5:	48 8b bc 24 c8 00 00 	mov    rdi,QWORD PTR [rsp+0xc8]
  e171dc:	00 
  e171dd:	45 31 c0             	xor    r8d,r8d
  e171e0:	eb 42                	jmp    e17224 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4764>
  e171e2:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  e171e9:	1f 84 00 00 00 00 00 
  e171f0:	48 8d 4e e0          	lea    rcx,[rsi-0x20]
  e171f4:	4c 8d 4e f0          	lea    r9,[rsi-0x10]
  e171f8:	4c 8d 56 10          	lea    r10,[rsi+0x10]
  e171fc:	66 0f 2b 21          	movntpd XMMWORD PTR [rcx],xmm4
  e17200:	66 41 0f 2b 19       	movntpd XMMWORD PTR [r9],xmm3
  e17205:	66 0f 2b 16          	movntpd XMMWORD PTR [rsi],xmm2
  e17209:	66 41 0f 2b 02       	movntpd XMMWORD PTR [r10],xmm0
  e1720e:	48 03 74 24 28       	add    rsi,QWORD PTR [rsp+0x28]
  e17213:	48 83 c3 40          	add    rbx,0x40
  e17217:	49 83 c0 02          	add    r8,0x2
  e1721b:	48 ff c7             	inc    rdi
  e1721e:	0f 84 9c fc ff ff    	je     e16ec0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4400>
  e17224:	4d 89 c1             	mov    r9,r8
  e17227:	48 8b 4c 24 50       	mov    rcx,QWORD PTR [rsp+0x50]
  e1722c:	49 d3 e9             	shr    r9,cl
  e1722f:	49 c1 e1 05          	shl    r9,0x5
  e17233:	66 42 0f 10 04 08    	movupd xmm0,XMMWORD PTR [rax+r9*1]
  e17239:	66 42 0f 10 54 08 10 	movupd xmm2,XMMWORD PTR [rax+r9*1+0x10]
  e17240:	4c 89 c1             	mov    rcx,r8
  e17243:	48 23 4c 24 20       	and    rcx,QWORD PTR [rsp+0x20]
  e17248:	48 c1 e1 05          	shl    rcx,0x5
  e1724c:	66 0f 10 1c 0a       	movupd xmm3,XMMWORD PTR [rdx+rcx*1]
  e17251:	66 0f 10 4c 0a 10    	movupd xmm1,XMMWORD PTR [rdx+rcx*1+0x10]
  e17257:	66 0f 10 74 0a 20    	movupd xmm6,XMMWORD PTR [rdx+rcx*1+0x20]
  e1725d:	66 0f 10 64 0a 30    	movupd xmm4,XMMWORD PTR [rdx+rcx*1+0x30]
  e17263:	66 0f 28 ea          	movapd xmm5,xmm2
  e17267:	66 0f 59 e9          	mulpd  xmm5,xmm1
  e1726b:	66 44 0f 28 c0       	movapd xmm8,xmm0
  e17270:	66 44 0f 59 c3       	mulpd  xmm8,xmm3
  e17275:	66 44 0f 5c c5       	subpd  xmm8,xmm5
  e1727a:	66 0f 59 da          	mulpd  xmm3,xmm2
  e1727e:	66 0f 59 c8          	mulpd  xmm1,xmm0
  e17282:	66 0f 58 cb          	addpd  xmm1,xmm3
  e17286:	66 44 0f 10 4b d0    	movupd xmm9,XMMWORD PTR [rbx-0x30]
  e1728c:	66 44 0f 10 53 e0    	movupd xmm10,XMMWORD PTR [rbx-0x20]
  e17292:	66 0f 10 6b f0       	movupd xmm5,XMMWORD PTR [rbx-0x10]
  e17297:	66 0f 10 3b          	movupd xmm7,XMMWORD PTR [rbx]
  e1729b:	66 41 0f 28 d9       	movapd xmm3,xmm9
  e172a0:	66 41 0f 59 d8       	mulpd  xmm3,xmm8
  e172a5:	66 45 0f 59 c2       	mulpd  xmm8,xmm10
  e172aa:	66 44 0f 59 d1       	mulpd  xmm10,xmm1
  e172af:	66 41 0f 5c da       	subpd  xmm3,xmm10
  e172b4:	66 41 0f 59 c9       	mulpd  xmm1,xmm9
  e172b9:	66 41 0f 58 c8       	addpd  xmm1,xmm8
  e172be:	66 44 0f 28 c2       	movapd xmm8,xmm2
  e172c3:	66 44 0f 59 c4       	mulpd  xmm8,xmm4
  e172c8:	66 44 0f 28 c8       	movapd xmm9,xmm0
  e172cd:	66 44 0f 59 ce       	mulpd  xmm9,xmm6
  e172d2:	66 45 0f 5c c8       	subpd  xmm9,xmm8
  e172d7:	66 0f 59 d6          	mulpd  xmm2,xmm6
  e172db:	66 0f 59 c4          	mulpd  xmm0,xmm4
  e172df:	66 0f 58 c2          	addpd  xmm0,xmm2
  e172e3:	66 0f 28 d5          	movapd xmm2,xmm5
  e172e7:	66 41 0f 59 d1       	mulpd  xmm2,xmm9
  e172ec:	66 44 0f 59 cf       	mulpd  xmm9,xmm7
  e172f1:	66 0f 59 f8          	mulpd  xmm7,xmm0
  e172f5:	66 0f 5c d7          	subpd  xmm2,xmm7
  e172f9:	66 0f 59 c5          	mulpd  xmm0,xmm5
  e172fd:	66 41 0f 58 c1       	addpd  xmm0,xmm9
  e17302:	66 0f 28 e3          	movapd xmm4,xmm3
  e17306:	66 0f 14 e2          	unpcklpd xmm4,xmm2
  e1730a:	0f 12 d3             	movhlps xmm2,xmm3
  e1730d:	66 0f 28 d9          	movapd xmm3,xmm1
  e17311:	66 0f 14 d8          	unpcklpd xmm3,xmm0
  e17315:	0f 12 c1             	movhlps xmm0,xmm1
  e17318:	45 84 e4             	test   r12b,r12b
  e1731b:	0f 85 cf fe ff ff    	jne    e171f0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4730>
  e17321:	66 0f 11 66 e0       	movupd XMMWORD PTR [rsi-0x20],xmm4
  e17326:	66 0f 11 5e f0       	movupd XMMWORD PTR [rsi-0x10],xmm3
  e1732b:	0f 11 16             	movups XMMWORD PTR [rsi],xmm2
  e1732e:	0f 11 46 10          	movups XMMWORD PTR [rsi+0x10],xmm0
  e17332:	e9 d7 fe ff ff       	jmp    e1720e <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x474e>
  e17337:	45 84 e4             	test   r12b,r12b
  e1733a:	74 03                	je     e1733f <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x487f>
  e1733c:	0f ae f8             	sfence
  e1733f:	48 89 d0             	mov    rax,rdx
  e17342:	48 8b 8c 24 f0 00 00 	mov    rcx,QWORD PTR [rsp+0xf0]
  e17349:	00 
  e1734a:	48 09 c8             	or     rax,rcx
  e1734d:	48 c1 e8 20          	shr    rax,0x20
  e17351:	0f 84 1e 0d 00 00    	je     e18075 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x55b5>
  e17357:	48 89 d0             	mov    rax,rdx
  e1735a:	31 d2                	xor    edx,edx
  e1735c:	48 f7 f1             	div    rcx
  e1735f:	e9 17 0d 00 00       	jmp    e1807b <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x55bb>
  e17364:	89 d8                	mov    eax,ebx
  e17366:	31 d2                	xor    edx,edx
  e17368:	f7 f6                	div    esi
  e1736a:	48 8b 74 24 58       	mov    rsi,QWORD PTR [rsp+0x58]
  e1736f:	48 03 b4 24 18 01 00 	add    rsi,QWORD PTR [rsp+0x118]
  e17376:	00 
  e17377:	48 89 74 24 58       	mov    QWORD PTR [rsp+0x58],rsi
  e1737c:	0f 28 44 24 70       	movaps xmm0,XMMWORD PTR [rsp+0x70]
  e17381:	0f 16 c0             	movlhps xmm0,xmm0
  e17384:	0f 29 44 24 70       	movaps XMMWORD PTR [rsp+0x70],xmm0
  e17389:	31 f6                	xor    esi,esi
  e1738b:	48 85 d2             	test   rdx,rdx
  e1738e:	40 0f 95 c6          	setne  sil
  e17392:	48 01 c6             	add    rsi,rax
  e17395:	48 89 b4 24 78 01 00 	mov    QWORD PTR [rsp+0x178],rsi
  e1739c:	00 
  e1739d:	4c 89 84 24 e0 00 00 	mov    QWORD PTR [rsp+0xe0],r8
  e173a4:	00 
  e173a5:	48 89 ca             	mov    rdx,rcx
  e173a8:	48 89 8c 24 b8 00 00 	mov    QWORD PTR [rsp+0xb8],rcx
  e173af:	00 
  e173b0:	48 89 5c 24 48       	mov    QWORD PTR [rsp+0x48],rbx
  e173b5:	4c 89 b4 24 a8 00 00 	mov    QWORD PTR [rsp+0xa8],r14
  e173bc:	00 
  e173bd:	0f 84 64 06 00 00    	je     e17a27 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4f67>
  e173c3:	4d 85 ff             	test   r15,r15
  e173c6:	48 8b 84 24 58 01 00 	mov    rax,QWORD PTR [rsp+0x158]
  e173cd:	00 
  e173ce:	0f 84 96 13 00 00    	je     e1876a <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5caa>
  e173d4:	4c 8b 68 70          	mov    r13,QWORD PTR [rax+0x70]
  e173d8:	48 8b 80 90 00 00 00 	mov    rax,QWORD PTR [rax+0x90]
  e173df:	48 89 44 24 30       	mov    QWORD PTR [rsp+0x30],rax
  e173e4:	48 89 d1             	mov    rcx,rdx
  e173e7:	48 d1 e9             	shr    rcx,1
  e173ea:	48 89 d0             	mov    rax,rdx
  e173ed:	48 29 c8             	sub    rax,rcx
  e173f0:	48 89 84 24 00 01 00 	mov    QWORD PTR [rsp+0x100],rax
  e173f7:	00 
  e173f8:	f3 49 0f bc c5       	tzcnt  rax,r13
  e173fd:	48 89 44 24 50       	mov    QWORD PTR [rsp+0x50],rax
  e17402:	48 b8 ff ff ff ff ff 	movabs rax,0x7ffffffffffffff
  e17409:	ff ff 07 
  e1740c:	4c 01 e8             	add    rax,r13
  e1740f:	48 89 44 24 20       	mov    QWORD PTR [rsp+0x20],rax
  e17414:	48 8b 44 24 60       	mov    rax,QWORD PTR [rsp+0x60]
  e17419:	48 83 c0 20          	add    rax,0x20
  e1741d:	48 89 84 24 f8 00 00 	mov    QWORD PTR [rsp+0xf8],rax
  e17424:	00 
  e17425:	49 8d 47 ff          	lea    rax,[r15-0x1]
  e17429:	48 89 84 24 98 00 00 	mov    QWORD PTR [rsp+0x98],rax
  e17430:	00 
  e17431:	48 29 d1             	sub    rcx,rdx
  e17434:	48 89 8c 24 c8 00 00 	mov    QWORD PTR [rsp+0xc8],rcx
  e1743b:	00 
  e1743c:	48 8b 84 24 c0 00 00 	mov    rax,QWORD PTR [rsp+0xc0]
  e17443:	00 
  e17444:	48 83 c0 20          	add    rax,0x20
  e17448:	48 89 84 24 70 01 00 	mov    QWORD PTR [rsp+0x170],rax
  e1744f:	00 
  e17450:	4c 89 c0             	mov    rax,r8
  e17453:	48 c1 e0 06          	shl    rax,0x6
  e17457:	48 89 84 24 60 01 00 	mov    QWORD PTR [rsp+0x160],rax
  e1745e:	00 
  e1745f:	48 89 d8             	mov    rax,rbx
  e17462:	48 c1 e0 05          	shl    rax,0x5
  e17466:	48 89 44 24 28       	mov    QWORD PTR [rsp+0x28],rax
  e1746b:	31 c9                	xor    ecx,ecx
  e1746d:	4c 89 7c 24 68       	mov    QWORD PTR [rsp+0x68],r15
  e17472:	44 88 a4 24 88 00 00 	mov    BYTE PTR [rsp+0x88],r12b
  e17479:	00 
  e1747a:	4c 89 ac 24 20 01 00 	mov    QWORD PTR [rsp+0x120],r13
  e17481:	00 
  e17482:	eb 38                	jmp    e174bc <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x49fc>
  e17484:	66 66 66 2e 0f 1f 84 	data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  e1748b:	00 00 00 00 00 
  e17490:	48 8b 84 24 60 01 00 	mov    rax,QWORD PTR [rsp+0x160]
  e17497:	00 
  e17498:	48 01 84 24 70 01 00 	add    QWORD PTR [rsp+0x170],rax
  e1749f:	00 
  e174a0:	48 8b 8c 24 68 01 00 	mov    rcx,QWORD PTR [rsp+0x168]
  e174a7:	00 
  e174a8:	48 83 bc 24 78 01 00 	cmp    QWORD PTR [rsp+0x178],0x0
  e174af:	00 00 
  e174b1:	48 8b 5c 24 48       	mov    rbx,QWORD PTR [rsp+0x48]
  e174b6:	0f 84 6b 05 00 00    	je     e17a27 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4f67>
  e174bc:	48 8b 44 24 60       	mov    rax,QWORD PTR [rsp+0x60]
  e174c1:	48 8b 00             	mov    rax,QWORD PTR [rax]
  e174c4:	48 83 f8 02          	cmp    rax,0x2
  e174c8:	74 76                	je     e17540 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4a80>
  e174ca:	48 83 f8 04          	cmp    rax,0x4
  e174ce:	74 40                	je     e17510 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4a50>
  e174d0:	48 83 f8 08          	cmp    rax,0x8
  e174d4:	0f 85 20 12 00 00    	jne    e186fa <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5c3a>
  e174da:	48 89 cf             	mov    rdi,rcx
  e174dd:	48 c1 e7 04          	shl    rdi,0x4
  e174e1:	48 03 bc 24 80 01 00 	add    rdi,QWORD PTR [rsp+0x180]
  e174e8:	00 
  e174e9:	48 8b 74 24 58       	mov    rsi,QWORD PTR [rsp+0x58]
  e174ee:	49 89 ce             	mov    r14,rcx
  e174f1:	48 89 d9             	mov    rcx,rbx
  e174f4:	4c 8b 4c 24 30       	mov    r9,QWORD PTR [rsp+0x30]
  e174f9:	0f 28 44 24 70       	movaps xmm0,XMMWORD PTR [rsp+0x70]
  e174fe:	e8 fd e9 fc ff       	call   de5f00 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first_group>
  e17503:	eb 64                	jmp    e17569 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4aa9>
  e17505:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  e1750c:	00 00 00 00 
  e17510:	48 89 cf             	mov    rdi,rcx
  e17513:	48 c1 e7 04          	shl    rdi,0x4
  e17517:	48 03 bc 24 80 01 00 	add    rdi,QWORD PTR [rsp+0x180]
  e1751e:	00 
  e1751f:	48 8b 74 24 58       	mov    rsi,QWORD PTR [rsp+0x58]
  e17524:	49 89 ce             	mov    r14,rcx
  e17527:	48 89 d9             	mov    rcx,rbx
  e1752a:	4c 8b 4c 24 30       	mov    r9,QWORD PTR [rsp+0x30]
  e1752f:	0f 28 44 24 70       	movaps xmm0,XMMWORD PTR [rsp+0x70]
  e17534:	e8 07 e2 fc ff       	call   de5740 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first_group>
  e17539:	eb 2e                	jmp    e17569 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4aa9>
  e1753b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  e17540:	48 89 cf             	mov    rdi,rcx
  e17543:	48 c1 e7 04          	shl    rdi,0x4
  e17547:	48 03 bc 24 80 01 00 	add    rdi,QWORD PTR [rsp+0x180]
  e1754e:	00 
  e1754f:	48 8b 74 24 58       	mov    rsi,QWORD PTR [rsp+0x58]
  e17554:	49 89 ce             	mov    r14,rcx
  e17557:	48 89 d9             	mov    rcx,rbx
  e1755a:	4c 8b 4c 24 30       	mov    r9,QWORD PTR [rsp+0x30]
  e1755f:	0f 28 44 24 70       	movaps xmm0,XMMWORD PTR [rsp+0x70]
  e17564:	e8 57 ee fc ff       	call   de63c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first_group>
  e17569:	48 8b 84 24 f0 00 00 	mov    rax,QWORD PTR [rsp+0xf0]
  e17570:	00 
  e17571:	4c 89 b4 24 10 01 00 	mov    QWORD PTR [rsp+0x110],r14
  e17578:	00 
  e17579:	4c 01 f0             	add    rax,r14
  e1757c:	48 89 84 24 68 01 00 	mov    QWORD PTR [rsp+0x168],rax
  e17583:	00 
  e17584:	48 ff 8c 24 78 01 00 	dec    QWORD PTR [rsp+0x178]
  e1758b:	00 
  e1758c:	48 8b 84 24 70 01 00 	mov    rax,QWORD PTR [rsp+0x170]
  e17593:	00 
  e17594:	48 89 84 24 a0 00 00 	mov    QWORD PTR [rsp+0xa0],rax
  e1759b:	00 
  e1759c:	31 c0                	xor    eax,eax
  e1759e:	48 8b 94 24 b8 00 00 	mov    rdx,QWORD PTR [rsp+0xb8]
  e175a5:	00 
  e175a6:	eb 30                	jmp    e175d8 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4b18>
  e175a8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  e175af:	00 
  e175b0:	48 8b 84 24 b0 00 00 	mov    rax,QWORD PTR [rsp+0xb0]
  e175b7:	00 
  e175b8:	48 ff c0             	inc    rax
  e175bb:	48 83 84 24 a0 00 00 	add    QWORD PTR [rsp+0xa0],0x40
  e175c2:	00 40 
  e175c4:	4c 8b 84 24 e0 00 00 	mov    r8,QWORD PTR [rsp+0xe0]
  e175cb:	00 
  e175cc:	4c 39 c0             	cmp    rax,r8
  e175cf:	4c 89 da             	mov    rdx,r11
  e175d2:	0f 84 b8 fe ff ff    	je     e17490 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x49d0>
  e175d8:	48 89 84 24 b0 00 00 	mov    QWORD PTR [rsp+0xb0],rax
  e175df:	00 
  e175e0:	48 8d 0c 00          	lea    rcx,[rax+rax*1]
  e175e4:	48 8b 44 24 30       	mov    rax,QWORD PTR [rsp+0x30]
  e175e9:	48 89 8c 24 28 01 00 	mov    QWORD PTR [rsp+0x128],rcx
  e175f0:	00 
  e175f1:	48 0f af c1          	imul   rax,rcx
  e175f5:	48 8b 4c 24 58       	mov    rcx,QWORD PTR [rsp+0x58]
  e175fa:	48 8d 0c c1          	lea    rcx,[rcx+rax*8]
  e175fe:	49 83 ff 02          	cmp    r15,0x2
  e17602:	0f 82 08 02 00 00    	jb     e17810 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4d50>
  e17608:	48 8b 44 24 60       	mov    rax,QWORD PTR [rsp+0x60]
  e1760d:	4c 8b 30             	mov    r14,QWORD PTR [rax]
  e17610:	4c 8b bc 24 98 00 00 	mov    r15,QWORD PTR [rsp+0x98]
  e17617:	00 
  e17618:	4c 8b ac 24 f8 00 00 	mov    r13,QWORD PTR [rsp+0xf8]
  e1761f:	00 
  e17620:	48 89 cb             	mov    rbx,rcx
  e17623:	48 8b 84 24 18 01 00 	mov    rax,QWORD PTR [rsp+0x118]
  e1762a:	00 
  e1762b:	48 89 4c 24 40       	mov    QWORD PTR [rsp+0x40],rcx
  e17630:	eb 54                	jmp    e17686 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4bc6>
  e17632:	0f 28 44 24 70       	movaps xmm0,XMMWORD PTR [rsp+0x70]
  e17637:	0f 29 84 24 90 01 00 	movaps XMMWORD PTR [rsp+0x190],xmm0
  e1763e:	00 
  e1763f:	48 89 f7             	mov    rdi,rsi
  e17642:	48 89 de             	mov    rsi,rbx
  e17645:	4c 89 f1             	mov    rcx,r14
  e17648:	4c 8d 8c 24 90 01 00 	lea    r9,[rsp+0x190]
  e1764f:	00 
  e17650:	e8 2b 68 f3 ff       	call   d4de80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e17655:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  e1765c:	00 00 00 00 
  e17660:	4d 0f af f4          	imul   r14,r12
  e17664:	49 83 c5 18          	add    r13,0x18
  e17668:	49 ff cf             	dec    r15
  e1766b:	48 8b 94 24 b8 00 00 	mov    rdx,QWORD PTR [rsp+0xb8]
  e17672:	00 
  e17673:	48 8b 4c 24 40       	mov    rcx,QWORD PTR [rsp+0x40]
  e17678:	48 8b 84 24 90 00 00 	mov    rax,QWORD PTR [rsp+0x90]
  e1767f:	00 
  e17680:	0f 84 8d 01 00 00    	je     e17813 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4d53>
  e17686:	48 89 de             	mov    rsi,rbx
  e17689:	4d 8b 65 f8          	mov    r12,QWORD PTR [r13-0x8]
  e1768d:	49 83 ff 01          	cmp    r15,0x1
  e17691:	48 89 c3             	mov    rbx,rax
  e17694:	48 0f 44 d9          	cmove  rbx,rcx
  e17698:	4d 8b 45 00          	mov    r8,QWORD PTR [r13+0x0]
  e1769c:	4c 03 44 24 60       	add    r8,QWORD PTR [rsp+0x60]
  e176a1:	4c 89 a4 24 30 01 00 	mov    QWORD PTR [rsp+0x130],r12
  e176a8:	00 
  e176a9:	49 8d 44 24 fe       	lea    rax,[r12-0x2]
  e176ae:	48 83 f8 0e          	cmp    rax,0xe
  e176b2:	0f 87 f0 0f 00 00    	ja     e186a8 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5be8>
  e176b8:	48 8d 0d 99 c5 28 ff 	lea    rcx,[rip+0xffffffffff28c599]        # a3c58 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x31108>
  e176bf:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  e176c3:	48 01 c8             	add    rax,rcx
  e176c6:	48 89 b4 24 90 00 00 	mov    QWORD PTR [rsp+0x90],rsi
  e176cd:	00 
  e176ce:	ff e0                	jmp    rax
  e176d0:	48 89 f7             	mov    rdi,rsi
  e176d3:	48 89 de             	mov    rsi,rbx
  e176d6:	4c 89 f1             	mov    rcx,r14
  e176d9:	e8 e2 cf f2 ff       	call   d446c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e176de:	eb 80                	jmp    e17660 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4ba0>
  e176e0:	48 89 f7             	mov    rdi,rsi
  e176e3:	48 89 de             	mov    rsi,rbx
  e176e6:	4c 89 f1             	mov    rcx,r14
  e176e9:	e8 92 24 f3 ff       	call   d49b80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e176ee:	e9 6d ff ff ff       	jmp    e17660 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4ba0>
  e176f3:	48 89 f7             	mov    rdi,rsi
  e176f6:	48 89 de             	mov    rsi,rbx
  e176f9:	4c 89 f1             	mov    rcx,r14
  e176fc:	e8 ff d9 f2 ff       	call   d45100 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e17701:	e9 5a ff ff ff       	jmp    e17660 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4ba0>
  e17706:	48 89 f7             	mov    rdi,rsi
  e17709:	48 89 de             	mov    rsi,rbx
  e1770c:	4c 89 f1             	mov    rcx,r14
  e1770f:	e8 2c 3d f3 ff       	call   d4b440 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e17714:	e9 47 ff ff ff       	jmp    e17660 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4ba0>
  e17719:	48 89 f7             	mov    rdi,rsi
  e1771c:	48 89 de             	mov    rsi,rbx
  e1771f:	4c 89 f1             	mov    rcx,r14
  e17722:	e8 99 03 f3 ff       	call   d47ac0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e17727:	e9 34 ff ff ff       	jmp    e17660 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4ba0>
  e1772c:	48 89 f7             	mov    rdi,rsi
  e1772f:	48 89 de             	mov    rsi,rbx
  e17732:	4c 89 f1             	mov    rcx,r14
  e17735:	e8 46 d3 f2 ff       	call   d44a80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e1773a:	e9 21 ff ff ff       	jmp    e17660 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4ba0>
  e1773f:	48 89 f7             	mov    rdi,rsi
  e17742:	48 89 de             	mov    rsi,rbx
  e17745:	4c 89 f1             	mov    rcx,r14
  e17748:	e8 b3 d5 f2 ff       	call   d44d00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e1774d:	e9 0e ff ff ff       	jmp    e17660 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4ba0>
  e17752:	48 89 f7             	mov    rdi,rsi
  e17755:	48 89 de             	mov    rsi,rbx
  e17758:	4c 89 f1             	mov    rcx,r14
  e1775b:	e8 e0 ec f2 ff       	call   d46440 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e17760:	e9 fb fe ff ff       	jmp    e17660 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4ba0>
  e17765:	48 89 f7             	mov    rdi,rsi
  e17768:	48 89 de             	mov    rsi,rbx
  e1776b:	4c 89 f1             	mov    rcx,r14
  e1776e:	e8 cd d0 f2 ff       	call   d44840 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e17773:	e9 e8 fe ff ff       	jmp    e17660 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4ba0>
  e17778:	48 89 f7             	mov    rdi,rsi
  e1777b:	48 89 de             	mov    rsi,rbx
  e1777e:	4c 89 f1             	mov    rcx,r14
  e17781:	e8 3a de f2 ff       	call   d455c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e17786:	e9 d5 fe ff ff       	jmp    e17660 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4ba0>
  e1778b:	48 89 f7             	mov    rdi,rsi
  e1778e:	48 89 de             	mov    rsi,rbx
  e17791:	4c 89 f1             	mov    rcx,r14
  e17794:	e8 67 51 f3 ff       	call   d4c900 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e17799:	e9 c2 fe ff ff       	jmp    e17660 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4ba0>
  e1779e:	0f 28 44 24 70       	movaps xmm0,XMMWORD PTR [rsp+0x70]
  e177a3:	0f 29 84 24 90 01 00 	movaps XMMWORD PTR [rsp+0x190],xmm0
  e177aa:	00 
  e177ab:	48 89 f7             	mov    rdi,rsi
  e177ae:	48 89 de             	mov    rsi,rbx
  e177b1:	4c 89 f1             	mov    rcx,r14
  e177b4:	4c 8d 8c 24 90 01 00 	lea    r9,[rsp+0x190]
  e177bb:	00 
  e177bc:	e8 7f e5 f2 ff       	call   d45d40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e177c1:	e9 9a fe ff ff       	jmp    e17660 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4ba0>
  e177c6:	0f 28 44 24 70       	movaps xmm0,XMMWORD PTR [rsp+0x70]
  e177cb:	0f 29 84 24 90 01 00 	movaps XMMWORD PTR [rsp+0x190],xmm0
  e177d2:	00 
  e177d3:	48 89 f7             	mov    rdi,rsi
  e177d6:	48 89 de             	mov    rsi,rbx
  e177d9:	4c 89 f1             	mov    rcx,r14
  e177dc:	4c 8d 8c 24 90 01 00 	lea    r9,[rsp+0x190]
  e177e3:	00 
  e177e4:	e8 97 15 f3 ff       	call   d48d80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e177e9:	e9 72 fe ff ff       	jmp    e17660 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4ba0>
  e177ee:	48 89 f7             	mov    rdi,rsi
  e177f1:	48 89 de             	mov    rsi,rbx
  e177f4:	4c 89 f1             	mov    rcx,r14
  e177f7:	e8 c4 f6 f2 ff       	call   d46ec0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e177fc:	e9 5f fe ff ff       	jmp    e17660 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4ba0>
  e17801:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  e17808:	0f 1f 84 00 00 00 00 
  e1780f:	00 
  e17810:	48 89 cb             	mov    rbx,rcx
  e17813:	4c 8b ac 24 20 01 00 	mov    r13,QWORD PTR [rsp+0x120]
  e1781a:	00 
  e1781b:	4d 85 ed             	test   r13,r13
  e1781e:	0f 84 1e 0f 00 00    	je     e18742 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5c82>
  e17824:	48 89 d0             	mov    rax,rdx
  e17827:	4c 09 e8             	or     rax,r13
  e1782a:	48 c1 e8 20          	shr    rax,0x20
  e1782e:	4c 8b b4 24 a8 00 00 	mov    r14,QWORD PTR [rsp+0xa8]
  e17835:	00 
  e17836:	4c 8b 7c 24 68       	mov    r15,QWORD PTR [rsp+0x68]
  e1783b:	44 0f b6 a4 24 88 00 	movzx  r12d,BYTE PTR [rsp+0x88]
  e17842:	00 00 
  e17844:	49 89 d3             	mov    r11,rdx
  e17847:	74 27                	je     e17870 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4db0>
  e17849:	48 89 d0             	mov    rax,rdx
  e1784c:	31 d2                	xor    edx,edx
  e1784e:	49 f7 f5             	div    r13
  e17851:	48 83 bc 24 00 01 00 	cmp    QWORD PTR [rsp+0x100],0x0
  e17858:	00 00 
  e1785a:	75 2a                	jne    e17886 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4dc6>
  e1785c:	e9 4f fd ff ff       	jmp    e175b0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4af0>
  e17861:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  e17868:	0f 1f 84 00 00 00 00 
  e1786f:	00 
  e17870:	89 d0                	mov    eax,edx
  e17872:	31 d2                	xor    edx,edx
  e17874:	41 f7 f5             	div    r13d
  e17877:	48 83 bc 24 00 01 00 	cmp    QWORD PTR [rsp+0x100],0x0
  e1787e:	00 00 
  e17880:	0f 84 2a fd ff ff    	je     e175b0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4af0>
  e17886:	48 8b 94 24 28 01 00 	mov    rdx,QWORD PTR [rsp+0x128]
  e1788d:	00 
  e1788e:	48 03 94 24 10 01 00 	add    rdx,QWORD PTR [rsp+0x110]
  e17895:	00 
  e17896:	48 01 d2             	add    rdx,rdx
  e17899:	48 0f af c2          	imul   rax,rdx
  e1789d:	49 0f af d5          	imul   rdx,r13
  e178a1:	48 8b 8c 24 d8 00 00 	mov    rcx,QWORD PTR [rsp+0xd8]
  e178a8:	00 
  e178a9:	48 8d 04 c1          	lea    rax,[rcx+rax*8]
  e178ad:	48 8b 8c 24 d0 00 00 	mov    rcx,QWORD PTR [rsp+0xd0]
  e178b4:	00 
  e178b5:	48 8d 14 d1          	lea    rdx,[rcx+rdx*8]
  e178b9:	48 83 c3 30          	add    rbx,0x30
  e178bd:	48 8b b4 24 a0 00 00 	mov    rsi,QWORD PTR [rsp+0xa0]
  e178c4:	00 
  e178c5:	48 8b bc 24 c8 00 00 	mov    rdi,QWORD PTR [rsp+0xc8]
  e178cc:	00 
  e178cd:	45 31 c0             	xor    r8d,r8d
  e178d0:	eb 42                	jmp    e17914 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4e54>
  e178d2:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  e178d9:	1f 84 00 00 00 00 00 
  e178e0:	48 8d 4e e0          	lea    rcx,[rsi-0x20]
  e178e4:	4c 8d 4e f0          	lea    r9,[rsi-0x10]
  e178e8:	4c 8d 56 10          	lea    r10,[rsi+0x10]
  e178ec:	66 0f 2b 21          	movntpd XMMWORD PTR [rcx],xmm4
  e178f0:	66 41 0f 2b 19       	movntpd XMMWORD PTR [r9],xmm3
  e178f5:	66 0f 2b 16          	movntpd XMMWORD PTR [rsi],xmm2
  e178f9:	66 41 0f 2b 02       	movntpd XMMWORD PTR [r10],xmm0
  e178fe:	48 03 74 24 28       	add    rsi,QWORD PTR [rsp+0x28]
  e17903:	48 83 c3 40          	add    rbx,0x40
  e17907:	49 83 c0 02          	add    r8,0x2
  e1790b:	48 ff c7             	inc    rdi
  e1790e:	0f 84 9c fc ff ff    	je     e175b0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4af0>
  e17914:	4d 89 c1             	mov    r9,r8
  e17917:	48 8b 4c 24 50       	mov    rcx,QWORD PTR [rsp+0x50]
  e1791c:	49 d3 e9             	shr    r9,cl
  e1791f:	49 c1 e1 05          	shl    r9,0x5
  e17923:	66 42 0f 10 04 08    	movupd xmm0,XMMWORD PTR [rax+r9*1]
  e17929:	66 42 0f 10 54 08 10 	movupd xmm2,XMMWORD PTR [rax+r9*1+0x10]
  e17930:	4c 89 c1             	mov    rcx,r8
  e17933:	48 23 4c 24 20       	and    rcx,QWORD PTR [rsp+0x20]
  e17938:	48 c1 e1 05          	shl    rcx,0x5
  e1793c:	66 0f 10 1c 0a       	movupd xmm3,XMMWORD PTR [rdx+rcx*1]
  e17941:	66 0f 10 4c 0a 10    	movupd xmm1,XMMWORD PTR [rdx+rcx*1+0x10]
  e17947:	66 0f 10 74 0a 20    	movupd xmm6,XMMWORD PTR [rdx+rcx*1+0x20]
  e1794d:	66 0f 10 64 0a 30    	movupd xmm4,XMMWORD PTR [rdx+rcx*1+0x30]
  e17953:	66 0f 28 ea          	movapd xmm5,xmm2
  e17957:	66 0f 59 e9          	mulpd  xmm5,xmm1
  e1795b:	66 44 0f 28 c0       	movapd xmm8,xmm0
  e17960:	66 44 0f 59 c3       	mulpd  xmm8,xmm3
  e17965:	66 44 0f 5c c5       	subpd  xmm8,xmm5
  e1796a:	66 0f 59 da          	mulpd  xmm3,xmm2
  e1796e:	66 0f 59 c8          	mulpd  xmm1,xmm0
  e17972:	66 0f 58 cb          	addpd  xmm1,xmm3
  e17976:	66 44 0f 10 4b d0    	movupd xmm9,XMMWORD PTR [rbx-0x30]
  e1797c:	66 44 0f 10 53 e0    	movupd xmm10,XMMWORD PTR [rbx-0x20]
  e17982:	66 0f 10 6b f0       	movupd xmm5,XMMWORD PTR [rbx-0x10]
  e17987:	66 0f 10 3b          	movupd xmm7,XMMWORD PTR [rbx]
  e1798b:	66 41 0f 28 d9       	movapd xmm3,xmm9
  e17990:	66 41 0f 59 d8       	mulpd  xmm3,xmm8
  e17995:	66 45 0f 59 c2       	mulpd  xmm8,xmm10
  e1799a:	66 44 0f 59 d1       	mulpd  xmm10,xmm1
  e1799f:	66 41 0f 5c da       	subpd  xmm3,xmm10
  e179a4:	66 41 0f 59 c9       	mulpd  xmm1,xmm9
  e179a9:	66 41 0f 58 c8       	addpd  xmm1,xmm8
  e179ae:	66 44 0f 28 c2       	movapd xmm8,xmm2
  e179b3:	66 44 0f 59 c4       	mulpd  xmm8,xmm4
  e179b8:	66 44 0f 28 c8       	movapd xmm9,xmm0
  e179bd:	66 44 0f 59 ce       	mulpd  xmm9,xmm6
  e179c2:	66 45 0f 5c c8       	subpd  xmm9,xmm8
  e179c7:	66 0f 59 d6          	mulpd  xmm2,xmm6
  e179cb:	66 0f 59 c4          	mulpd  xmm0,xmm4
  e179cf:	66 0f 58 c2          	addpd  xmm0,xmm2
  e179d3:	66 0f 28 d5          	movapd xmm2,xmm5
  e179d7:	66 41 0f 59 d1       	mulpd  xmm2,xmm9
  e179dc:	66 44 0f 59 cf       	mulpd  xmm9,xmm7
  e179e1:	66 0f 59 f8          	mulpd  xmm7,xmm0
  e179e5:	66 0f 5c d7          	subpd  xmm2,xmm7
  e179e9:	66 0f 59 c5          	mulpd  xmm0,xmm5
  e179ed:	66 41 0f 58 c1       	addpd  xmm0,xmm9
  e179f2:	66 0f 28 e3          	movapd xmm4,xmm3
  e179f6:	66 0f 14 e2          	unpcklpd xmm4,xmm2
  e179fa:	0f 12 d3             	movhlps xmm2,xmm3
  e179fd:	66 0f 28 d9          	movapd xmm3,xmm1
  e17a01:	66 0f 14 d8          	unpcklpd xmm3,xmm0
  e17a05:	0f 12 c1             	movhlps xmm0,xmm1
  e17a08:	45 84 e4             	test   r12b,r12b
  e17a0b:	0f 85 cf fe ff ff    	jne    e178e0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4e20>
  e17a11:	66 0f 11 66 e0       	movupd XMMWORD PTR [rsi-0x20],xmm4
  e17a16:	66 0f 11 5e f0       	movupd XMMWORD PTR [rsi-0x10],xmm3
  e17a1b:	0f 11 16             	movups XMMWORD PTR [rsi],xmm2
  e17a1e:	0f 11 46 10          	movups XMMWORD PTR [rsi+0x10],xmm0
  e17a22:	e9 d7 fe ff ff       	jmp    e178fe <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4e3e>
  e17a27:	45 84 e4             	test   r12b,r12b
  e17a2a:	74 03                	je     e17a2f <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4f6f>
  e17a2c:	0f ae f8             	sfence
  e17a2f:	48 89 d0             	mov    rax,rdx
  e17a32:	48 8b 8c 24 f0 00 00 	mov    rcx,QWORD PTR [rsp+0xf0]
  e17a39:	00 
  e17a3a:	48 09 c8             	or     rax,rcx
  e17a3d:	48 c1 e8 20          	shr    rax,0x20
  e17a41:	74 0a                	je     e17a4d <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4f8d>
  e17a43:	48 89 d0             	mov    rax,rdx
  e17a46:	31 d2                	xor    edx,edx
  e17a48:	48 f7 f1             	div    rcx
  e17a4b:	eb 06                	jmp    e17a53 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x4f93>
  e17a4d:	89 d0                	mov    eax,edx
  e17a4f:	31 d2                	xor    edx,edx
  e17a51:	f7 f1                	div    ecx
  e17a53:	44 20 a4 24 08 01 00 	and    BYTE PTR [rsp+0x108],r12b
  e17a5a:	00 
  e17a5b:	31 f6                	xor    esi,esi
  e17a5d:	48 85 d2             	test   rdx,rdx
  e17a60:	40 0f 95 c6          	setne  sil
  e17a64:	48 01 c6             	add    rsi,rax
  e17a67:	0f 84 28 0c 00 00    	je     e18695 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5bd5>
  e17a6d:	4d 85 f6             	test   r14,r14
  e17a70:	0f 84 04 0d 00 00    	je     e1877a <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5cba>
  e17a76:	4b 8d 04 7f          	lea    rax,[r15+r15*2]
  e17a7a:	48 8b 54 24 60       	mov    rdx,QWORD PTR [rsp+0x60]
  e17a7f:	48 8d 0c c2          	lea    rcx,[rdx+rax*8]
  e17a83:	48 89 4c 24 28       	mov    QWORD PTR [rsp+0x28],rcx
  e17a88:	48 8b 8c 24 58 01 00 	mov    rcx,QWORD PTR [rsp+0x158]
  e17a8f:	00 
  e17a90:	48 8b b9 90 00 00 00 	mov    rdi,QWORD PTR [rcx+0x90]
  e17a97:	48 8d 0c 1b          	lea    rcx,[rbx+rbx*1]
  e17a9b:	48 89 8c 24 a0 00 00 	mov    QWORD PTR [rsp+0xa0],rcx
  e17aa2:	00 
  e17aa3:	48 89 f9             	mov    rcx,rdi
  e17aa6:	48 c1 e1 04          	shl    rcx,0x4
  e17aaa:	48 89 8c 24 28 01 00 	mov    QWORD PTR [rsp+0x128],rcx
  e17ab1:	00 
  e17ab2:	4c 89 c1             	mov    rcx,r8
  e17ab5:	48 83 e1 fe          	and    rcx,0xfffffffffffffffe
  e17ab9:	48 89 4c 24 30       	mov    QWORD PTR [rsp+0x30],rcx
  e17abe:	48 8d 04 c2          	lea    rax,[rdx+rax*8]
  e17ac2:	48 83 c0 20          	add    rax,0x20
  e17ac6:	48 89 84 24 88 00 00 	mov    QWORD PTR [rsp+0x88],rax
  e17acd:	00 
  e17ace:	49 8d 46 ff          	lea    rax,[r14-0x1]
  e17ad2:	48 89 84 24 00 01 00 	mov    QWORD PTR [rsp+0x100],rax
  e17ad9:	00 
  e17ada:	48 8b 8c 24 b8 02 00 	mov    rcx,QWORD PTR [rsp+0x2b8]
  e17ae1:	00 
  e17ae2:	48 c1 e1 05          	shl    rcx,0x5
  e17ae6:	48 03 8c 24 88 01 00 	add    rcx,QWORD PTR [rsp+0x188]
  e17aed:	00 
  e17aee:	48 8b 84 24 c0 00 00 	mov    rax,QWORD PTR [rsp+0xc0]
  e17af5:	00 
  e17af6:	48 01 c8             	add    rax,rcx
  e17af9:	48 83 c0 10          	add    rax,0x10
  e17afd:	48 89 84 24 98 00 00 	mov    QWORD PTR [rsp+0x98],rax
  e17b04:	00 
  e17b05:	48 89 bc 24 b0 00 00 	mov    QWORD PTR [rsp+0xb0],rdi
  e17b0c:	00 
  e17b0d:	48 c1 e7 05          	shl    rdi,0x5
  e17b11:	48 89 bc 24 20 01 00 	mov    QWORD PTR [rsp+0x120],rdi
  e17b18:	00 
  e17b19:	48 8b 84 24 e8 00 00 	mov    rax,QWORD PTR [rsp+0xe8]
  e17b20:	00 
  e17b21:	48 8d 48 30          	lea    rcx,[rax+0x30]
  e17b25:	48 89 8c 24 d0 00 00 	mov    QWORD PTR [rsp+0xd0],rcx
  e17b2c:	00 
  e17b2d:	49 c1 e0 05          	shl    r8,0x5
  e17b31:	4c 89 84 24 f8 00 00 	mov    QWORD PTR [rsp+0xf8],r8
  e17b38:	00 
  e17b39:	48 8b 8c 24 b8 00 00 	mov    rcx,QWORD PTR [rsp+0xb8]
  e17b40:	00 
  e17b41:	48 c1 e1 04          	shl    rcx,0x4
  e17b45:	48 89 4c 24 68       	mov    QWORD PTR [rsp+0x68],rcx
  e17b4a:	31 c9                	xor    ecx,ecx
  e17b4c:	48 89 84 24 c8 00 00 	mov    QWORD PTR [rsp+0xc8],rax
  e17b53:	00 
  e17b54:	eb 3b                	jmp    e17b91 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x50d1>
  e17b56:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  e17b5d:	00 00 00 
  e17b60:	48 8b 84 24 f8 00 00 	mov    rax,QWORD PTR [rsp+0xf8]
  e17b67:	00 
  e17b68:	48 01 84 24 d0 00 00 	add    QWORD PTR [rsp+0xd0],rax
  e17b6f:	00 
  e17b70:	48 01 84 24 c8 00 00 	add    QWORD PTR [rsp+0xc8],rax
  e17b77:	00 
  e17b78:	48 8b b4 24 10 01 00 	mov    rsi,QWORD PTR [rsp+0x110]
  e17b7f:	00 
  e17b80:	48 85 f6             	test   rsi,rsi
  e17b83:	48 8b 8c 24 d8 00 00 	mov    rcx,QWORD PTR [rsp+0xd8]
  e17b8a:	00 
  e17b8b:	0f 84 04 0b 00 00    	je     e18695 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5bd5>
  e17b91:	48 8b 84 24 f0 00 00 	mov    rax,QWORD PTR [rsp+0xf0]
  e17b98:	00 
  e17b99:	48 89 4c 24 40       	mov    QWORD PTR [rsp+0x40],rcx
  e17b9e:	48 01 c8             	add    rax,rcx
  e17ba1:	48 89 84 24 d8 00 00 	mov    QWORD PTR [rsp+0xd8],rax
  e17ba8:	00 
  e17ba9:	48 ff ce             	dec    rsi
  e17bac:	48 89 b4 24 10 01 00 	mov    QWORD PTR [rsp+0x110],rsi
  e17bb3:	00 
  e17bb4:	31 d2                	xor    edx,edx
  e17bb6:	eb 43                	jmp    e17bfb <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x513b>
  e17bb8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  e17bbf:	00 
  e17bc0:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e17bc5:	48 ff c2             	inc    rdx
  e17bc8:	4c 8b 9c 24 e0 00 00 	mov    r11,QWORD PTR [rsp+0xe0]
  e17bcf:	00 
  e17bd0:	4c 39 da             	cmp    rdx,r11
  e17bd3:	48 8b 5c 24 48       	mov    rbx,QWORD PTR [rsp+0x48]
  e17bd8:	4c 8b b4 24 a8 00 00 	mov    r14,QWORD PTR [rsp+0xa8]
  e17bdf:	00 
  e17be0:	4c 8b bc 24 28 01 00 	mov    r15,QWORD PTR [rsp+0x128]
  e17be7:	00 
  e17be8:	4c 8b 64 24 30       	mov    r12,QWORD PTR [rsp+0x30]
  e17bed:	4c 8b ac 24 20 01 00 	mov    r13,QWORD PTR [rsp+0x120]
  e17bf4:	00 
  e17bf5:	0f 84 f5 02 00 00    	je     e17ef0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5430>
  e17bfb:	48 8d 04 12          	lea    rax,[rdx+rdx*1]
  e17bff:	48 0f af 84 24 b0 00 	imul   rax,QWORD PTR [rsp+0xb0]
  e17c06:	00 00 
  e17c08:	48 8b 4c 24 58       	mov    rcx,QWORD PTR [rsp+0x58]
  e17c0d:	48 8d 04 c1          	lea    rax,[rcx+rax*8]
  e17c11:	48 89 44 24 50       	mov    QWORD PTR [rsp+0x50],rax
  e17c16:	48 8b 44 24 40       	mov    rax,QWORD PTR [rsp+0x40]
  e17c1b:	48 8d 04 50          	lea    rax,[rax+rdx*2]
  e17c1f:	48 0f af 84 24 a0 00 	imul   rax,QWORD PTR [rsp+0xa0]
  e17c26:	00 00 
  e17c28:	48 8b 8c 24 c0 00 00 	mov    rcx,QWORD PTR [rsp+0xc0]
  e17c2f:	00 
  e17c30:	48 8d 3c c1          	lea    rdi,[rcx+rax*8]
  e17c34:	48 8b 44 24 28       	mov    rax,QWORD PTR [rsp+0x28]
  e17c39:	48 8b 00             	mov    rax,QWORD PTR [rax]
  e17c3c:	48 83 f8 02          	cmp    rax,0x2
  e17c40:	48 89 54 24 20       	mov    QWORD PTR [rsp+0x20],rdx
  e17c45:	74 59                	je     e17ca0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x51e0>
  e17c47:	48 83 f8 04          	cmp    rax,0x4
  e17c4b:	74 33                	je     e17c80 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x51c0>
  e17c4d:	48 83 f8 08          	cmp    rax,0x8
  e17c51:	0f 85 8b 0a 00 00    	jne    e186e2 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5c22>
  e17c57:	48 8b 74 24 50       	mov    rsi,QWORD PTR [rsp+0x50]
  e17c5c:	48 89 da             	mov    rdx,rbx
  e17c5f:	0f 28 44 24 70       	movaps xmm0,XMMWORD PTR [rsp+0x70]
  e17c64:	e8 57 7c fe ff       	call   dff8c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e17c69:	49 83 fe 02          	cmp    r14,0x2
  e17c6d:	0f 82 4d ff ff ff    	jb     e17bc0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5100>
  e17c73:	eb 47                	jmp    e17cbc <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x51fc>
  e17c75:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  e17c7c:	00 00 00 00 
  e17c80:	48 8b 74 24 50       	mov    rsi,QWORD PTR [rsp+0x50]
  e17c85:	48 89 da             	mov    rdx,rbx
  e17c88:	0f 28 44 24 70       	movaps xmm0,XMMWORD PTR [rsp+0x70]
  e17c8d:	e8 2e 70 fe ff       	call   dfecc0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e17c92:	49 83 fe 02          	cmp    r14,0x2
  e17c96:	0f 82 24 ff ff ff    	jb     e17bc0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5100>
  e17c9c:	eb 1e                	jmp    e17cbc <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x51fc>
  e17c9e:	66 90                	xchg   ax,ax
  e17ca0:	48 8b 74 24 50       	mov    rsi,QWORD PTR [rsp+0x50]
  e17ca5:	48 89 da             	mov    rdx,rbx
  e17ca8:	0f 28 44 24 70       	movaps xmm0,XMMWORD PTR [rsp+0x70]
  e17cad:	e8 ce 8e ff ff       	call   e10b80 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e17cb2:	49 83 fe 02          	cmp    r14,0x2
  e17cb6:	0f 82 04 ff ff ff    	jb     e17bc0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5100>
  e17cbc:	48 8b 44 24 28       	mov    rax,QWORD PTR [rsp+0x28]
  e17cc1:	4c 8b 28             	mov    r13,QWORD PTR [rax]
  e17cc4:	4c 8b bc 24 00 01 00 	mov    r15,QWORD PTR [rsp+0x100]
  e17ccb:	00 
  e17ccc:	4c 8b b4 24 88 00 00 	mov    r14,QWORD PTR [rsp+0x88]
  e17cd3:	00 
  e17cd4:	4c 8b 64 24 50       	mov    r12,QWORD PTR [rsp+0x50]
  e17cd9:	48 8b 84 24 18 01 00 	mov    rax,QWORD PTR [rsp+0x118]
  e17ce0:	00 
  e17ce1:	eb 46                	jmp    e17d29 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5269>
  e17ce3:	0f 28 44 24 70       	movaps xmm0,XMMWORD PTR [rsp+0x70]
  e17ce8:	0f 29 84 24 90 01 00 	movaps XMMWORD PTR [rsp+0x190],xmm0
  e17cef:	00 
  e17cf0:	48 89 d7             	mov    rdi,rdx
  e17cf3:	4c 89 e6             	mov    rsi,r12
  e17cf6:	48 8b 54 24 48       	mov    rdx,QWORD PTR [rsp+0x48]
  e17cfb:	4c 89 e9             	mov    rcx,r13
  e17cfe:	4c 8d 8c 24 90 01 00 	lea    r9,[rsp+0x190]
  e17d05:	00 
  e17d06:	e8 75 61 f3 ff       	call   d4de80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e17d0b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  e17d10:	4c 0f af eb          	imul   r13,rbx
  e17d14:	49 83 c6 18          	add    r14,0x18
  e17d18:	49 ff cf             	dec    r15
  e17d1b:	48 8b 84 24 90 00 00 	mov    rax,QWORD PTR [rsp+0x90]
  e17d22:	00 
  e17d23:	0f 84 97 fe ff ff    	je     e17bc0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5100>
  e17d29:	4c 89 e2             	mov    rdx,r12
  e17d2c:	49 8b 5e f8          	mov    rbx,QWORD PTR [r14-0x8]
  e17d30:	49 83 ff 01          	cmp    r15,0x1
  e17d34:	49 89 c4             	mov    r12,rax
  e17d37:	4c 0f 44 64 24 50    	cmove  r12,QWORD PTR [rsp+0x50]
  e17d3d:	4d 8b 06             	mov    r8,QWORD PTR [r14]
  e17d40:	4c 03 44 24 60       	add    r8,QWORD PTR [rsp+0x60]
  e17d45:	48 89 9c 24 30 01 00 	mov    QWORD PTR [rsp+0x130],rbx
  e17d4c:	00 
  e17d4d:	48 8d 43 fe          	lea    rax,[rbx-0x2]
  e17d51:	48 83 f8 0e          	cmp    rax,0xe
  e17d55:	0f 87 4d 09 00 00    	ja     e186a8 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5be8>
  e17d5b:	48 8d 0d 32 bf 28 ff 	lea    rcx,[rip+0xffffffffff28bf32]        # a3c94 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x31144>
  e17d62:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  e17d66:	48 01 c8             	add    rax,rcx
  e17d69:	48 89 94 24 90 00 00 	mov    QWORD PTR [rsp+0x90],rdx
  e17d70:	00 
  e17d71:	ff e0                	jmp    rax
  e17d73:	48 89 d7             	mov    rdi,rdx
  e17d76:	4c 89 e6             	mov    rsi,r12
  e17d79:	48 8b 54 24 48       	mov    rdx,QWORD PTR [rsp+0x48]
  e17d7e:	4c 89 e9             	mov    rcx,r13
  e17d81:	e8 3a c9 f2 ff       	call   d446c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e17d86:	eb 88                	jmp    e17d10 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5250>
  e17d88:	48 89 d7             	mov    rdi,rdx
  e17d8b:	4c 89 e6             	mov    rsi,r12
  e17d8e:	48 8b 54 24 48       	mov    rdx,QWORD PTR [rsp+0x48]
  e17d93:	4c 89 e9             	mov    rcx,r13
  e17d96:	e8 e5 1d f3 ff       	call   d49b80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e17d9b:	e9 70 ff ff ff       	jmp    e17d10 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5250>
  e17da0:	48 89 d7             	mov    rdi,rdx
  e17da3:	4c 89 e6             	mov    rsi,r12
  e17da6:	48 8b 54 24 48       	mov    rdx,QWORD PTR [rsp+0x48]
  e17dab:	4c 89 e9             	mov    rcx,r13
  e17dae:	e8 4d d3 f2 ff       	call   d45100 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e17db3:	e9 58 ff ff ff       	jmp    e17d10 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5250>
  e17db8:	48 89 d7             	mov    rdi,rdx
  e17dbb:	4c 89 e6             	mov    rsi,r12
  e17dbe:	48 8b 54 24 48       	mov    rdx,QWORD PTR [rsp+0x48]
  e17dc3:	4c 89 e9             	mov    rcx,r13
  e17dc6:	e8 75 36 f3 ff       	call   d4b440 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e17dcb:	e9 40 ff ff ff       	jmp    e17d10 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5250>
  e17dd0:	48 89 d7             	mov    rdi,rdx
  e17dd3:	4c 89 e6             	mov    rsi,r12
  e17dd6:	48 8b 54 24 48       	mov    rdx,QWORD PTR [rsp+0x48]
  e17ddb:	4c 89 e9             	mov    rcx,r13
  e17dde:	e8 dd fc f2 ff       	call   d47ac0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e17de3:	e9 28 ff ff ff       	jmp    e17d10 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5250>
  e17de8:	48 89 d7             	mov    rdi,rdx
  e17deb:	4c 89 e6             	mov    rsi,r12
  e17dee:	48 8b 54 24 48       	mov    rdx,QWORD PTR [rsp+0x48]
  e17df3:	4c 89 e9             	mov    rcx,r13
  e17df6:	e8 85 cc f2 ff       	call   d44a80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e17dfb:	e9 10 ff ff ff       	jmp    e17d10 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5250>
  e17e00:	48 89 d7             	mov    rdi,rdx
  e17e03:	4c 89 e6             	mov    rsi,r12
  e17e06:	48 8b 54 24 48       	mov    rdx,QWORD PTR [rsp+0x48]
  e17e0b:	4c 89 e9             	mov    rcx,r13
  e17e0e:	e8 ed ce f2 ff       	call   d44d00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e17e13:	e9 f8 fe ff ff       	jmp    e17d10 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5250>
  e17e18:	48 89 d7             	mov    rdi,rdx
  e17e1b:	4c 89 e6             	mov    rsi,r12
  e17e1e:	48 8b 54 24 48       	mov    rdx,QWORD PTR [rsp+0x48]
  e17e23:	4c 89 e9             	mov    rcx,r13
  e17e26:	e8 15 e6 f2 ff       	call   d46440 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e17e2b:	e9 e0 fe ff ff       	jmp    e17d10 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5250>
  e17e30:	48 89 d7             	mov    rdi,rdx
  e17e33:	4c 89 e6             	mov    rsi,r12
  e17e36:	48 8b 54 24 48       	mov    rdx,QWORD PTR [rsp+0x48]
  e17e3b:	4c 89 e9             	mov    rcx,r13
  e17e3e:	e8 fd c9 f2 ff       	call   d44840 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e17e43:	e9 c8 fe ff ff       	jmp    e17d10 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5250>
  e17e48:	48 89 d7             	mov    rdi,rdx
  e17e4b:	4c 89 e6             	mov    rsi,r12
  e17e4e:	48 8b 54 24 48       	mov    rdx,QWORD PTR [rsp+0x48]
  e17e53:	4c 89 e9             	mov    rcx,r13
  e17e56:	e8 65 d7 f2 ff       	call   d455c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e17e5b:	e9 b0 fe ff ff       	jmp    e17d10 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5250>
  e17e60:	48 89 d7             	mov    rdi,rdx
  e17e63:	4c 89 e6             	mov    rsi,r12
  e17e66:	48 8b 54 24 48       	mov    rdx,QWORD PTR [rsp+0x48]
  e17e6b:	4c 89 e9             	mov    rcx,r13
  e17e6e:	e8 8d 4a f3 ff       	call   d4c900 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e17e73:	e9 98 fe ff ff       	jmp    e17d10 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5250>
  e17e78:	0f 28 44 24 70       	movaps xmm0,XMMWORD PTR [rsp+0x70]
  e17e7d:	0f 29 84 24 90 01 00 	movaps XMMWORD PTR [rsp+0x190],xmm0
  e17e84:	00 
  e17e85:	48 89 d7             	mov    rdi,rdx
  e17e88:	4c 89 e6             	mov    rsi,r12
  e17e8b:	48 8b 54 24 48       	mov    rdx,QWORD PTR [rsp+0x48]
  e17e90:	4c 89 e9             	mov    rcx,r13
  e17e93:	4c 8d 8c 24 90 01 00 	lea    r9,[rsp+0x190]
  e17e9a:	00 
  e17e9b:	e8 a0 de f2 ff       	call   d45d40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e17ea0:	e9 6b fe ff ff       	jmp    e17d10 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5250>
  e17ea5:	0f 28 44 24 70       	movaps xmm0,XMMWORD PTR [rsp+0x70]
  e17eaa:	0f 29 84 24 90 01 00 	movaps XMMWORD PTR [rsp+0x190],xmm0
  e17eb1:	00 
  e17eb2:	48 89 d7             	mov    rdi,rdx
  e17eb5:	4c 89 e6             	mov    rsi,r12
  e17eb8:	48 8b 54 24 48       	mov    rdx,QWORD PTR [rsp+0x48]
  e17ebd:	4c 89 e9             	mov    rcx,r13
  e17ec0:	4c 8d 8c 24 90 01 00 	lea    r9,[rsp+0x190]
  e17ec7:	00 
  e17ec8:	e8 b3 0e f3 ff       	call   d48d80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e17ecd:	e9 3e fe ff ff       	jmp    e17d10 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5250>
  e17ed2:	48 89 d7             	mov    rdi,rdx
  e17ed5:	4c 89 e6             	mov    rsi,r12
  e17ed8:	48 8b 54 24 48       	mov    rdx,QWORD PTR [rsp+0x48]
  e17edd:	4c 89 e9             	mov    rcx,r13
  e17ee0:	e8 db ef f2 ff       	call   d46ec0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e17ee5:	e9 26 fe ff ff       	jmp    e17d10 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5250>
  e17eea:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  e17ef0:	48 85 db             	test   rbx,rbx
  e17ef3:	0f 84 67 fc ff ff    	je     e17b60 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x50a0>
  e17ef9:	80 bc 24 08 01 00 00 	cmp    BYTE PTR [rsp+0x108],0x0
  e17f00:	00 
  e17f01:	74 7d                	je     e17f80 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x54c0>
  e17f03:	48 8b 84 24 98 00 00 	mov    rax,QWORD PTR [rsp+0x98]
  e17f0a:	00 
  e17f0b:	48 8b 8c 24 c8 00 00 	mov    rcx,QWORD PTR [rsp+0xc8]
  e17f12:	00 
  e17f13:	31 d2                	xor    edx,edx
  e17f15:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  e17f1c:	00 00 00 00 
  e17f20:	4c 89 de             	mov    rsi,r11
  e17f23:	48 89 c7             	mov    rdi,rax
  e17f26:	49 89 c8             	mov    r8,rcx
  e17f29:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  e17f30:	0f 10 47 f0          	movups xmm0,XMMWORD PTR [rdi-0x10]
  e17f34:	0f 10 0f             	movups xmm1,XMMWORD PTR [rdi]
  e17f37:	0f 28 d0             	movaps xmm2,xmm0
  e17f3a:	0f 16 d1             	movlhps xmm2,xmm1
  e17f3d:	66 0f 15 c1          	unpckhpd xmm0,xmm1
  e17f41:	66 41 0f 2b 10       	movntpd XMMWORD PTR [r8],xmm2
  e17f46:	4d 8d 48 10          	lea    r9,[r8+0x10]
  e17f4a:	66 41 0f 2b 01       	movntpd XMMWORD PTR [r9],xmm0
  e17f4f:	49 83 c0 20          	add    r8,0x20
  e17f53:	4c 01 ff             	add    rdi,r15
  e17f56:	48 ff ce             	dec    rsi
  e17f59:	75 d5                	jne    e17f30 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5470>
  e17f5b:	48 ff c2             	inc    rdx
  e17f5e:	48 03 4c 24 68       	add    rcx,QWORD PTR [rsp+0x68]
  e17f63:	48 83 c0 20          	add    rax,0x20
  e17f67:	48 39 da             	cmp    rdx,rbx
  e17f6a:	75 b4                	jne    e17f20 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5460>
  e17f6c:	e9 ef fb ff ff       	jmp    e17b60 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x50a0>
  e17f71:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  e17f78:	0f 1f 84 00 00 00 00 
  e17f7f:	00 
  e17f80:	48 8b 84 24 d0 00 00 	mov    rax,QWORD PTR [rsp+0xd0]
  e17f87:	00 
  e17f88:	48 8b 8c 24 98 00 00 	mov    rcx,QWORD PTR [rsp+0x98]
  e17f8f:	00 
  e17f90:	31 d2                	xor    edx,edx
  e17f92:	eb 21                	jmp    e17fb5 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x54f5>
  e17f94:	66 66 66 2e 0f 1f 84 	data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  e17f9b:	00 00 00 00 00 
  e17fa0:	48 ff c2             	inc    rdx
  e17fa3:	48 83 c1 20          	add    rcx,0x20
  e17fa7:	48 03 44 24 68       	add    rax,QWORD PTR [rsp+0x68]
  e17fac:	48 39 da             	cmp    rdx,rbx
  e17faf:	0f 84 ab fb ff ff    	je     e17b60 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x50a0>
  e17fb5:	48 89 d7             	mov    rdi,rdx
  e17fb8:	48 c1 e7 05          	shl    rdi,0x5
  e17fbc:	48 03 7c 24 58       	add    rdi,QWORD PTR [rsp+0x58]
  e17fc1:	48 89 d6             	mov    rsi,rdx
  e17fc4:	48 0f af b4 24 b8 00 	imul   rsi,QWORD PTR [rsp+0xb8]
  e17fcb:	00 00 
  e17fcd:	48 03 74 24 40       	add    rsi,QWORD PTR [rsp+0x40]
  e17fd2:	48 c1 e6 04          	shl    rsi,0x4
  e17fd6:	48 03 b4 24 e8 00 00 	add    rsi,QWORD PTR [rsp+0xe8]
  e17fdd:	00 
  e17fde:	49 89 c1             	mov    r9,rax
  e17fe1:	49 89 ca             	mov    r10,rcx
  e17fe4:	45 31 c0             	xor    r8d,r8d
  e17fe7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  e17fee:	00 00 
  e17ff0:	41 0f 10 42 f0       	movups xmm0,XMMWORD PTR [r10-0x10]
  e17ff5:	41 0f 10 0a          	movups xmm1,XMMWORD PTR [r10]
  e17ff9:	0f 28 d0             	movaps xmm2,xmm0
  e17ffc:	0f 16 d1             	movlhps xmm2,xmm1
  e17fff:	66 0f 15 c1          	unpckhpd xmm0,xmm1
  e18003:	41 0f 11 51 d0       	movups XMMWORD PTR [r9-0x30],xmm2
  e18008:	41 0f 11 41 e0       	movups XMMWORD PTR [r9-0x20],xmm0
  e1800d:	49 83 c0 02          	add    r8,0x2
  e18011:	43 0f 10 44 3a f0    	movups xmm0,XMMWORD PTR [r10+r15*1-0x10]
  e18017:	43 0f 10 0c 3a       	movups xmm1,XMMWORD PTR [r10+r15*1]
  e1801c:	0f 28 d0             	movaps xmm2,xmm0
  e1801f:	0f 16 d1             	movlhps xmm2,xmm1
  e18022:	66 0f 15 c1          	unpckhpd xmm0,xmm1
  e18026:	41 0f 11 51 f0       	movups XMMWORD PTR [r9-0x10],xmm2
  e1802b:	41 0f 11 01          	movups XMMWORD PTR [r9],xmm0
  e1802f:	4d 01 ea             	add    r10,r13
  e18032:	49 83 c1 40          	add    r9,0x40
  e18036:	4d 39 c4             	cmp    r12,r8
  e18039:	75 b5                	jne    e17ff0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5530>
  e1803b:	41 f6 c3 01          	test   r11b,0x1
  e1803f:	0f 84 5b ff ff ff    	je     e17fa0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x54e0>
  e18045:	4d 89 c1             	mov    r9,r8
  e18048:	4d 0f af cf          	imul   r9,r15
  e1804c:	42 0f 10 04 0f       	movups xmm0,XMMWORD PTR [rdi+r9*1]
  e18051:	42 0f 10 4c 0f 10    	movups xmm1,XMMWORD PTR [rdi+r9*1+0x10]
  e18057:	0f 28 d0             	movaps xmm2,xmm0
  e1805a:	0f 16 d1             	movlhps xmm2,xmm1
  e1805d:	66 0f 15 c1          	unpckhpd xmm0,xmm1
  e18061:	49 c1 e0 05          	shl    r8,0x5
  e18065:	42 0f 11 14 06       	movups XMMWORD PTR [rsi+r8*1],xmm2
  e1806a:	42 0f 11 44 06 10    	movups XMMWORD PTR [rsi+r8*1+0x10],xmm0
  e18070:	e9 2b ff ff ff       	jmp    e17fa0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x54e0>
  e18075:	89 d0                	mov    eax,edx
  e18077:	31 d2                	xor    edx,edx
  e18079:	f7 f1                	div    ecx
  e1807b:	44 20 a4 24 08 01 00 	and    BYTE PTR [rsp+0x108],r12b
  e18082:	00 
  e18083:	31 f6                	xor    esi,esi
  e18085:	48 85 d2             	test   rdx,rdx
  e18088:	40 0f 95 c6          	setne  sil
  e1808c:	48 01 c6             	add    rsi,rax
  e1808f:	0f 84 00 06 00 00    	je     e18695 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5bd5>
  e18095:	4d 85 f6             	test   r14,r14
  e18098:	0f 84 dc 06 00 00    	je     e1877a <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5cba>
  e1809e:	4b 8d 04 7f          	lea    rax,[r15+r15*2]
  e180a2:	48 8b 54 24 60       	mov    rdx,QWORD PTR [rsp+0x60]
  e180a7:	48 8d 0c c2          	lea    rcx,[rdx+rax*8]
  e180ab:	48 89 4c 24 28       	mov    QWORD PTR [rsp+0x28],rcx
  e180b0:	48 8b 8c 24 58 01 00 	mov    rcx,QWORD PTR [rsp+0x158]
  e180b7:	00 
  e180b8:	48 8b b9 90 00 00 00 	mov    rdi,QWORD PTR [rcx+0x90]
  e180bf:	48 8d 0c 1b          	lea    rcx,[rbx+rbx*1]
  e180c3:	48 89 8c 24 a0 00 00 	mov    QWORD PTR [rsp+0xa0],rcx
  e180ca:	00 
  e180cb:	48 89 f9             	mov    rcx,rdi
  e180ce:	48 c1 e1 04          	shl    rcx,0x4
  e180d2:	48 89 8c 24 28 01 00 	mov    QWORD PTR [rsp+0x128],rcx
  e180d9:	00 
  e180da:	4c 89 c1             	mov    rcx,r8
  e180dd:	48 83 e1 fe          	and    rcx,0xfffffffffffffffe
  e180e1:	48 89 4c 24 30       	mov    QWORD PTR [rsp+0x30],rcx
  e180e6:	48 8d 04 c2          	lea    rax,[rdx+rax*8]
  e180ea:	48 83 c0 20          	add    rax,0x20
  e180ee:	48 89 84 24 88 00 00 	mov    QWORD PTR [rsp+0x88],rax
  e180f5:	00 
  e180f6:	49 8d 46 ff          	lea    rax,[r14-0x1]
  e180fa:	48 89 84 24 00 01 00 	mov    QWORD PTR [rsp+0x100],rax
  e18101:	00 
  e18102:	48 8b 8c 24 b8 02 00 	mov    rcx,QWORD PTR [rsp+0x2b8]
  e18109:	00 
  e1810a:	48 c1 e1 05          	shl    rcx,0x5
  e1810e:	48 03 8c 24 88 01 00 	add    rcx,QWORD PTR [rsp+0x188]
  e18115:	00 
  e18116:	48 8b 84 24 c0 00 00 	mov    rax,QWORD PTR [rsp+0xc0]
  e1811d:	00 
  e1811e:	48 01 c8             	add    rax,rcx
  e18121:	48 83 c0 10          	add    rax,0x10
  e18125:	48 89 84 24 98 00 00 	mov    QWORD PTR [rsp+0x98],rax
  e1812c:	00 
  e1812d:	48 89 bc 24 b0 00 00 	mov    QWORD PTR [rsp+0xb0],rdi
  e18134:	00 
  e18135:	48 c1 e7 05          	shl    rdi,0x5
  e18139:	48 89 bc 24 20 01 00 	mov    QWORD PTR [rsp+0x120],rdi
  e18140:	00 
  e18141:	48 8b 84 24 e8 00 00 	mov    rax,QWORD PTR [rsp+0xe8]
  e18148:	00 
  e18149:	48 8d 48 30          	lea    rcx,[rax+0x30]
  e1814d:	48 89 8c 24 d0 00 00 	mov    QWORD PTR [rsp+0xd0],rcx
  e18154:	00 
  e18155:	49 c1 e0 05          	shl    r8,0x5
  e18159:	4c 89 84 24 f8 00 00 	mov    QWORD PTR [rsp+0xf8],r8
  e18160:	00 
  e18161:	48 8b 8c 24 b8 00 00 	mov    rcx,QWORD PTR [rsp+0xb8]
  e18168:	00 
  e18169:	48 c1 e1 04          	shl    rcx,0x4
  e1816d:	48 89 4c 24 68       	mov    QWORD PTR [rsp+0x68],rcx
  e18172:	31 c9                	xor    ecx,ecx
  e18174:	48 89 84 24 c8 00 00 	mov    QWORD PTR [rsp+0xc8],rax
  e1817b:	00 
  e1817c:	eb 33                	jmp    e181b1 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x56f1>
  e1817e:	66 90                	xchg   ax,ax
  e18180:	48 8b 84 24 f8 00 00 	mov    rax,QWORD PTR [rsp+0xf8]
  e18187:	00 
  e18188:	48 01 84 24 d0 00 00 	add    QWORD PTR [rsp+0xd0],rax
  e1818f:	00 
  e18190:	48 01 84 24 c8 00 00 	add    QWORD PTR [rsp+0xc8],rax
  e18197:	00 
  e18198:	48 8b b4 24 10 01 00 	mov    rsi,QWORD PTR [rsp+0x110]
  e1819f:	00 
  e181a0:	48 85 f6             	test   rsi,rsi
  e181a3:	48 8b 8c 24 d8 00 00 	mov    rcx,QWORD PTR [rsp+0xd8]
  e181aa:	00 
  e181ab:	0f 84 e4 04 00 00    	je     e18695 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5bd5>
  e181b1:	48 8b 84 24 f0 00 00 	mov    rax,QWORD PTR [rsp+0xf0]
  e181b8:	00 
  e181b9:	48 89 4c 24 40       	mov    QWORD PTR [rsp+0x40],rcx
  e181be:	48 01 c8             	add    rax,rcx
  e181c1:	48 89 84 24 d8 00 00 	mov    QWORD PTR [rsp+0xd8],rax
  e181c8:	00 
  e181c9:	48 ff ce             	dec    rsi
  e181cc:	48 89 b4 24 10 01 00 	mov    QWORD PTR [rsp+0x110],rsi
  e181d3:	00 
  e181d4:	31 d2                	xor    edx,edx
  e181d6:	eb 43                	jmp    e1821b <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x575b>
  e181d8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  e181df:	00 
  e181e0:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  e181e5:	48 ff c2             	inc    rdx
  e181e8:	4c 8b 9c 24 e0 00 00 	mov    r11,QWORD PTR [rsp+0xe0]
  e181ef:	00 
  e181f0:	4c 39 da             	cmp    rdx,r11
  e181f3:	48 8b 5c 24 48       	mov    rbx,QWORD PTR [rsp+0x48]
  e181f8:	4c 8b b4 24 a8 00 00 	mov    r14,QWORD PTR [rsp+0xa8]
  e181ff:	00 
  e18200:	4c 8b bc 24 28 01 00 	mov    r15,QWORD PTR [rsp+0x128]
  e18207:	00 
  e18208:	4c 8b 64 24 30       	mov    r12,QWORD PTR [rsp+0x30]
  e1820d:	4c 8b ac 24 20 01 00 	mov    r13,QWORD PTR [rsp+0x120]
  e18214:	00 
  e18215:	0f 84 f5 02 00 00    	je     e18510 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5a50>
  e1821b:	48 8d 04 12          	lea    rax,[rdx+rdx*1]
  e1821f:	48 0f af 84 24 b0 00 	imul   rax,QWORD PTR [rsp+0xb0]
  e18226:	00 00 
  e18228:	48 8b 4c 24 58       	mov    rcx,QWORD PTR [rsp+0x58]
  e1822d:	48 8d 04 c1          	lea    rax,[rcx+rax*8]
  e18231:	48 89 44 24 50       	mov    QWORD PTR [rsp+0x50],rax
  e18236:	48 8b 44 24 40       	mov    rax,QWORD PTR [rsp+0x40]
  e1823b:	48 8d 04 50          	lea    rax,[rax+rdx*2]
  e1823f:	48 0f af 84 24 a0 00 	imul   rax,QWORD PTR [rsp+0xa0]
  e18246:	00 00 
  e18248:	48 8b 8c 24 c0 00 00 	mov    rcx,QWORD PTR [rsp+0xc0]
  e1824f:	00 
  e18250:	48 8d 3c c1          	lea    rdi,[rcx+rax*8]
  e18254:	48 8b 44 24 28       	mov    rax,QWORD PTR [rsp+0x28]
  e18259:	48 8b 00             	mov    rax,QWORD PTR [rax]
  e1825c:	48 83 f8 02          	cmp    rax,0x2
  e18260:	48 89 54 24 20       	mov    QWORD PTR [rsp+0x20],rdx
  e18265:	74 59                	je     e182c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5800>
  e18267:	48 83 f8 04          	cmp    rax,0x4
  e1826b:	74 33                	je     e182a0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x57e0>
  e1826d:	48 83 f8 08          	cmp    rax,0x8
  e18271:	0f 85 6b 04 00 00    	jne    e186e2 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5c22>
  e18277:	48 8b 74 24 50       	mov    rsi,QWORD PTR [rsp+0x50]
  e1827c:	48 89 da             	mov    rdx,rbx
  e1827f:	0f 28 44 24 70       	movaps xmm0,XMMWORD PTR [rsp+0x70]
  e18284:	e8 37 76 fe ff       	call   dff8c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e18289:	49 83 fe 02          	cmp    r14,0x2
  e1828d:	0f 82 4d ff ff ff    	jb     e181e0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5720>
  e18293:	eb 47                	jmp    e182dc <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x581c>
  e18295:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  e1829c:	00 00 00 00 
  e182a0:	48 8b 74 24 50       	mov    rsi,QWORD PTR [rsp+0x50]
  e182a5:	48 89 da             	mov    rdx,rbx
  e182a8:	0f 28 44 24 70       	movaps xmm0,XMMWORD PTR [rsp+0x70]
  e182ad:	e8 0e 6a fe ff       	call   dfecc0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e182b2:	49 83 fe 02          	cmp    r14,0x2
  e182b6:	0f 82 24 ff ff ff    	jb     e181e0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5720>
  e182bc:	eb 1e                	jmp    e182dc <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x581c>
  e182be:	66 90                	xchg   ax,ax
  e182c0:	48 8b 74 24 50       	mov    rsi,QWORD PTR [rsp+0x50]
  e182c5:	48 89 da             	mov    rdx,rbx
  e182c8:	0f 28 44 24 70       	movaps xmm0,XMMWORD PTR [rsp+0x70]
  e182cd:	e8 ae 88 ff ff       	call   e10b80 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::first>
  e182d2:	49 83 fe 02          	cmp    r14,0x2
  e182d6:	0f 82 04 ff ff ff    	jb     e181e0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5720>
  e182dc:	48 8b 44 24 28       	mov    rax,QWORD PTR [rsp+0x28]
  e182e1:	4c 8b 28             	mov    r13,QWORD PTR [rax]
  e182e4:	4c 8b bc 24 00 01 00 	mov    r15,QWORD PTR [rsp+0x100]
  e182eb:	00 
  e182ec:	4c 8b b4 24 88 00 00 	mov    r14,QWORD PTR [rsp+0x88]
  e182f3:	00 
  e182f4:	4c 8b 64 24 50       	mov    r12,QWORD PTR [rsp+0x50]
  e182f9:	48 8b 84 24 18 01 00 	mov    rax,QWORD PTR [rsp+0x118]
  e18300:	00 
  e18301:	eb 46                	jmp    e18349 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5889>
  e18303:	0f 28 44 24 70       	movaps xmm0,XMMWORD PTR [rsp+0x70]
  e18308:	0f 29 84 24 90 01 00 	movaps XMMWORD PTR [rsp+0x190],xmm0
  e1830f:	00 
  e18310:	48 89 d7             	mov    rdi,rdx
  e18313:	4c 89 e6             	mov    rsi,r12
  e18316:	48 8b 54 24 48       	mov    rdx,QWORD PTR [rsp+0x48]
  e1831b:	4c 89 e9             	mov    rcx,r13
  e1831e:	4c 8d 8c 24 90 01 00 	lea    r9,[rsp+0x190]
  e18325:	00 
  e18326:	e8 55 5b f3 ff       	call   d4de80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e1832b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  e18330:	4c 0f af eb          	imul   r13,rbx
  e18334:	49 83 c6 18          	add    r14,0x18
  e18338:	49 ff cf             	dec    r15
  e1833b:	48 8b 84 24 90 00 00 	mov    rax,QWORD PTR [rsp+0x90]
  e18342:	00 
  e18343:	0f 84 97 fe ff ff    	je     e181e0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5720>
  e18349:	4c 89 e2             	mov    rdx,r12
  e1834c:	49 8b 5e f8          	mov    rbx,QWORD PTR [r14-0x8]
  e18350:	49 83 ff 01          	cmp    r15,0x1
  e18354:	49 89 c4             	mov    r12,rax
  e18357:	4c 0f 44 64 24 50    	cmove  r12,QWORD PTR [rsp+0x50]
  e1835d:	4d 8b 06             	mov    r8,QWORD PTR [r14]
  e18360:	4c 03 44 24 60       	add    r8,QWORD PTR [rsp+0x60]
  e18365:	48 89 9c 24 30 01 00 	mov    QWORD PTR [rsp+0x130],rbx
  e1836c:	00 
  e1836d:	48 8d 43 fe          	lea    rax,[rbx-0x2]
  e18371:	48 83 f8 0e          	cmp    rax,0xe
  e18375:	0f 87 2d 03 00 00    	ja     e186a8 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5be8>
  e1837b:	48 8d 0d ce bb 28 ff 	lea    rcx,[rip+0xffffffffff28bbce]        # a3f50 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x31400>
  e18382:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  e18386:	48 01 c8             	add    rax,rcx
  e18389:	48 89 94 24 90 00 00 	mov    QWORD PTR [rsp+0x90],rdx
  e18390:	00 
  e18391:	ff e0                	jmp    rax
  e18393:	48 89 d7             	mov    rdi,rdx
  e18396:	4c 89 e6             	mov    rsi,r12
  e18399:	48 8b 54 24 48       	mov    rdx,QWORD PTR [rsp+0x48]
  e1839e:	4c 89 e9             	mov    rcx,r13
  e183a1:	e8 1a c3 f2 ff       	call   d446c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e183a6:	eb 88                	jmp    e18330 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5870>
  e183a8:	48 89 d7             	mov    rdi,rdx
  e183ab:	4c 89 e6             	mov    rsi,r12
  e183ae:	48 8b 54 24 48       	mov    rdx,QWORD PTR [rsp+0x48]
  e183b3:	4c 89 e9             	mov    rcx,r13
  e183b6:	e8 c5 17 f3 ff       	call   d49b80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e183bb:	e9 70 ff ff ff       	jmp    e18330 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5870>
  e183c0:	48 89 d7             	mov    rdi,rdx
  e183c3:	4c 89 e6             	mov    rsi,r12
  e183c6:	48 8b 54 24 48       	mov    rdx,QWORD PTR [rsp+0x48]
  e183cb:	4c 89 e9             	mov    rcx,r13
  e183ce:	e8 2d cd f2 ff       	call   d45100 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e183d3:	e9 58 ff ff ff       	jmp    e18330 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5870>
  e183d8:	48 89 d7             	mov    rdi,rdx
  e183db:	4c 89 e6             	mov    rsi,r12
  e183de:	48 8b 54 24 48       	mov    rdx,QWORD PTR [rsp+0x48]
  e183e3:	4c 89 e9             	mov    rcx,r13
  e183e6:	e8 55 30 f3 ff       	call   d4b440 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e183eb:	e9 40 ff ff ff       	jmp    e18330 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5870>
  e183f0:	48 89 d7             	mov    rdi,rdx
  e183f3:	4c 89 e6             	mov    rsi,r12
  e183f6:	48 8b 54 24 48       	mov    rdx,QWORD PTR [rsp+0x48]
  e183fb:	4c 89 e9             	mov    rcx,r13
  e183fe:	e8 bd f6 f2 ff       	call   d47ac0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e18403:	e9 28 ff ff ff       	jmp    e18330 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5870>
  e18408:	48 89 d7             	mov    rdi,rdx
  e1840b:	4c 89 e6             	mov    rsi,r12
  e1840e:	48 8b 54 24 48       	mov    rdx,QWORD PTR [rsp+0x48]
  e18413:	4c 89 e9             	mov    rcx,r13
  e18416:	e8 65 c6 f2 ff       	call   d44a80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e1841b:	e9 10 ff ff ff       	jmp    e18330 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5870>
  e18420:	48 89 d7             	mov    rdi,rdx
  e18423:	4c 89 e6             	mov    rsi,r12
  e18426:	48 8b 54 24 48       	mov    rdx,QWORD PTR [rsp+0x48]
  e1842b:	4c 89 e9             	mov    rcx,r13
  e1842e:	e8 cd c8 f2 ff       	call   d44d00 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e18433:	e9 f8 fe ff ff       	jmp    e18330 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5870>
  e18438:	48 89 d7             	mov    rdi,rdx
  e1843b:	4c 89 e6             	mov    rsi,r12
  e1843e:	48 8b 54 24 48       	mov    rdx,QWORD PTR [rsp+0x48]
  e18443:	4c 89 e9             	mov    rcx,r13
  e18446:	e8 f5 df f2 ff       	call   d46440 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e1844b:	e9 e0 fe ff ff       	jmp    e18330 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5870>
  e18450:	48 89 d7             	mov    rdi,rdx
  e18453:	4c 89 e6             	mov    rsi,r12
  e18456:	48 8b 54 24 48       	mov    rdx,QWORD PTR [rsp+0x48]
  e1845b:	4c 89 e9             	mov    rcx,r13
  e1845e:	e8 dd c3 f2 ff       	call   d44840 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e18463:	e9 c8 fe ff ff       	jmp    e18330 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5870>
  e18468:	48 89 d7             	mov    rdi,rdx
  e1846b:	4c 89 e6             	mov    rsi,r12
  e1846e:	48 8b 54 24 48       	mov    rdx,QWORD PTR [rsp+0x48]
  e18473:	4c 89 e9             	mov    rcx,r13
  e18476:	e8 45 d1 f2 ff       	call   d455c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e1847b:	e9 b0 fe ff ff       	jmp    e18330 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5870>
  e18480:	48 89 d7             	mov    rdi,rdx
  e18483:	4c 89 e6             	mov    rsi,r12
  e18486:	48 8b 54 24 48       	mov    rdx,QWORD PTR [rsp+0x48]
  e1848b:	4c 89 e9             	mov    rcx,r13
  e1848e:	e8 6d 44 f3 ff       	call   d4c900 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e18493:	e9 98 fe ff ff       	jmp    e18330 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5870>
  e18498:	0f 28 44 24 70       	movaps xmm0,XMMWORD PTR [rsp+0x70]
  e1849d:	0f 29 84 24 90 01 00 	movaps XMMWORD PTR [rsp+0x190],xmm0
  e184a4:	00 
  e184a5:	48 89 d7             	mov    rdi,rdx
  e184a8:	4c 89 e6             	mov    rsi,r12
  e184ab:	48 8b 54 24 48       	mov    rdx,QWORD PTR [rsp+0x48]
  e184b0:	4c 89 e9             	mov    rcx,r13
  e184b3:	4c 8d 8c 24 90 01 00 	lea    r9,[rsp+0x190]
  e184ba:	00 
  e184bb:	e8 80 d8 f2 ff       	call   d45d40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e184c0:	e9 6b fe ff ff       	jmp    e18330 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5870>
  e184c5:	0f 28 44 24 70       	movaps xmm0,XMMWORD PTR [rsp+0x70]
  e184ca:	0f 29 84 24 90 01 00 	movaps XMMWORD PTR [rsp+0x190],xmm0
  e184d1:	00 
  e184d2:	48 89 d7             	mov    rdi,rdx
  e184d5:	4c 89 e6             	mov    rsi,r12
  e184d8:	48 8b 54 24 48       	mov    rdx,QWORD PTR [rsp+0x48]
  e184dd:	4c 89 e9             	mov    rcx,r13
  e184e0:	4c 8d 8c 24 90 01 00 	lea    r9,[rsp+0x190]
  e184e7:	00 
  e184e8:	e8 93 08 f3 ff       	call   d48d80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e184ed:	e9 3e fe ff ff       	jmp    e18330 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5870>
  e184f2:	48 89 d7             	mov    rdi,rdx
  e184f5:	4c 89 e6             	mov    rsi,r12
  e184f8:	48 8b 54 24 48       	mov    rdx,QWORD PTR [rsp+0x48]
  e184fd:	4c 89 e9             	mov    rcx,r13
  e18500:	e8 bb e9 f2 ff       	call   d46ec0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F64x2>::pass>
  e18505:	e9 26 fe ff ff       	jmp    e18330 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5870>
  e1850a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  e18510:	48 85 db             	test   rbx,rbx
  e18513:	0f 84 67 fc ff ff    	je     e18180 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x56c0>
  e18519:	80 bc 24 08 01 00 00 	cmp    BYTE PTR [rsp+0x108],0x0
  e18520:	00 
  e18521:	74 7d                	je     e185a0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5ae0>
  e18523:	48 8b 84 24 98 00 00 	mov    rax,QWORD PTR [rsp+0x98]
  e1852a:	00 
  e1852b:	48 8b 8c 24 c8 00 00 	mov    rcx,QWORD PTR [rsp+0xc8]
  e18532:	00 
  e18533:	31 d2                	xor    edx,edx
  e18535:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  e1853c:	00 00 00 00 
  e18540:	4c 89 de             	mov    rsi,r11
  e18543:	48 89 c7             	mov    rdi,rax
  e18546:	49 89 c8             	mov    r8,rcx
  e18549:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  e18550:	0f 10 47 f0          	movups xmm0,XMMWORD PTR [rdi-0x10]
  e18554:	0f 10 0f             	movups xmm1,XMMWORD PTR [rdi]
  e18557:	0f 28 d1             	movaps xmm2,xmm1
  e1855a:	0f 16 d0             	movlhps xmm2,xmm0
  e1855d:	66 0f 15 c8          	unpckhpd xmm1,xmm0
  e18561:	66 41 0f 2b 10       	movntpd XMMWORD PTR [r8],xmm2
  e18566:	4d 8d 48 10          	lea    r9,[r8+0x10]
  e1856a:	66 41 0f 2b 09       	movntpd XMMWORD PTR [r9],xmm1
  e1856f:	49 83 c0 20          	add    r8,0x20
  e18573:	4c 01 ff             	add    rdi,r15
  e18576:	48 ff ce             	dec    rsi
  e18579:	75 d5                	jne    e18550 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5a90>
  e1857b:	48 ff c2             	inc    rdx
  e1857e:	48 03 4c 24 68       	add    rcx,QWORD PTR [rsp+0x68]
  e18583:	48 83 c0 20          	add    rax,0x20
  e18587:	48 39 da             	cmp    rdx,rbx
  e1858a:	75 b4                	jne    e18540 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5a80>
  e1858c:	e9 ef fb ff ff       	jmp    e18180 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x56c0>
  e18591:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  e18598:	0f 1f 84 00 00 00 00 
  e1859f:	00 
  e185a0:	48 8b 84 24 d0 00 00 	mov    rax,QWORD PTR [rsp+0xd0]
  e185a7:	00 
  e185a8:	48 8b 8c 24 98 00 00 	mov    rcx,QWORD PTR [rsp+0x98]
  e185af:	00 
  e185b0:	31 d2                	xor    edx,edx
  e185b2:	eb 21                	jmp    e185d5 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5b15>
  e185b4:	66 66 66 2e 0f 1f 84 	data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  e185bb:	00 00 00 00 00 
  e185c0:	48 ff c2             	inc    rdx
  e185c3:	48 83 c1 20          	add    rcx,0x20
  e185c7:	48 03 44 24 68       	add    rax,QWORD PTR [rsp+0x68]
  e185cc:	48 39 da             	cmp    rdx,rbx
  e185cf:	0f 84 ab fb ff ff    	je     e18180 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x56c0>
  e185d5:	48 89 d7             	mov    rdi,rdx
  e185d8:	48 c1 e7 05          	shl    rdi,0x5
  e185dc:	48 03 7c 24 58       	add    rdi,QWORD PTR [rsp+0x58]
  e185e1:	48 89 d6             	mov    rsi,rdx
  e185e4:	48 0f af b4 24 b8 00 	imul   rsi,QWORD PTR [rsp+0xb8]
  e185eb:	00 00 
  e185ed:	48 03 74 24 40       	add    rsi,QWORD PTR [rsp+0x40]
  e185f2:	48 c1 e6 04          	shl    rsi,0x4
  e185f6:	48 03 b4 24 e8 00 00 	add    rsi,QWORD PTR [rsp+0xe8]
  e185fd:	00 
  e185fe:	49 89 c1             	mov    r9,rax
  e18601:	49 89 ca             	mov    r10,rcx
  e18604:	45 31 c0             	xor    r8d,r8d
  e18607:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  e1860e:	00 00 
  e18610:	41 0f 10 42 f0       	movups xmm0,XMMWORD PTR [r10-0x10]
  e18615:	41 0f 10 0a          	movups xmm1,XMMWORD PTR [r10]
  e18619:	0f 28 d1             	movaps xmm2,xmm1
  e1861c:	0f 16 d0             	movlhps xmm2,xmm0
  e1861f:	66 0f 15 c8          	unpckhpd xmm1,xmm0
  e18623:	41 0f 11 51 d0       	movups XMMWORD PTR [r9-0x30],xmm2
  e18628:	41 0f 11 49 e0       	movups XMMWORD PTR [r9-0x20],xmm1
  e1862d:	49 83 c0 02          	add    r8,0x2
  e18631:	43 0f 10 44 3a f0    	movups xmm0,XMMWORD PTR [r10+r15*1-0x10]
  e18637:	43 0f 10 0c 3a       	movups xmm1,XMMWORD PTR [r10+r15*1]
  e1863c:	0f 28 d1             	movaps xmm2,xmm1
  e1863f:	0f 16 d0             	movlhps xmm2,xmm0
  e18642:	66 0f 15 c8          	unpckhpd xmm1,xmm0
  e18646:	41 0f 11 51 f0       	movups XMMWORD PTR [r9-0x10],xmm2
  e1864b:	41 0f 11 09          	movups XMMWORD PTR [r9],xmm1
  e1864f:	4d 01 ea             	add    r10,r13
  e18652:	49 83 c1 40          	add    r9,0x40
  e18656:	4d 39 c4             	cmp    r12,r8
  e18659:	75 b5                	jne    e18610 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5b50>
  e1865b:	41 f6 c3 01          	test   r11b,0x1
  e1865f:	0f 84 5b ff ff ff    	je     e185c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5b00>
  e18665:	4d 89 c1             	mov    r9,r8
  e18668:	4d 0f af cf          	imul   r9,r15
  e1866c:	42 0f 10 04 0f       	movups xmm0,XMMWORD PTR [rdi+r9*1]
  e18671:	42 0f 10 4c 0f 10    	movups xmm1,XMMWORD PTR [rdi+r9*1+0x10]
  e18677:	0f 28 d1             	movaps xmm2,xmm1
  e1867a:	0f 16 d0             	movlhps xmm2,xmm0
  e1867d:	66 0f 15 c8          	unpckhpd xmm1,xmm0
  e18681:	49 c1 e0 05          	shl    r8,0x5
  e18685:	42 0f 11 14 06       	movups XMMWORD PTR [rsi+r8*1],xmm2
  e1868a:	42 0f 11 4c 06 10    	movups XMMWORD PTR [rsi+r8*1+0x10],xmm1
  e18690:	e9 2b ff ff ff       	jmp    e185c0 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x5b00>
  e18695:	80 bc 24 08 01 00 00 	cmp    BYTE PTR [rsp+0x108],0x0
  e1869c:	00 
  e1869d:	0f 85 bc e5 ff ff    	jne    e16c5f <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x419f>
  e186a3:	e9 ba e5 ff ff       	jmp    e16c62 <<fastfft::isa::x86::F64x2 as fastfft::engine::fourstep::PanelVector>::execute+0x41a2>
  e186a8:	48 8d 84 24 30 01 00 	lea    rax,[rsp+0x130]
  e186af:	00 
  e186b0:	48 89 84 24 90 01 00 	mov    QWORD PTR [rsp+0x190],rax
  e186b7:	00 
  e186b8:	48 8d 05 01 7f e0 ff 	lea    rax,[rip+0xffffffffffe07f01]        # c205c0 <<u64 as core::fmt::Display>::fmt>
  e186bf:	48 89 84 24 98 01 00 	mov    QWORD PTR [rsp+0x198],rax
  e186c6:	00 
  e186c7:	48 8d 3d ed 59 29 ff 	lea    rdi,[rip+0xffffffffff2959ed]        # ae0bb <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x3b56b>
  e186ce:	48 8d 15 5b 51 43 00 	lea    rdx,[rip+0x43515b]        # 124d830 <__frame_dummy_init_array_entry+0x31018>
  e186d5:	48 8d b4 24 90 01 00 	lea    rsi,[rsp+0x190]
  e186dc:	00 
  e186dd:	e8 5e d6 df ff       	call   c15d40 <core::panicking::panic_fmt>
  e186e2:	48 8d 3d bf de 2a ff 	lea    rdi,[rip+0xffffffffff2adebf]        # c65a8 <crc32fast::table::CRC32_TABLE+0x8924>
  e186e9:	48 8d 15 f0 4f 43 00 	lea    rdx,[rip+0x434ff0]        # 124d6e0 <__frame_dummy_init_array_entry+0x30ec8>
  e186f0:	be 81 00 00 00       	mov    esi,0x81
  e186f5:	e8 46 d6 df ff       	call   c15d40 <core::panicking::panic_fmt>
  e186fa:	48 8d 3d e7 de 2a ff 	lea    rdi,[rip+0xffffffffff2adee7]        # c65e8 <crc32fast::table::CRC32_TABLE+0x8964>
  e18701:	48 8d 15 20 50 43 00 	lea    rdx,[rip+0x435020]        # 124d728 <__frame_dummy_init_array_entry+0x30f10>
  e18708:	be 87 00 00 00       	mov    esi,0x87
  e1870d:	e8 2e d6 df ff       	call   c15d40 <core::panicking::panic_fmt>
  e18712:	48 8d 3d 61 df 2a ff 	lea    rdi,[rip+0xffffffffff2adf61]        # c667a <crc32fast::table::CRC32_TABLE+0x89f6>
  e18719:	48 8d 15 80 50 43 00 	lea    rdx,[rip+0x435080]        # 124d7a0 <__frame_dummy_init_array_entry+0x30f88>
  e18720:	be 83 00 00 00       	mov    esi,0x83
  e18725:	e8 16 d6 df ff       	call   c15d40 <core::panicking::panic_fmt>
  e1872a:	48 8d 3d c8 fc 2a ff 	lea    rdi,[rip+0xffffffffff2afcc8]        # c83f9 <oxifft::dft::codelets::simd::large_sizes::bit_reverse_permute_4096::BIT_REV_TABLE+0x100>
  e18731:	48 8d 15 a0 61 43 00 	lea    rdx,[rip+0x4361a0]        # 124e8d8 <__frame_dummy_init_array_entry+0x320c0>
  e18738:	be 1b 00 00 00       	mov    esi,0x1b
  e1873d:	e8 be f4 df ff       	call   c17c00 <core::panicking::panic>
  e18742:	48 8d 3d c7 4f 43 00 	lea    rdi,[rip+0x434fc7]        # 124d710 <__frame_dummy_init_array_entry+0x30ef8>
  e18749:	e8 32 19 e0 ff       	call   c1a080 <core::panicking::panic_const::panic_const_div_by_zero>
  e1874e:	48 8d 15 33 50 43 00 	lea    rdx,[rip+0x435033]        # 124d788 <__frame_dummy_init_array_entry+0x30f70>
  e18755:	31 ff                	xor    edi,edi
  e18757:	31 f6                	xor    esi,esi
  e18759:	e8 e2 f6 df ff       	call   c17e40 <core::panicking::panic_bounds_check>
  e1875e:	48 8d 3d 4b 4f 43 00 	lea    rdi,[rip+0x434f4b]        # 124d6b0 <__frame_dummy_init_array_entry+0x30e98>
  e18765:	e8 16 19 e0 ff       	call   c1a080 <core::panicking::panic_const::panic_const_div_by_zero>
  e1876a:	48 8d 15 87 4f 43 00 	lea    rdx,[rip+0x434f87]        # 124d6f8 <__frame_dummy_init_array_entry+0x30ee0>
  e18771:	31 ff                	xor    edi,edi
  e18773:	31 f6                	xor    esi,esi
  e18775:	e8 c6 f6 df ff       	call   c17e40 <core::panicking::panic_bounds_check>
  e1877a:	48 8d 15 47 4f 43 00 	lea    rdx,[rip+0x434f47]        # 124d6c8 <__frame_dummy_init_array_entry+0x30eb0>
  e18781:	31 ff                	xor    edi,edi
  e18783:	31 f6                	xor    esi,esi
  e18785:	e8 b6 f6 df ff       	call   c17e40 <core::panicking::panic_bounds_check>
