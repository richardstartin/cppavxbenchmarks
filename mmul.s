	.file	"mmul.cpp"
	.section	.text$_ZNKSt5ctypeIcE8do_widenEc,"x"
	.linkonce discard
	.align 2
	.p2align 4,,15
	.globl	_ZNKSt5ctypeIcE8do_widenEc
	.def	_ZNKSt5ctypeIcE8do_widenEc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt5ctypeIcE8do_widenEc
_ZNKSt5ctypeIcE8do_widenEc:
.LFB1324:
	.seh_endprologue
	movl	%edx, %eax
	ret
	.seh_endproc
	.text
	.p2align 4,,15
	.def	_ZL10mmul_saxpyiPKfS0_Pf;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL10mmul_saxpyiPKfS0_Pf
_ZL10mmul_saxpyiPKfS0_Pf:
.LFB7831:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$168, %rsp
	.seh_stackalloc	168
	.seh_endprologue
	movl	%ecx, %r15d
	movq	%rdx, 248(%rsp)
	movq	%r8, %r12
	movq	%r9, %r14
	testl	%ecx, %ecx
	jle	.L108
	movslq	%ecx, %rax
	leal	-1(%r15), %ebx
	subq	%r9, %rdx
	movq	%r9, %r13
	leaq	32(%r9), %rcx
	leaq	4(%rdx,%rbx,4), %rdx
	movl	%ebx, 52(%rsp)
	movq	%rax, 144(%rsp)
	salq	$2, %rax
	leaq	4(,%rbx,4), %rdi
	movq	%rax, (%rsp)
	movq	%rcx, 8(%rsp)
	movq	%rdi, 80(%rsp)
	movl	$3, 140(%rsp)
	movl	$2, 136(%rsp)
	movl	$1, 132(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 112(%rsp)
	movl	$0, 128(%rsp)
	movq	%rdx, 152(%rsp)
	.p2align 4,,10
.L13:
	movl	132(%rsp), %r8d
	movq	%r13, %rcx
	movq	152(%rsp), %r9
	shrq	$2, %rcx
	movslq	136(%rsp), %rdx
	movq	120(%rsp), %rsi
	movslq	%r8d, %rax
	negq	%rcx
	leal	-1(%r8), %edi
	addq	%r13, %r9
	leaq	(%r14,%rax,4), %rbx
	movl	%ecx, %r10d
	leal	3(%r8), %eax
	movslq	140(%rsp), %rcx
	andl	$7, %r10d
	cltq
	movq	%rbx, 56(%rsp)
	movq	248(%rsp), %rbp
	leal	7(%r10), %r11d
	leaq	(%r14,%rax,4), %rbx
	movl	%r10d, 32(%rsp)
	movl	%r10d, %r10d
	leal	4(%r8), %eax
	movl	%r11d, 28(%rsp)
	leaq	(%r14,%rcx,4), %r11
	movl	%r15d, %ecx
	cltq
	subl	%r10d, %ecx
	movq	%r9, 16(%rsp)
	leaq	(%r14,%rdx,4), %r9
	leaq	(%r14,%rax,4), %rdx
	leal	5(%r8), %eax
	movq	%r11, 72(%rsp)
	movl	%ecx, %r11d
	cltq
	shrl	$3, %r11d
	movq	%rbx, 88(%rsp)
	movq	112(%rsp), %rbx
	leaq	(%r14,%rax,4), %r8
	movl	%r11d, 24(%rsp)
	addq	%rsi, %rbp
	leaq	0(,%r10,4), %r11
	movq	%r8, 104(%rsp)
	movq	%rdx, 96(%rsp)
	leaq	(%r10,%rbx), %rdx
	movl	%ecx, 36(%rsp)
	andl	$-8, %ecx
	leaq	(%r14,%rdx,4), %rbx
	movq	%r11, 40(%rsp)
	addq	%rsi, %r11
	movq	%r9, 64(%rsp)
	addq	%r14, %r11
	movq	%r12, %r9
	movl	%ecx, 48(%rsp)
	xorl	%ecx, %ecx
	.p2align 4,,10
.L12:
	movq	%r9, %rdx
	leaq	32(%r9), %rsi
	vmovss	0(%rbp), %xmm0
	subq	%r12, %rdx
	cmpq	%rsi, %r13
	setnb	%r8b
	cmpq	8(%rsp), %r9
	setnb	%al
	orb	%al, %r8b
	je	.L14
	cmpl	$10, %r15d
	jbe	.L14
	movl	52(%rsp), %r10d
	cmpl	%r10d, 28(%rsp)
	ja	.L15
	movl	32(%rsp), %esi
	testl	%esi, %esi
	je	.L16
	vmovss	(%r9), %xmm1
	vfmadd213ss	0(%r13), %xmm0, %xmm1
	vmovss	%xmm1, 0(%r13)
	cmpl	$1, %esi
	je	.L17
	movq	56(%rsp), %r10
	leal	1(%rcx), %eax
	cltq
	vmovss	(%r12,%rax,4), %xmm2
	vfmadd213ss	(%r10), %xmm0, %xmm2
	vmovss	%xmm2, (%r10)
	cmpl	$2, %esi
	je	.L18
	movq	64(%rsp), %r8
	leal	2(%rcx), %eax
	cltq
	vmovss	(%r12,%rax,4), %xmm3
	vfmadd213ss	(%r8), %xmm0, %xmm3
	vmovss	%xmm3, (%r8)
	cmpl	$3, %esi
	je	.L19
	movq	72(%rsp), %r10
	leal	3(%rcx), %eax
	cltq
	vmovss	(%r12,%rax,4), %xmm4
	vfmadd213ss	(%r10), %xmm0, %xmm4
	vmovss	%xmm4, (%r10)
	cmpl	$4, %esi
	je	.L20
	movq	88(%rsp), %r8
	leal	4(%rcx), %eax
	cltq
	vmovss	(%r12,%rax,4), %xmm5
	vfmadd213ss	(%r8), %xmm0, %xmm5
	vmovss	%xmm5, (%r8)
	cmpl	$5, %esi
	je	.L21
	movq	96(%rsp), %r10
	leal	5(%rcx), %eax
	cltq
	vmovss	(%r12,%rax,4), %xmm1
	vfmadd213ss	(%r10), %xmm0, %xmm1
	vmovss	%xmm1, (%r10)
	cmpl	$6, %esi
	je	.L22
	movq	104(%rsp), %rsi
	leal	6(%rcx), %eax
	movl	$7, %r8d
	cltq
	vmovss	(%r12,%rax,4), %xmm2
	vfmadd213ss	(%rsi), %xmm0, %xmm2
	vmovss	%xmm2, (%rsi)
.L7:
	addq	40(%rsp), %rdx
	vbroadcastss	%xmm0, %ymm3
	movl	24(%rsp), %r10d
	movl	$32, %eax
	addq	%r12, %rdx
	vmovups	(%rdx), %ymm4
	vfmadd213ps	(%rbx), %ymm3, %ymm4
	leal	-1(%r10), %esi
	movl	$1, %r10d
	andl	$7, %esi
	cmpl	$1, 24(%rsp)
	vmovaps	%ymm4, (%r11)
	jbe	.L102
	testl	%esi, %esi
	je	.L9
	cmpl	$1, %esi
	je	.L80
	cmpl	$2, %esi
	je	.L81
	cmpl	$3, %esi
	je	.L82
	cmpl	$4, %esi
	je	.L83
	cmpl	$5, %esi
	je	.L84
	cmpl	$6, %esi
	je	.L85
	vmovups	32(%rdx), %ymm5
	vfmadd213ps	32(%rbx), %ymm3, %ymm5
	movl	$2, %r10d
	movl	$64, %eax
	vmovaps	%ymm5, 32(%r11)
.L85:
	vmovups	(%rdx,%rax), %ymm1
	vfmadd213ps	(%rbx,%rax), %ymm3, %ymm1
	addl	$1, %r10d
	vmovaps	%ymm1, (%r11,%rax)
	addq	$32, %rax
.L84:
	vmovups	(%rdx,%rax), %ymm2
	vfmadd213ps	(%rbx,%rax), %ymm3, %ymm2
	addl	$1, %r10d
	vmovaps	%ymm2, (%r11,%rax)
	addq	$32, %rax
.L83:
	vmovups	(%rdx,%rax), %ymm4
	vfmadd213ps	(%rbx,%rax), %ymm3, %ymm4
	addl	$1, %r10d
	vmovaps	%ymm4, (%r11,%rax)
	addq	$32, %rax
.L82:
	vmovups	(%rdx,%rax), %ymm5
	vfmadd213ps	(%rbx,%rax), %ymm3, %ymm5
	addl	$1, %r10d
	vmovaps	%ymm5, (%r11,%rax)
	addq	$32, %rax
.L81:
	vmovups	(%rdx,%rax), %ymm1
	vfmadd213ps	(%rbx,%rax), %ymm3, %ymm1
	addl	$1, %r10d
	vmovaps	%ymm1, (%r11,%rax)
	addq	$32, %rax
.L80:
	vmovups	(%rdx,%rax), %ymm2
	vfmadd213ps	(%rbx,%rax), %ymm3, %ymm2
	addl	$1, %r10d
	vmovaps	%ymm2, (%r11,%rax)
	addq	$32, %rax
	cmpl	%r10d, 24(%rsp)
	jbe	.L102
.L9:
	vmovups	(%rdx,%rax), %ymm4
	vfmadd213ps	(%rbx,%rax), %ymm3, %ymm4
	addl	$8, %r10d
	vmovaps	%ymm4, (%r11,%rax)
	vmovups	32(%rdx,%rax), %ymm5
	vfmadd213ps	32(%rbx,%rax), %ymm3, %ymm5
	vmovaps	%ymm5, 32(%r11,%rax)
	vmovups	64(%rdx,%rax), %ymm1
	vfmadd213ps	64(%rbx,%rax), %ymm3, %ymm1
	vmovaps	%ymm1, 64(%r11,%rax)
	vmovups	96(%rdx,%rax), %ymm2
	vfmadd213ps	96(%rbx,%rax), %ymm3, %ymm2
	vmovaps	%ymm2, 96(%r11,%rax)
	vmovups	128(%rdx,%rax), %ymm4
	vfmadd213ps	128(%rbx,%rax), %ymm3, %ymm4
	vmovaps	%ymm4, 128(%r11,%rax)
	vmovups	160(%rdx,%rax), %ymm5
	vfmadd213ps	160(%rbx,%rax), %ymm3, %ymm5
	vmovaps	%ymm5, 160(%r11,%rax)
	vmovups	192(%rdx,%rax), %ymm1
	vfmadd213ps	192(%rbx,%rax), %ymm3, %ymm1
	vmovaps	%ymm1, 192(%r11,%rax)
	vmovups	224(%rdx,%rax), %ymm2
	vfmadd213ps	224(%rbx,%rax), %ymm3, %ymm2
	vmovaps	%ymm2, 224(%r11,%rax)
	addq	$256, %rax
	cmpl	%r10d, 24(%rsp)
	ja	.L9
.L102:
	movl	48(%rsp), %edx
	addl	%edx, %r8d
	cmpl	%edx, 36(%rsp)
	je	.L11
.L6:
	leal	(%r8,%rdi), %eax
	cltq
	leaq	(%r14,%rax,4), %rsi
	leal	(%rcx,%r8), %eax
	cltq
	vmovss	(%r12,%rax,4), %xmm3
	vfmadd213ss	(%rsi), %xmm0, %xmm3
	leal	1(%r8), %eax
	vmovss	%xmm3, (%rsi)
	cmpl	%eax, %r15d
	jle	.L11
	leal	(%rax,%rdi), %r10d
	addl	%ecx, %eax
	movslq	%r10d, %rdx
	cltq
	leaq	(%r14,%rdx,4), %rsi
	vmovss	(%r12,%rax,4), %xmm4
	leal	2(%r8), %eax
	vfmadd213ss	(%rsi), %xmm0, %xmm4
	vmovss	%xmm4, (%rsi)
	cmpl	%eax, %r15d
	jle	.L11
	leal	(%rax,%rdi), %r10d
	addl	%ecx, %eax
	movslq	%r10d, %rdx
	cltq
	leaq	(%r14,%rdx,4), %rsi
	vmovss	(%r12,%rax,4), %xmm5
	leal	3(%r8), %eax
	vfmadd213ss	(%rsi), %xmm0, %xmm5
	vmovss	%xmm5, (%rsi)
	cmpl	%eax, %r15d
	jle	.L11
	leal	(%rax,%rdi), %r10d
	addl	%ecx, %eax
	movslq	%r10d, %rdx
	cltq
	leaq	(%r14,%rdx,4), %rsi
	vmovss	(%r12,%rax,4), %xmm1
	leal	4(%r8), %eax
	vfmadd213ss	(%rsi), %xmm0, %xmm1
	vmovss	%xmm1, (%rsi)
	cmpl	%eax, %r15d
	jle	.L11
	leal	(%rax,%rdi), %r10d
	addl	%ecx, %eax
	movslq	%r10d, %rdx
	cltq
	leaq	(%r14,%rdx,4), %rsi
	vmovss	(%r12,%rax,4), %xmm2
	leal	5(%r8), %eax
	vfmadd213ss	(%rsi), %xmm0, %xmm2
	vmovss	%xmm2, (%rsi)
	cmpl	%eax, %r15d
	jle	.L11
	leal	(%rax,%rdi), %r10d
	addl	%ecx, %eax
	movslq	%r10d, %rdx
	cltq
	leaq	(%r14,%rdx,4), %rsi
	vmovss	(%r12,%rax,4), %xmm3
	leal	6(%r8), %eax
	vfmadd213ss	(%rsi), %xmm0, %xmm3
	vmovss	%xmm3, (%rsi)
	cmpl	%eax, %r15d
	jle	.L11
	leal	(%rax,%rdi), %r10d
	addl	%ecx, %eax
	movslq	%r10d, %rdx
	cltq
	leaq	(%r14,%rdx,4), %rsi
	vmovss	(%r12,%rax,4), %xmm4
	leal	7(%r8), %eax
	vfmadd213ss	(%rsi), %xmm0, %xmm4
	vmovss	%xmm4, (%rsi)
	cmpl	%eax, %r15d
	jle	.L11
	leal	(%rax,%rdi), %r10d
	addl	%ecx, %eax
	movslq	%r10d, %rdx
	cltq
	leaq	(%r14,%rdx,4), %rsi
	vmovss	(%r12,%rax,4), %xmm5
	leal	8(%r8), %eax
	vfmadd213ss	(%rsi), %xmm0, %xmm5
	vmovss	%xmm5, (%rsi)
	cmpl	%eax, %r15d
	jle	.L11
	leal	(%rax,%rdi), %r10d
	addl	%ecx, %eax
	movslq	%r10d, %rdx
	cltq
	leaq	(%r14,%rdx,4), %rsi
	vmovss	(%r12,%rax,4), %xmm1
	leal	9(%r8), %eax
	vfmadd213ss	(%rsi), %xmm0, %xmm1
	vmovss	%xmm1, (%rsi)
	cmpl	%eax, %r15d
	jle	.L11
	leal	(%rax,%rdi), %r10d
	addl	%ecx, %eax
	movslq	%r10d, %rdx
	cltq
	leaq	(%r14,%rdx,4), %rsi
	vmovss	(%r12,%rax,4), %xmm2
	leal	10(%r8), %eax
	vfmadd213ss	(%rsi), %xmm0, %xmm2
	vmovss	%xmm2, (%rsi)
	cmpl	%eax, %r15d
	jle	.L11
	leal	(%rax,%rdi), %r10d
	addl	%ecx, %eax
	movslq	%r10d, %rdx
	cltq
	leaq	(%r14,%rdx,4), %rsi
	vmovss	(%r12,%rax,4), %xmm3
	leal	11(%r8), %eax
	vfmadd213ss	(%rsi), %xmm0, %xmm3
	vmovss	%xmm3, (%rsi)
	cmpl	%eax, %r15d
	jle	.L11
	leal	(%rax,%rdi), %r10d
	addl	%ecx, %eax
	movslq	%r10d, %rdx
	cltq
	leaq	(%r14,%rdx,4), %rsi
	vmovss	(%r12,%rax,4), %xmm4
	leal	12(%r8), %eax
	vfmadd213ss	(%rsi), %xmm0, %xmm4
	vmovss	%xmm4, (%rsi)
	cmpl	%eax, %r15d
	jle	.L11
	leal	(%rax,%rdi), %r10d
	addl	%ecx, %eax
	addl	$13, %r8d
	movslq	%r10d, %rdx
	cltq
	leaq	(%r14,%rdx,4), %rsi
	vmovss	(%r12,%rax,4), %xmm5
	vfmadd213ss	(%rsi), %xmm0, %xmm5
	vmovss	%xmm5, (%rsi)
	cmpl	%r8d, %r15d
	jle	.L11
	leal	(%r8,%rdi), %eax
	addl	%ecx, %r8d
	cltq
	movslq	%r8d, %r8
	leaq	(%r14,%rax,4), %r10
	vmovss	(%r10), %xmm1
	vfmadd132ss	(%r12,%r8,4), %xmm1, %xmm0
	vmovss	%xmm0, (%r10)
	.p2align 4,,10
.L11:
	addl	%r15d, %ecx
	addq	$4, %rbp
	addq	(%rsp), %r9
	cmpq	16(%rsp), %rbp
	jne	.L12
	movq	(%rsp), %rdi
	addl	$1, 128(%rsp)
	movl	128(%rsp), %ebx
	movq	144(%rsp), %rcx
	addq	%rdi, %r13
	addq	%rcx, 112(%rsp)
	addq	%rdi, 8(%rsp)
	addq	%rdi, 120(%rsp)
	addl	%r15d, 132(%rsp)
	addl	%r15d, 136(%rsp)
	addl	%r15d, 140(%rsp)
	cmpl	%ebx, %r15d
	jne	.L13
	vzeroupper
.L108:
	addq	$168, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,10
.L14:
	movq	80(%rsp), %rdx
	xorl	%eax, %eax
	leaq	-4(%rdx), %rsi
	shrq	$2, %rsi
	addq	$1, %rsi
	andl	$7, %esi
	je	.L5
	cmpq	$1, %rsi
	je	.L74
	cmpq	$2, %rsi
	je	.L75
	cmpq	$3, %rsi
	je	.L76
	cmpq	$4, %rsi
	je	.L77
	cmpq	$5, %rsi
	je	.L78
	cmpq	$6, %rsi
	je	.L79
	vmovss	(%r9), %xmm2
	vfmadd213ss	0(%r13), %xmm0, %xmm2
	movl	$4, %eax
	vmovss	%xmm2, 0(%r13)
.L79:
	vmovss	(%r9,%rax), %xmm3
	vfmadd213ss	0(%r13,%rax), %xmm0, %xmm3
	vmovss	%xmm3, 0(%r13,%rax)
	addq	$4, %rax
.L78:
	vmovss	(%r9,%rax), %xmm4
	vfmadd213ss	0(%r13,%rax), %xmm0, %xmm4
	vmovss	%xmm4, 0(%r13,%rax)
	addq	$4, %rax
.L77:
	vmovss	(%r9,%rax), %xmm5
	vfmadd213ss	0(%r13,%rax), %xmm0, %xmm5
	vmovss	%xmm5, 0(%r13,%rax)
	addq	$4, %rax
.L76:
	vmovss	(%r9,%rax), %xmm1
	vfmadd213ss	0(%r13,%rax), %xmm0, %xmm1
	vmovss	%xmm1, 0(%r13,%rax)
	addq	$4, %rax
.L75:
	vmovss	(%r9,%rax), %xmm2
	vfmadd213ss	0(%r13,%rax), %xmm0, %xmm2
	vmovss	%xmm2, 0(%r13,%rax)
	addq	$4, %rax
.L74:
	vmovss	(%r9,%rax), %xmm3
	vfmadd213ss	0(%r13,%rax), %xmm0, %xmm3
	vmovss	%xmm3, 0(%r13,%rax)
	addq	$4, %rax
	cmpq	80(%rsp), %rax
	je	.L11
.L5:
	vmovss	(%r9,%rax), %xmm4
	vfmadd213ss	0(%r13,%rax), %xmm0, %xmm4
	vmovss	%xmm4, 0(%r13,%rax)
	vmovss	4(%rax,%r9), %xmm5
	addq	$32, %rax
	vfmadd213ss	-28(%rax,%r13), %xmm0, %xmm5
	vmovss	%xmm5, -28(%rax,%r13)
	vmovss	-24(%rax,%r9), %xmm1
	vfmadd213ss	-24(%rax,%r13), %xmm0, %xmm1
	vmovss	%xmm1, -24(%rax,%r13)
	vmovss	-20(%rax,%r9), %xmm2
	vfmadd213ss	-20(%rax,%r13), %xmm0, %xmm2
	vmovss	%xmm2, -20(%rax,%r13)
	vmovss	-16(%rax,%r9), %xmm3
	vfmadd213ss	-16(%rax,%r13), %xmm0, %xmm3
	vmovss	%xmm3, -16(%rax,%r13)
	vmovss	-12(%rax,%r9), %xmm4
	vfmadd213ss	-12(%rax,%r13), %xmm0, %xmm4
	vmovss	%xmm4, -12(%rax,%r13)
	vmovss	-8(%rax,%r9), %xmm5
	vfmadd213ss	-8(%rax,%r13), %xmm0, %xmm5
	vmovss	%xmm5, -8(%rax,%r13)
	vmovss	-4(%rax,%r9), %xmm1
	vfmadd213ss	-4(%rax,%r13), %xmm0, %xmm1
	vmovss	%xmm1, -4(%rax,%r13)
	cmpq	80(%rsp), %rax
	jne	.L5
	jmp	.L11
	.p2align 4,,10
.L17:
	movl	$1, %r8d
	jmp	.L7
	.p2align 4,,10
.L16:
	xorl	%r8d, %r8d
	jmp	.L7
	.p2align 4,,10
.L18:
	movl	$2, %r8d
	jmp	.L7
	.p2align 4,,10
.L15:
	xorl	%r8d, %r8d
	jmp	.L6
	.p2align 4,,10
.L19:
	movl	$3, %r8d
	jmp	.L7
	.p2align 4,,10
.L20:
	movl	$4, %r8d
	jmp	.L7
	.p2align 4,,10
.L21:
	movl	$5, %r8d
	jmp	.L7
	.p2align 4,,10
.L22:
	movl	$6, %r8d
	jmp	.L7
	.seh_endproc
	.p2align 4,,15
	.def	_ZL12mmul_blockediPKfS0_Pf;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL12mmul_blockediPKfS0_Pf
_ZL12mmul_blockediPKfS0_Pf:
.LFB7832:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$344, %rsp
	.seh_stackalloc	344
	.seh_endprologue
	movl	%ecx, 416(%rsp)
	testl	%ecx, %ecx
	jle	.L127
	movl	%ecx, %ebx
	movq	%r8, %r13
	movq	%rdx, 88(%rsp)
	leaq	32(%r9), %r9
	movslq	416(%rsp), %rbp
	leal	0(,%rcx,8), %r10d
	movl	416(%rsp), %r15d
	movq	%r9, 280(%rsp)
	movslq	%r10d, %rcx
	subl	416(%rsp), %r10d
	salq	$2, %rbp
	leaq	0(,%rcx,4), %rsi
	movslq	%r10d, %r10
	leaq	(%r8,%rbp), %rdi
	movq	%rsi, 264(%rsp)
	leal	(%rbx,%rbx,2), %r8d
	leaq	(%rdi,%rbp), %r11
	movq	%rdi, 152(%rsp)
	movslq	%r8d, %r12
	addl	%r8d, %r8d
	leaq	(%r11,%rbp), %r14
	leal	0(,%r15,4), %ebx
	movq	%r11, 144(%rsp)
	movslq	%r8d, %r8
	leaq	(%r14,%rbp), %rax
	movq	%r14, 136(%rsp)
	movslq	%ebx, %r15
	movl	416(%rsp), %r14d
	leaq	(%rax,%rbp), %rsi
	addl	416(%rsp), %ebx
	leaq	32(%rcx), %rcx
	movq	%rax, 128(%rsp)
	leaq	(%rsi,%rbp), %rdi
	subl	$1, %r14d
	movslq	%ebx, %r11
	movq	%rsi, 120(%rsp)
	addq	%rdi, %rbp
	shrl	$3, %r14d
	movq	%rdi, 112(%rsp)
	leaq	32(,%r12,4), %r12
	movq	%rbp, 104(%rsp)
	movq	%rdx, %rbp
	movq	%r14, %rdx
	leaq	8(,%r14,8), %rsi
	salq	$5, %rdx
	leaq	32(%r15), %rdi
	leaq	32(,%r11,4), %r11
	movq	%rsi, 248(%rsp)
	leaq	32(%rbp,%rdx), %rax
	leaq	32(,%r8,4), %r8
	movq	%rdi, 320(%rsp)
	leaq	32(,%r15,4), %rbp
	leaq	32(,%r10,4), %r10
	movq	%rax, 256(%rsp)
	movq	%rcx, 272(%rsp)
	movq	%r12, 328(%rsp)
	movq	%rbp, 312(%rsp)
	movq	%r11, 304(%rsp)
	movq	%r8, 296(%rsp)
	movq	%r10, 288(%rsp)
	movq	%r15, 72(%rsp)
.L116:
	movq	320(%rsp), %rdx
	movq	328(%rsp), %rax
	movq	$0, 168(%rsp)
	leaq	32(%r13), %r14
	movq	304(%rsp), %r9
	movq	288(%rsp), %rcx
	movq	$0, 80(%rsp)
	movq	280(%rsp), %r15
	addq	%r13, %rdx
	addq	%r13, %rax
	movq	272(%rsp), %rbx
	addq	%r13, %r9
	addq	%r13, %rcx
	movq	%rdx, 56(%rsp)
	movq	104(%rsp), %r12
	movq	312(%rsp), %rsi
	addq	%r13, %rbx
	movq	296(%rsp), %rdi
	movq	%r15, 160(%rsp)
	movq	%rax, 40(%rsp)
	movq	112(%rsp), %rbp
	addq	%r13, %rsi
	addq	%r13, %rdi
	movq	%r9, 24(%rsp)
	movq	144(%rsp), %r11
	movq	%rcx, 8(%rsp)
	movq	152(%rsp), %r10
	movq	%r13, 176(%rsp)
	movq	%rbx, 48(%rsp)
	movq	136(%rsp), %rbx
	movq	%rsi, 32(%rsp)
	movq	128(%rsp), %rsi
	movq	%rdi, 16(%rsp)
	movq	120(%rsp), %rdi
	movq	%r14, 64(%rsp)
	movq	%r13, %r14
	.p2align 4,,10
.L115:
	movq	80(%rsp), %r15
	movq	160(%rsp), %r9
	xorl	%r13d, %r13d
	movq	88(%rsp), %rax
	addq	$8, %r15
	leaq	-32(%r9), %r8
	movq	%r15, 96(%rsp)
	.p2align 4,,10
.L114:
	cmpq	%r10, %r9
	setbe	%cl
	cmpq	56(%rsp), %r8
	setnb	%dl
	orl	%ecx, %edx
	cmpq	%r14, %r9
	setbe	%cl
	cmpq	64(%rsp), %r8
	setnb	%r15b
	orl	%ecx, %r15d
	andl	%edx, %r15d
	cmpq	%r11, %r9
	setbe	%cl
	cmpq	48(%rsp), %r8
	setnb	%dl
	orl	%ecx, %edx
	andl	%r15d, %edx
	cmpq	%rbx, %r9
	setbe	%cl
	cmpq	40(%rsp), %r8
	setnb	%r15b
	orl	%ecx, %r15d
	andl	%edx, %r15d
	cmpq	%rsi, %r9
	setbe	%cl
	cmpq	32(%rsp), %r8
	setnb	%dl
	orl	%ecx, %edx
	andl	%r15d, %edx
	cmpq	%rdi, %r9
	setbe	%cl
	cmpq	24(%rsp), %r8
	setnb	%r15b
	orl	%ecx, %r15d
	andl	%edx, %r15d
	cmpq	%rbp, %r9
	setbe	%cl
	cmpq	16(%rsp), %r8
	setnb	%dl
	orl	%ecx, %edx
	andl	%r15d, %edx
	cmpq	%r12, %r9
	setbe	%cl
	cmpq	8(%rsp), %r8
	setnb	%r15b
	orl	%r15d, %ecx
	testb	%cl, %dl
	je	.L111
	leaq	32(%rax), %rdx
	cmpq	%rdx, %r8
	setnb	%cl
	cmpq	%rax, %r9
	setbe	%r15b
	orb	%r15b, %cl
	je	.L111
	vmovups	(%r8), %ymm2
	vbroadcastss	(%rax), %ymm0
	vfmadd132ps	(%r14), %ymm2, %ymm0
	vbroadcastss	4(%rax), %ymm1
	vfmadd231ps	(%r10), %ymm1, %ymm0
	vbroadcastss	8(%rax), %ymm3
	vfmadd231ps	(%r11), %ymm3, %ymm0
	vbroadcastss	12(%rax), %ymm4
	vfmadd231ps	(%rbx), %ymm4, %ymm0
	vbroadcastss	16(%rax), %ymm5
	vfmadd231ps	(%rsi), %ymm5, %ymm0
	vbroadcastss	20(%rax), %ymm2
	vfmadd231ps	(%rdi), %ymm2, %ymm0
	vbroadcastss	24(%rax), %ymm1
	vfmadd231ps	0(%rbp), %ymm1, %ymm0
	vbroadcastss	28(%rax), %ymm3
	vfmadd231ps	(%r12), %ymm3, %ymm0
	vmovups	%ymm0, (%r8)
.L112:
	movq	72(%rsp), %rdx
	addl	$1, %r13d
	addq	%rdx, %r8
	addq	%rdx, %r9
	addq	%rdx, %rax
	cmpl	%r13d, 416(%rsp)
	jne	.L114
	addq	$32, %r14
	addq	$32, %r10
	addq	$32, %r11
	addq	$32, %rbx
	addq	$32, %rsi
	addq	$32, %rdi
	addq	$32, %rbp
	addq	$32, %r12
	movq	96(%rsp), %r9
	addq	$32, 64(%rsp)
	movq	248(%rsp), %r8
	addq	$32, 56(%rsp)
	movq	%r9, 80(%rsp)
	subq	$32, 168(%rsp)
	addq	$32, 160(%rsp)
	addq	$32, 48(%rsp)
	addq	$32, 40(%rsp)
	addq	$32, 32(%rsp)
	addq	$32, 24(%rsp)
	addq	$32, 16(%rsp)
	addq	$32, 8(%rsp)
	cmpq	%r8, %r9
	jne	.L115
	movq	264(%rsp), %rbp
	movq	176(%rsp), %r13
	addq	$32, 88(%rsp)
	movq	88(%rsp), %rax
	addq	%rbp, %r13
	addq	%rbp, 152(%rsp)
	addq	%rbp, 144(%rsp)
	addq	%rbp, 136(%rsp)
	addq	%rbp, 128(%rsp)
	addq	%rbp, 120(%rsp)
	addq	%rbp, 112(%rsp)
	addq	%rbp, 104(%rsp)
	cmpq	%rax, 256(%rsp)
	jne	.L116
	vzeroupper
.L127:
	addq	$344, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,10
.L111:
	movq	168(%rsp), %rcx
	movl	%r13d, 188(%rsp)
	movq	%rdi, 192(%rsp)
	movq	80(%rsp), %rdx
	movq	%r14, 200(%rsp)
	movq	96(%rsp), %r15
	addq	%r8, %rcx
	movq	%r10, 208(%rsp)
	movq	136(%rsp), %rdi
	movq	%r11, 216(%rsp)
	movq	104(%rsp), %r10
	movq	%rbx, 224(%rsp)
	movq	112(%rsp), %r11
	movq	%rsi, 232(%rsp)
	movq	120(%rsp), %rbx
	movq	%r12, 240(%rsp)
	movq	128(%rsp), %rsi
	movq	152(%rsp), %r13
	movq	176(%rsp), %r14
	movq	144(%rsp), %r12
	.p2align 4,,10
.L113:
	vmovss	(%rcx,%rdx,4), %xmm4
	vmovss	(%r14,%rdx,4), %xmm0
	vfmadd132ss	(%rax), %xmm4, %xmm0
	vmovss	0(%r13,%rdx,4), %xmm5
	vfmadd231ss	4(%rax), %xmm5, %xmm0
	vmovss	(%r12,%rdx,4), %xmm2
	vfmadd231ss	8(%rax), %xmm2, %xmm0
	vmovss	(%rdi,%rdx,4), %xmm1
	vfmadd231ss	12(%rax), %xmm1, %xmm0
	vmovss	(%rsi,%rdx,4), %xmm3
	vfmadd231ss	16(%rax), %xmm3, %xmm0
	vmovss	(%rbx,%rdx,4), %xmm4
	vfmadd231ss	20(%rax), %xmm4, %xmm0
	vmovss	(%r11,%rdx,4), %xmm5
	vfmadd231ss	24(%rax), %xmm5, %xmm0
	vmovss	(%r10,%rdx,4), %xmm2
	vfmadd231ss	28(%rax), %xmm2, %xmm0
	vmovss	%xmm0, (%rcx,%rdx,4)
	addq	$1, %rdx
	cmpq	%r15, %rdx
	jne	.L113
	movl	188(%rsp), %r13d
	movq	192(%rsp), %rdi
	movq	200(%rsp), %r14
	movq	208(%rsp), %r10
	movq	216(%rsp), %r11
	movq	224(%rsp), %rbx
	movq	232(%rsp), %rsi
	movq	240(%rsp), %r12
	jmp	.L112
	.seh_endproc
	.p2align 4,,15
	.def	_ZL14mmul_saxpy_avxiPKfS0_Pf;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL14mmul_saxpy_avxiPKfS0_Pf
_ZL14mmul_saxpy_avxiPKfS0_Pf:
.LFB7827:
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	.seh_endprologue
	testl	%ecx, %ecx
	jle	.L172
	leal	-1(%rcx), %r10d
	movslq	%ecx, %rbp
	xorl	%esi, %esi
	movq	%r10, %rax
	leaq	4(%rdx,%r10,4), %rdi
	negq	%r10
	salq	$2, %rbp
	shrl	$3, %eax
	leaq	-4(,%r10,4), %r12
	movl	%eax, %ebx
	addq	$1, %rbx
	salq	$5, %rbx
	.p2align 4,,10
.L132:
	leaq	(%r12,%rdi), %r11
	movq	%r8, %r10
	.p2align 4,,10
.L131:
	leaq	-32(%rbx), %rdx
	vbroadcastss	(%r11), %ymm0
	xorl	%eax, %eax
	shrq	$5, %rdx
	addq	$1, %rdx
	andl	$7, %edx
	je	.L130
	cmpq	$1, %rdx
	je	.L157
	cmpq	$2, %rdx
	je	.L158
	cmpq	$3, %rdx
	je	.L159
	cmpq	$4, %rdx
	je	.L160
	cmpq	$5, %rdx
	je	.L161
	cmpq	$6, %rdx
	je	.L162
	vmovaps	(%r10), %ymm1
	vfmadd213ps	(%r9), %ymm0, %ymm1
	movl	$32, %eax
	vmovaps	%ymm1, (%r9)
.L162:
	vmovaps	(%r10,%rax), %ymm2
	vfmadd213ps	(%r9,%rax), %ymm0, %ymm2
	vmovaps	%ymm2, (%r9,%rax)
	addq	$32, %rax
.L161:
	vmovaps	(%r10,%rax), %ymm3
	vfmadd213ps	(%r9,%rax), %ymm0, %ymm3
	vmovaps	%ymm3, (%r9,%rax)
	addq	$32, %rax
.L160:
	vmovaps	(%r10,%rax), %ymm4
	vfmadd213ps	(%r9,%rax), %ymm0, %ymm4
	vmovaps	%ymm4, (%r9,%rax)
	addq	$32, %rax
.L159:
	vmovaps	(%r10,%rax), %ymm5
	vfmadd213ps	(%r9,%rax), %ymm0, %ymm5
	vmovaps	%ymm5, (%r9,%rax)
	addq	$32, %rax
.L158:
	vmovaps	(%r10,%rax), %ymm1
	vfmadd213ps	(%r9,%rax), %ymm0, %ymm1
	vmovaps	%ymm1, (%r9,%rax)
	addq	$32, %rax
.L157:
	vmovaps	(%r10,%rax), %ymm2
	vfmadd213ps	(%r9,%rax), %ymm0, %ymm2
	vmovaps	%ymm2, (%r9,%rax)
	addq	$32, %rax
	cmpq	%rax, %rbx
	je	.L171
.L130:
	vmovaps	(%r10,%rax), %ymm3
	vfmadd213ps	(%r9,%rax), %ymm0, %ymm3
	vmovaps	%ymm3, (%r9,%rax)
	vmovaps	32(%rax,%r10), %ymm4
	vfmadd213ps	32(%rax,%r9), %ymm0, %ymm4
	addq	$256, %rax
	vmovaps	%ymm4, -224(%rax,%r9)
	vmovaps	-192(%rax,%r10), %ymm5
	vfmadd213ps	-192(%rax,%r9), %ymm0, %ymm5
	vmovaps	%ymm5, -192(%rax,%r9)
	vmovaps	-160(%rax,%r10), %ymm1
	vfmadd213ps	-160(%rax,%r9), %ymm0, %ymm1
	vmovaps	%ymm1, -160(%rax,%r9)
	vmovaps	-128(%rax,%r10), %ymm2
	vfmadd213ps	-128(%rax,%r9), %ymm0, %ymm2
	vmovaps	%ymm2, -128(%rax,%r9)
	vmovaps	-96(%rax,%r10), %ymm3
	vfmadd213ps	-96(%rax,%r9), %ymm0, %ymm3
	vmovaps	%ymm3, -96(%rax,%r9)
	vmovaps	-64(%rax,%r10), %ymm4
	vfmadd213ps	-64(%rax,%r9), %ymm0, %ymm4
	vmovaps	%ymm4, -64(%rax,%r9)
	vmovaps	-32(%rax,%r10), %ymm5
	vfmadd213ps	-32(%rax,%r9), %ymm0, %ymm5
	vmovaps	%ymm5, -32(%rax,%r9)
	cmpq	%rax, %rbx
	jne	.L130
.L171:
	addq	$4, %r11
	addq	%rbp, %r10
	cmpq	%rdi, %r11
	jne	.L131
	addl	$1, %esi
	addq	%rbp, %rdi
	addq	%rbp, %r9
	cmpl	%esi, %ecx
	jne	.L132
	vzeroupper
.L172:
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.seh_endproc
	.p2align 4,,15
	.def	_ZL23mmul_saxpy_avx_unrollediPKfS0_Pf;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL23mmul_saxpy_avx_unrollediPKfS0_Pf
_ZL23mmul_saxpy_avx_unrollediPKfS0_Pf:
.LFB7828:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$24, %rsp
	.seh_stackalloc	24
	.seh_endprologue
	movq	%r8, 112(%rsp)
	testl	%ecx, %ecx
	jle	.L187
	leal	-1(%rcx), %r8d
	movslq	%ecx, %rax
	xorl	%r13d, %r13d
	xorl	%r12d, %r12d
	movq	%r8, %rbx
	movq	%rax, (%rsp)
	leaq	4(%rdx,%r8,4), %rdi
	negq	%r8
	shrl	$6, %ebx
	leaq	0(,%rax,4), %rbp
	leaq	-4(,%r8,4), %r15
	salq	$6, %rbx
	leaq	256(%r9), %r14
	movq	%rbx, 8(%rsp)
	.p2align 4,,10
.L177:
	movq	8(%rsp), %rdx
	movq	112(%rsp), %r11
	leaq	(%r15,%rdi), %r10
	addq	%r13, %rdx
	leaq	(%r14,%rdx,4), %rsi
	.p2align 4,,10
.L179:
	movq	%rsi, %rbx
	vbroadcastss	(%r10), %ymm0
	movq	%r11, %r8
	movq	%r9, %rax
	subq	%r9, %rbx
	andb	$1, %bh
	je	.L176
	vmovaps	(%r11), %ymm1
	vfmadd213ps	(%r9), %ymm0, %ymm1
	leaq	256(%r9), %rax
	leaq	256(%r11), %r8
	vmovaps	%ymm1, (%r9)
	vmovaps	32(%r11), %ymm2
	vfmadd213ps	32(%r9), %ymm0, %ymm2
	vmovaps	%ymm2, 32(%r9)
	vmovaps	64(%r11), %ymm3
	vfmadd213ps	64(%r9), %ymm0, %ymm3
	vmovaps	%ymm3, 64(%r9)
	vmovaps	96(%r11), %ymm4
	vfmadd213ps	96(%r9), %ymm0, %ymm4
	vmovaps	%ymm4, 96(%r9)
	vmovaps	128(%r11), %ymm5
	vfmadd213ps	128(%r9), %ymm0, %ymm5
	vmovaps	%ymm5, 128(%r9)
	vmovaps	160(%r11), %ymm1
	vfmadd213ps	160(%r9), %ymm0, %ymm1
	vmovaps	%ymm1, 160(%r9)
	vmovaps	192(%r11), %ymm2
	vfmadd213ps	192(%r9), %ymm0, %ymm2
	vmovaps	%ymm2, 192(%r9)
	vmovaps	224(%r11), %ymm3
	vfmadd213ps	224(%r9), %ymm0, %ymm3
	vmovaps	%ymm3, 224(%r9)
	cmpq	%rax, %rsi
	je	.L175
	.p2align 4,,10
.L176:
	vmovaps	(%r8), %ymm4
	vfmadd213ps	(%rax), %ymm0, %ymm4
	addq	$512, %rax
	addq	$512, %r8
	vmovaps	%ymm4, -512(%rax)
	vmovaps	-480(%r8), %ymm5
	vfmadd213ps	-480(%rax), %ymm0, %ymm5
	vmovaps	%ymm5, -480(%rax)
	vmovaps	-448(%r8), %ymm1
	vfmadd213ps	-448(%rax), %ymm0, %ymm1
	vmovaps	%ymm1, -448(%rax)
	vmovaps	-416(%r8), %ymm2
	vfmadd213ps	-416(%rax), %ymm0, %ymm2
	vmovaps	%ymm2, -416(%rax)
	vmovaps	-384(%r8), %ymm3
	vfmadd213ps	-384(%rax), %ymm0, %ymm3
	vmovaps	%ymm3, -384(%rax)
	vmovaps	-352(%r8), %ymm4
	vfmadd213ps	-352(%rax), %ymm0, %ymm4
	vmovaps	%ymm4, -352(%rax)
	vmovaps	-320(%r8), %ymm5
	vfmadd213ps	-320(%rax), %ymm0, %ymm5
	vmovaps	%ymm5, -320(%rax)
	vmovaps	-288(%r8), %ymm1
	vfmadd213ps	-288(%rax), %ymm0, %ymm1
	vmovaps	%ymm1, -288(%rax)
	vmovaps	-256(%r8), %ymm2
	vfmadd213ps	-256(%rax), %ymm0, %ymm2
	vmovaps	%ymm2, -256(%rax)
	vmovaps	-224(%r8), %ymm3
	vfmadd213ps	-224(%rax), %ymm0, %ymm3
	vmovaps	%ymm3, -224(%rax)
	vmovaps	-192(%r8), %ymm4
	vfmadd213ps	-192(%rax), %ymm0, %ymm4
	vmovaps	%ymm4, -192(%rax)
	vmovaps	-160(%r8), %ymm5
	vfmadd213ps	-160(%rax), %ymm0, %ymm5
	vmovaps	%ymm5, -160(%rax)
	vmovaps	-128(%r8), %ymm1
	vfmadd213ps	-128(%rax), %ymm0, %ymm1
	vmovaps	%ymm1, -128(%rax)
	vmovaps	-96(%r8), %ymm2
	vfmadd213ps	-96(%rax), %ymm0, %ymm2
	vmovaps	%ymm2, -96(%rax)
	vmovaps	-64(%r8), %ymm3
	vfmadd213ps	-64(%rax), %ymm0, %ymm3
	vmovaps	%ymm3, -64(%rax)
	vmovaps	-32(%r8), %ymm4
	vfmadd213ps	-32(%rax), %ymm0, %ymm4
	vmovaps	%ymm4, -32(%rax)
	cmpq	%rax, %rsi
	jne	.L176
.L175:
	addq	$4, %r10
	addq	%rbp, %r11
	cmpq	%r10, %rdi
	jne	.L179
	addl	$1, %r12d
	addq	%rbp, %rdi
	addq	%rbp, %r9
	addq	(%rsp), %r13
	cmpl	%r12d, %ecx
	jne	.L177
	vzeroupper
.L187:
	addq	$24, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.seh_endproc
	.p2align 4,,15
	.def	_ZL29mmul_saxpy_avx_tiled_unrollediPKfS0_Pf;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL29mmul_saxpy_avx_tiled_unrollediPKfS0_Pf
_ZL29mmul_saxpy_avx_tiled_unrollediPKfS0_Pf:
.LFB7829:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$120, %rsp
	.seh_stackalloc	120
	vmovaps	%xmm6, 64(%rsp)
	.seh_savexmm	%xmm6, 64
	vmovaps	%xmm7, 80(%rsp)
	.seh_savexmm	%xmm7, 80
	vmovaps	%xmm8, 96(%rsp)
	.seh_savexmm	%xmm8, 96
	.seh_endprologue
	movl	%ecx, %r15d
	testl	%ecx, %ecx
	jle	.L217
	leal	-1(%rcx), %eax
	movl	%r15d, %ebx
	leaq	-4(%rdx), %rdx
	movq	%r9, 24(%rsp)
	movl	%eax, %ecx
	sall	$5, %ebx
	andl	$-32, %eax
	movq	%r8, 48(%rsp)
	movslq	%ebx, %rsi
	andl	$-512, %ecx
	addl	$63, %eax
	movslq	%r15d, %r11
	leaq	0(,%rsi,4), %rbp
	leal	512(%rcx), %edi
	movl	%eax, 56(%rsp)
	salq	$2, %r11
	movl	%edi, 60(%rsp)
	movq	%rbp, 32(%rsp)
	movq	%rdx, 40(%rsp)
	movl	$0, 12(%rsp)
	movl	12(%rsp), %esi
.L197:
	leal	511(%rsi), %r12d
	cmpl	%esi, %r15d
	jle	.L190
	movq	48(%rsp), %r8
	movl	$31, %esi
	movl	$1, %edi
	movq	%r8, 16(%rsp)
.L196:
	movq	40(%rsp), %rbx
	movq	24(%rsp), %r13
	xorl	%r14d, %r14d
	.p2align 4,,10
.L195:
	movq	16(%rsp), %r8
	movl	12(%rsp), %ebp
	movq	%r13, %rdx
	.p2align 4,,10
.L193:
	movl	%r15d, %r9d
	vmovaps	(%rdx), %ymm2
	vmovaps	32(%rdx), %ymm1
	movq	%r8, %rax
	subl	%edi, %r9d
	vmovaps	64(%rdx), %ymm3
	vmovaps	96(%rdx), %ymm4
	movq	%rdi, %rcx
	andl	$1, %r9d
	vmovaps	128(%rdx), %ymm5
	vmovaps	160(%rdx), %ymm6
	vmovaps	192(%rdx), %ymm7
	vmovaps	224(%rdx), %ymm8
	je	.L191
	vbroadcastss	(%rbx,%rdi,4), %ymm0
	leaq	1(%rdi), %rcx
	leaq	(%r8,%r11), %rax
	vfmadd231ps	(%r8), %ymm0, %ymm2
	vfmadd231ps	32(%r8), %ymm0, %ymm1
	vfmadd231ps	64(%r8), %ymm0, %ymm3
	vfmadd231ps	128(%r8), %ymm0, %ymm5
	vfmadd231ps	96(%r8), %ymm0, %ymm4
	vfmadd231ps	160(%r8), %ymm0, %ymm6
	vfmadd231ps	192(%r8), %ymm0, %ymm7
	vfmadd231ps	224(%r8), %ymm0, %ymm8
	cmpl	%edi, %r15d
	jle	.L198
	cmpl	%esi, %edi
	jg	.L198
.L191:
	vbroadcastss	(%rbx,%rcx,4), %ymm0
	leaq	1(%rcx), %r10
	vfmadd231ps	(%rax), %ymm0, %ymm2
	vfmadd231ps	32(%rax), %ymm0, %ymm1
	vfmadd231ps	64(%rax), %ymm0, %ymm3
	vfmadd231ps	128(%rax), %ymm0, %ymm5
	vfmadd231ps	96(%rax), %ymm0, %ymm4
	vfmadd231ps	160(%rax), %ymm0, %ymm6
	vfmadd231ps	192(%rax), %ymm0, %ymm7
	vfmadd231ps	224(%rax), %ymm0, %ymm8
	addq	%r11, %rax
	cmpl	%ecx, %r15d
	jle	.L198
	cmpl	%esi, %ecx
	jg	.L198
	vbroadcastss	(%rbx,%r10,4), %ymm0
	addq	$2, %rcx
	vfmadd231ps	(%rax), %ymm0, %ymm2
	vfmadd231ps	32(%rax), %ymm0, %ymm1
	vfmadd231ps	64(%rax), %ymm0, %ymm3
	vfmadd231ps	128(%rax), %ymm0, %ymm5
	vfmadd231ps	96(%rax), %ymm0, %ymm4
	vfmadd231ps	160(%rax), %ymm0, %ymm6
	vfmadd231ps	192(%rax), %ymm0, %ymm7
	vfmadd231ps	224(%rax), %ymm0, %ymm8
	addq	%r11, %rax
	cmpl	%r10d, %esi
	jge	.L191
.L198:
	addl	$64, %ebp
	vmovaps	%ymm2, (%rdx)
	addq	$256, %r8
	addq	$256, %rdx
	vmovaps	%ymm1, -224(%rdx)
	vmovaps	%ymm3, -192(%rdx)
	vmovaps	%ymm4, -160(%rdx)
	vmovaps	%ymm5, -128(%rdx)
	vmovaps	%ymm6, -96(%rdx)
	vmovaps	%ymm7, -64(%rdx)
	vmovaps	%ymm8, -32(%rdx)
	cmpl	%r12d, %ebp
	jg	.L199
	cmpl	%ebp, %r15d
	jg	.L193
.L199:
	addl	$1, %r14d
	addq	%r11, %rbx
	addq	%r11, %r13
	cmpl	%r14d, %r15d
	jne	.L195
	movq	32(%rsp), %rbx
	addq	$32, %rdi
	addl	$32, %esi
	addq	%rbx, 16(%rsp)
	cmpl	%esi, 56(%rsp)
	jne	.L196
.L190:
	addl	$512, 12(%rsp)
	movl	12(%rsp), %esi
	addq	$2048, 24(%rsp)
	addq	$2048, 48(%rsp)
	cmpl	%esi, 60(%rsp)
	jne	.L197
	vzeroupper
.L217:
	vmovaps	64(%rsp), %xmm6
	vmovaps	80(%rsp), %xmm7
	vmovaps	96(%rsp), %xmm8
	addq	$120, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.seh_endproc
	.p2align 4,,15
	.def	_ZL20mmul_saxpy_avx_tilediPKfS0_Pf;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL20mmul_saxpy_avx_tilediPKfS0_Pf
_ZL20mmul_saxpy_avx_tilediPKfS0_Pf:
.LFB7830:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$72, %rsp
	.seh_stackalloc	72
	.seh_endprologue
	movl	%ecx, %edi
	movq	%rdx, 152(%rsp)
	movq	%r8, 160(%rsp)
	movq	%r9, 168(%rsp)
	testl	%ecx, %ecx
	jle	.L266
	movl	%ecx, %eax
	leal	-1(%rcx), %ecx
	movl	$0, 36(%rsp)
	movslq	%edi, %rsi
	movl	%ecx, %edx
	xorb	%cl, %cl
	sall	$6, %eax
	leaq	0(,%rsi,4), %rbp
	andl	$-64, %edx
	addl	$256, %ecx
	movl	%eax, 56(%rsp)
	xorl	%r12d, %r12d
	leal	64(%rdx), %ebx
	movl	%ecx, 32(%rsp)
	movl	$63, %eax
	movl	$1, %r13d
	movl	%ebx, 60(%rsp)
	movl	%eax, %r15d
	movq	$0, 48(%rsp)
	movq	$-4, 40(%rsp)
.L227:
	movslq	36(%rsp), %r8
	movq	160(%rsp), %r9
	movl	$0, 4(%rsp)
	movq	40(%rsp), %r14
	movq	48(%rsp), %rcx
	movq	168(%rsp), %r11
	leaq	(%r9,%r8,4), %r10
	movl	4(%rsp), %ebx
	addq	%rcx, %r14
	movq	%r10, 8(%rsp)
	movq	%r11, 16(%rsp)
	movq	%r14, 24(%rsp)
	.p2align 4,,10
.L226:
	movq	16(%rsp), %r14
	movl	$0, (%rsp)
	leal	255(%rbx), %ebx
	movq	24(%rsp), %rcx
	addq	152(%rsp), %rcx
	.p2align 4,,10
.L225:
	movq	8(%rsp), %r8
	movl	4(%rsp), %r10d
	movq	%r14, %r9
	.p2align 4,,10
.L223:
	vmovaps	(%r9), %ymm0
	cmpl	%r12d, %edi
	jle	.L220
	movl	%r15d, %r11d
	movq	%r8, %rax
	movq	%r13, %rdx
	subl	%r13d, %r11d
	addl	$1, %r11d
	andl	$3, %r11d
	je	.L263
	vbroadcastss	(%rcx,%r13,4), %ymm1
	leaq	1(%r13), %rdx
	vfmadd231ps	(%r8), %ymm1, %ymm0
	leaq	(%r8,%rbp), %rax
	cmpl	%r15d, %r13d
	jg	.L220
	cmpl	%r13d, %edi
	jle	.L220
	cmpl	$1, %r11d
	je	.L263
	cmpl	$2, %r11d
	je	.L250
	movl	%edx, %r11d
	vbroadcastss	(%rcx,%rdx,4), %ymm2
	leaq	2(%r13), %rdx
	vfmadd231ps	(%rax), %ymm2, %ymm0
	addq	%rbp, %rax
	cmpl	%r11d, %edi
	jle	.L220
.L250:
	movl	%edx, %esi
	vbroadcastss	(%rcx,%rdx,4), %ymm3
	addq	$1, %rdx
	vfmadd231ps	(%rax), %ymm3, %ymm0
	addq	%rbp, %rax
	cmpl	%esi, %edi
	jle	.L220
.L263:
	movl	%r10d, %esi
.L221:
	vbroadcastss	(%rcx,%rdx,4), %ymm4
	leaq	1(%rdx), %r10
	vfmadd231ps	(%rax), %ymm4, %ymm0
	addq	%rbp, %rax
	cmpl	%r15d, %edx
	jg	.L265
	cmpl	%edx, %edi
	jle	.L265
	vbroadcastss	(%rcx,%r10,4), %ymm5
	leaq	2(%rdx), %r11
	vfmadd231ps	(%rax), %ymm5, %ymm0
	addq	%rbp, %rax
	cmpl	%r10d, %edi
	jle	.L265
	vbroadcastss	(%rcx,%r11,4), %ymm1
	leaq	3(%rdx), %r10
	vfmadd231ps	(%rax), %ymm1, %ymm0
	addq	%rbp, %rax
	cmpl	%r11d, %edi
	jle	.L265
	vbroadcastss	(%rcx,%r10,4), %ymm2
	addq	$4, %rdx
	vfmadd231ps	(%rax), %ymm2, %ymm0
	addq	%rbp, %rax
	cmpl	%r10d, %edi
	jg	.L221
	.p2align 4,,10
.L265:
	movl	%esi, %r10d
.L220:
	addl	$8, %r10d
	vmovaps	%ymm0, (%r9)
	addq	$32, %r8
	addq	$32, %r9
	cmpl	%r10d, %edi
	jle	.L228
	cmpl	%ebx, %r10d
	jle	.L223
.L228:
	addl	$1, (%rsp)
	movl	(%rsp), %r8d
	addq	%rbp, %r14
	addq	%rbp, %rcx
	cmpl	%r8d, %edi
	jne	.L225
	addl	$256, 4(%rsp)
	movl	4(%rsp), %ebx
	addq	$1024, 8(%rsp)
	addq	$1024, 16(%rsp)
	cmpl	32(%rsp), %ebx
	jne	.L226
	movl	56(%rsp), %ecx
	addl	$64, %r12d
	addl	%ecx, 36(%rsp)
	addq	$64, %r13
	subq	$256, 40(%rsp)
	addl	$64, %r15d
	addq	$256, 48(%rsp)
	cmpl	60(%rsp), %r12d
	jne	.L227
	vzeroupper
.L266:
	addq	$72, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.seh_endproc
	.p2align 4,,15
	.def	__tcf_0;	.scl	3;	.type	32;	.endef
	.seh_proc	__tcf_0
__tcf_0:
.LFB8411:
	.seh_endprologue
	leaq	_ZStL8__ioinit(%rip), %rcx
	jmp	_ZNSt8ios_base4InitD1Ev
	.seh_endproc
	.p2align 4,,15
	.def	_ZL11fill_matrixPfi;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL11fill_matrixPfi
_ZL11fill_matrixPfi:
.LFB7819:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$2584, %rsp
	.seh_stackalloc	2584
	.seh_endprologue
	leaq	32(%rsp), %rbx
	movl	%edx, %esi
	movl	$13113, %edx
	movq	%rcx, %rdi
	leaq	16(%rbx), %rax
	leaq	64(%rsp), %rbp
	movl	$959542381, 48(%rsp)
	movw	%dx, 4(%rax)
	movq	%rbp, %rcx
	movq	%rbx, %rdx
	movb	$55, 6(%rax)
	movq	%rax, 32(%rsp)
	movq	$7, 40(%rsp)
	movb	$0, 55(%rsp)
.LEHB0:
	call	_ZNSt13random_device14_M_init_pretr1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.LEHE0:
	movq	32(%rsp), %rcx
	addq	$16, %rbx
	cmpq	%rbx, %rcx
	je	.L269
	call	_ZdlPv
.L269:
	imull	%esi, %esi
	movq	%rbp, %rcx
.LEHB1:
	call	_ZNSt13random_device16_M_getval_pretr1Ev
	xorl	%r8d, %r8d
	movslq	%esi, %rbx
	movq	%rbx, %rcx
	andl	$7, %ecx
	je	.L270
	cmpq	$1, %rcx
	je	.L296
	cmpq	$2, %rcx
	je	.L297
	cmpq	$3, %rcx
	je	.L298
	cmpq	$4, %rcx
	je	.L299
	cmpq	$5, %rcx
	je	.L300
	cmpq	$6, %rcx
	jne	.L313
.L301:
	vxorps	%xmm0, %xmm0, %xmm0
	vcvtsi2ssq	%r8, %xmm0, %xmm0
	vmovss	%xmm0, (%rdi,%r8,4)
	addq	$1, %r8
.L300:
	vxorps	%xmm1, %xmm1, %xmm1
	vcvtsi2ssq	%r8, %xmm1, %xmm1
	vmovss	%xmm1, (%rdi,%r8,4)
	addq	$1, %r8
.L299:
	vxorps	%xmm2, %xmm2, %xmm2
	vcvtsi2ssq	%r8, %xmm2, %xmm2
	vmovss	%xmm2, (%rdi,%r8,4)
	addq	$1, %r8
.L298:
	vxorps	%xmm3, %xmm3, %xmm3
	vcvtsi2ssq	%r8, %xmm3, %xmm3
	vmovss	%xmm3, (%rdi,%r8,4)
	addq	$1, %r8
.L297:
	vxorps	%xmm4, %xmm4, %xmm4
	vcvtsi2ssq	%r8, %xmm4, %xmm4
	vmovss	%xmm4, (%rdi,%r8,4)
	addq	$1, %r8
.L296:
	vxorps	%xmm5, %xmm5, %xmm5
	vcvtsi2ssq	%r8, %xmm5, %xmm5
	vmovss	%xmm5, (%rdi,%r8,4)
	addq	$1, %r8
	cmpq	%r8, %rbx
	je	.L312
.L270:
	leaq	1(%r8), %r9
	vxorps	%xmm0, %xmm0, %xmm0
	vxorps	%xmm1, %xmm1, %xmm1
	vcvtsi2ssq	%r8, %xmm0, %xmm0
	leaq	2(%r8), %r10
	vxorps	%xmm2, %xmm2, %xmm2
	vcvtsi2ssq	%r9, %xmm1, %xmm1
	leaq	3(%r8), %r11
	vxorps	%xmm3, %xmm3, %xmm3
	leaq	4(%r8), %rsi
	leaq	5(%r8), %rax
	vxorps	%xmm4, %xmm4, %xmm4
	leaq	6(%r8), %rdx
	leaq	7(%r8), %rbp
	vxorps	%xmm5, %xmm5, %xmm5
	vmovss	%xmm0, (%rdi,%r8,4)
	vxorps	%xmm0, %xmm0, %xmm0
	vcvtsi2ssq	%r10, %xmm2, %xmm2
	addq	$8, %r8
	vmovss	%xmm1, (%rdi,%r9,4)
	vxorps	%xmm1, %xmm1, %xmm1
	vcvtsi2ssq	%r11, %xmm3, %xmm3
	vcvtsi2ssq	%rsi, %xmm4, %xmm4
	vcvtsi2ssq	%rax, %xmm5, %xmm5
	vcvtsi2ssq	%rdx, %xmm0, %xmm0
	vmovss	%xmm2, (%rdi,%r10,4)
	vcvtsi2ssq	%rbp, %xmm1, %xmm1
	vmovss	%xmm3, (%rdi,%r11,4)
	vmovss	%xmm4, (%rdi,%rsi,4)
	vmovss	%xmm5, (%rdi,%rax,4)
	vmovss	%xmm0, (%rdi,%rdx,4)
	vmovss	%xmm1, (%rdi,%rbp,4)
	cmpq	%r8, %rbx
	jne	.L270
.L312:
	addq	$2584, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L313:
	movl	$0x00000000, (%rdi)
	movl	$1, %r8d
	jmp	.L301
.L273:
	movq	32(%rsp), %rcx
	addq	$16, %rbx
	movq	%rax, %rdi
	cmpq	%rbx, %rcx
	je	.L311
	vzeroupper
	call	_ZdlPv
.L272:
	movq	%rdi, %rcx
	call	_Unwind_Resume
.LEHE1:
.L311:
	vzeroupper
	jmp	.L272
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA7819:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE7819-.LLSDACSB7819
.LLSDACSB7819:
	.uleb128 .LEHB0-.LFB7819
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L273-.LFB7819
	.uleb128 0
	.uleb128 .LEHB1-.LFB7819
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
.LLSDACSE7819:
	.text
	.seh_endproc
	.section .rdata,"dr"
.LC2:
	.ascii "diff at (\0"
.LC3:
	.ascii ", \0"
.LC4:
	.ascii "). Expected: \0"
.LC5:
	.ascii " but found: \0"
	.text
	.p2align 4,,15
	.def	_Z6verifyIPFviPKfS1_PfEEvRKT_S7_i;	.scl	3;	.type	32;	.endef
	.seh_proc	_Z6verifyIPFviPKfS1_PfEEvRKT_S7_i
_Z6verifyIPFviPKfS1_PfEEvRKT_S7_i:
.LFB8111:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$104, %rsp
	.seh_stackalloc	104
	vmovaps	%xmm6, 64(%rsp)
	.seh_savexmm	%xmm6, 64
	vmovaps	%xmm7, 80(%rsp)
	.seh_savexmm	%xmm7, 80
	.seh_endprologue
	movq	__imp__aligned_malloc(%rip), %r14
	movl	%r8d, %ebx
	movl	%r8d, %ebp
	movq	%rdx, %r15
	movq	%rcx, 48(%rsp)
	imull	%r8d, %ebx
	movl	$32, %edx
	movslq	%ebx, %rsi
	subl	$1, %ebx
	salq	$2, %rsi
	movq	%rsi, %rcx
	call	*%r14
	movl	%ebp, %edx
	movq	%rax, %rcx
	movq	%rax, %r13
	call	_ZL11fill_matrixPfi
	movq	%rsi, %rcx
	movl	$32, %edx
	call	*%r14
	movl	%ebp, %edx
	movq	%rax, %rcx
	movq	%rax, %r12
	call	_ZL11fill_matrixPfi
	movq	%rsi, %rcx
	movl	$32, %edx
	call	*%r14
	movl	%ebx, %r9d
	xorl	%edx, %edx
	addq	$1, %rbx
	shrl	$3, %r9d
	movq	%rax, %rcx
	movq	%rax, %rdi
	addq	$1, %r9
	salq	$5, %r9
	movq	%r9, %r8
	movq	%r9, 40(%rsp)
	call	memset
	movq	%rsi, %rcx
	movl	$32, %edx
	call	*%r14
	movq	40(%rsp), %r8
	xorl	%edx, %edx
	movq	%rax, %rcx
	movq	%rax, %rsi
	call	memset
	movq	48(%rsp), %rax
	movq	%rdi, %r9
	movq	%r12, %r8
	movq	%r13, %rdx
	movl	%ebp, %ecx
	call	*(%rax)
	movq	%r13, %rdx
	movq	%rsi, %r9
	movq	%r12, %r8
	movl	%ebp, %ecx
	call	*(%r15)
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rdx
	xorl	%r15d, %r15d
	vmovss	.LC0(%rip), %xmm6
	vmovsd	.LC1(%rip), %xmm7
	movq	.refptr._ZSt4cout(%rip), %r14
	movq	%rdx, 40(%rsp)
	testb	$1, %bl
	je	.L320
	vmovss	(%rdi), %xmm0
	vsubss	(%rsi), %xmm0, %xmm1
	vxorpd	%xmm3, %xmm3, %xmm3
	vandps	%xmm6, %xmm1, %xmm2
	vcvtss2sd	%xmm2, %xmm3, %xmm3
	vucomisd	%xmm7, %xmm3
	ja	.L343
	movl	$1, %r15d
	cmpq	$1, %rbx
	jne	.L320
.L341:
	movq	__imp__aligned_free(%rip), %rbx
	movq	%r13, %rcx
	call	*%rbx
	movq	%r12, %rcx
	call	*%rbx
	movq	%rdi, %rcx
	call	*%rbx
	nop
	vmovaps	64(%rsp), %xmm6
	movq	%rsi, %rcx
	movq	%rbx, %r8
	vmovaps	80(%rsp), %xmm7
	addq	$104, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	rex.W jmp	*%r8
	.p2align 4,,10
.L345:
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$9, %r8d
	movl	%r15d, 48(%rsp)
	leaq	.LC2(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	48(%rsp), %eax
	movq	%r14, %rcx
	cltd
	idivl	%ebp
	movl	%edx, 48(%rsp)
	movl	%eax, %edx
	call	_ZNSolsEi
	movl	$2, %r8d
	leaq	.LC3(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, 56(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	48(%rsp), %edx
	movq	56(%rsp), %rcx
	call	_ZNSolsEi
	movl	$13, %r8d
	leaq	.LC4(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, 48(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	48(%rsp), %rcx
	vxorpd	%xmm1, %xmm1, %xmm1
	vcvtss2sd	(%rdi,%r15,4), %xmm1, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	leaq	.LC5(%rip), %rdx
	movl	$12, %r8d
	movq	%rax, %rcx
	movq	%rax, 48(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	48(%rsp), %rcx
	vxorpd	%xmm1, %xmm1, %xmm1
	vcvtss2sd	(%rsi,%r15,4), %xmm1, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %rcx
	movq	(%rax), %rax
	movq	-24(%rax), %rdx
	movq	240(%rcx,%rdx), %r11
	testq	%r11, %r11
	je	.L339
	cmpb	$0, 56(%r11)
	je	.L318
	movsbl	67(%r11), %edx
.L319:
	call	_ZNSo3putEc
	movq	%rax, %rcx
	call	_ZNSo5flushEv
.L315:
	addq	$1, %r15
	vxorpd	%xmm5, %xmm5, %xmm5
	vmovss	(%rdi,%r15,4), %xmm2
	vsubss	(%rsi,%r15,4), %xmm2, %xmm3
	vandps	%xmm6, %xmm3, %xmm4
	vcvtss2sd	%xmm4, %xmm5, %xmm5
	vucomisd	%xmm7, %xmm5
	ja	.L344
.L337:
	addq	$1, %r15
	cmpq	%r15, %rbx
	je	.L341
.L320:
	vmovss	(%rdi,%r15,4), %xmm4
	vsubss	(%rsi,%r15,4), %xmm4, %xmm5
	vxorpd	%xmm1, %xmm1, %xmm1
	vandps	%xmm6, %xmm5, %xmm0
	vcvtss2sd	%xmm0, %xmm1, %xmm1
	vucomisd	%xmm7, %xmm1
	jbe	.L315
	jmp	.L345
	.p2align 4,,10
.L344:
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$9, %r8d
	movl	%r15d, 48(%rsp)
	leaq	.LC2(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	48(%rsp), %eax
	movq	%r14, %rcx
	cltd
	idivl	%ebp
	movl	%edx, 48(%rsp)
	movl	%eax, %edx
	call	_ZNSolsEi
	movl	$2, %r8d
	leaq	.LC3(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, 56(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	48(%rsp), %edx
	movq	56(%rsp), %rcx
	call	_ZNSolsEi
	movl	$13, %r8d
	leaq	.LC4(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, 48(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	48(%rsp), %rcx
	vxorpd	%xmm1, %xmm1, %xmm1
	vcvtss2sd	(%rdi,%r15,4), %xmm1, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$12, %r8d
	leaq	.LC5(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, 48(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	48(%rsp), %rcx
	vxorpd	%xmm1, %xmm1, %xmm1
	vcvtss2sd	(%rsi,%r15,4), %xmm1, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %r8
	movq	(%rax), %rax
	movq	-24(%rax), %rdx
	movq	240(%r8,%rdx), %r11
	testq	%r11, %r11
	je	.L339
	cmpb	$0, 56(%r11)
	je	.L346
	movsbl	67(%r11), %edx
.L333:
	movq	%r8, %rcx
	call	_ZNSo3putEc
	movq	%rax, %rcx
	call	_ZNSo5flushEv
	jmp	.L337
	.p2align 4,,10
.L318:
	movq	%rcx, 56(%rsp)
	movq	%r11, %rcx
	movq	%r11, 48(%rsp)
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	48(%rsp), %r9
	movl	$10, %edx
	movq	56(%rsp), %rcx
	movq	(%r9), %r8
	movq	48(%r8), %r10
	cmpq	40(%rsp), %r10
	je	.L319
	movq	%rcx, 48(%rsp)
	movq	%r9, %rcx
	call	*%r10
	movq	48(%rsp), %rcx
	movsbl	%al, %edx
	jmp	.L319
	.p2align 4,,10
.L346:
	movq	%r11, %rcx
	movq	%r8, 56(%rsp)
	movq	%r11, 48(%rsp)
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	48(%rsp), %r9
	movl	$10, %edx
	movq	56(%rsp), %r8
	movq	(%r9), %r10
	movq	48(%r10), %rax
	cmpq	40(%rsp), %rax
	je	.L333
	movq	%r8, 48(%rsp)
	movq	%r9, %rcx
	call	*%rax
	movq	48(%rsp), %r8
	movsbl	%al, %edx
	jmp	.L333
	.p2align 4,,10
.L343:
	movl	$9, %r8d
	movq	%r14, %rcx
	leaq	.LC2(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	xorl	%edx, %edx
	call	_ZNSolsEi
	movl	$2, %r8d
	leaq	.LC3(%rip), %rdx
	movq	%rax, %r15
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%r15, %rcx
	xorl	%edx, %edx
	call	_ZNSolsEi
	movl	$13, %r8d
	leaq	.LC4(%rip), %rdx
	movq	%rax, %r15
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%r15, %rcx
	vxorpd	%xmm1, %xmm1, %xmm1
	vcvtss2sd	(%rdi), %xmm1, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$12, %r8d
	leaq	.LC5(%rip), %rdx
	movq	%rax, %r15
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%r15, %rcx
	vxorpd	%xmm1, %xmm1, %xmm1
	vcvtss2sd	(%rsi), %xmm1, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	movq	(%rax), %r11
	movq	%rax, %rcx
	movq	-24(%r11), %r10
	movq	240(%rax,%r10), %r15
	testq	%r15, %r15
	je	.L339
	cmpb	$0, 56(%r15)
	je	.L347
	movsbl	67(%r15), %edx
.L327:
	call	_ZNSo3putEc
	movl	$1, %r15d
	movq	%rax, %rcx
	call	_ZNSo5flushEv
	cmpq	$1, %rbx
	jne	.L320
	jmp	.L341
	.p2align 4,,10
.L347:
	movq	%r15, %rcx
	movq	%rax, 48(%rsp)
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%r15), %r9
	movl	$10, %edx
	movq	48(%rsp), %rcx
	movq	48(%r9), %r8
	cmpq	40(%rsp), %r8
	je	.L327
	movq	%r15, %rcx
	call	*%r8
	movq	48(%rsp), %rcx
	movsbl	%al, %edx
	jmp	.L327
.L339:
	call	_ZSt16__throw_bad_castv
	nop
	.seh_endproc
	.section .rdata,"dr"
.LC8:
	.ascii ",\0"
	.text
	.p2align 4,,15
	.def	_Z20throughput_benchmarkIPFviPKfS1_PfEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiiiRKT_.constprop.25;	.scl	3;	.type	32;	.endef
	.seh_proc	_Z20throughput_benchmarkIPFviPKfS1_PfEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiiiRKT_.constprop.25
_Z20throughput_benchmarkIPFviPKfS1_PfEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiiiRKT_.constprop.25:
.LFB8446:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$104, %rsp
	.seh_stackalloc	104
	vmovaps	%xmm6, 80(%rsp)
	.seh_savexmm	%xmm6, 80
	.seh_endprologue
	movq	__imp__aligned_malloc(%rip), %r14
	movl	$10, %r15d
	movl	%edx, %r13d
	movq	%r8, %r12
	movl	%edx, %ebx
	movq	%rcx, 56(%rsp)
	imull	%edx, %r13d
	movl	$32, %edx
	movslq	%r13d, %rsi
	subl	$1, %r13d
	salq	$2, %rsi
	shrl	$3, %r13d
	movq	%rsi, %rcx
	addq	$1, %r13
	call	*%r14
	movl	%ebx, %edx
	salq	$5, %r13
	movq	%rax, %rcx
	movq	%rax, %rbp
	call	_ZL11fill_matrixPfi
	movq	%rsi, %rcx
	movl	$32, %edx
	call	*%r14
	movl	%ebx, %edx
	movq	%rax, %rcx
	movq	%rax, %rdi
	call	_ZL11fill_matrixPfi
	movq	%rsi, %rcx
	movl	$32, %edx
	call	*%r14
	movq	%r13, %r8
	xorl	%edx, %edx
	movq	%rax, %rcx
	movq	%rax, %rsi
	call	memset
.L349:
	movq	%rsi, %r9
	movq	%rdi, %r8
	movq	%rbp, %rdx
	movl	%ebx, %ecx
	call	*(%r12)
	movl	%ebx, %edx
	movq	%rbp, %rcx
	call	_ZL11fill_matrixPfi
	movl	%ebx, %edx
	movq	%rdi, %rcx
	call	_ZL11fill_matrixPfi
	xorl	%edx, %edx
	movq	%r13, %r8
	movq	%rsi, %rcx
	call	memset
	movq	%rsi, %r9
	movq	%rdi, %r8
	movq	%rbp, %rdx
	movl	%ebx, %ecx
	call	*(%r12)
	movl	%ebx, %edx
	movq	%rbp, %rcx
	call	_ZL11fill_matrixPfi
	movl	%ebx, %edx
	movq	%rdi, %rcx
	call	_ZL11fill_matrixPfi
	xorl	%edx, %edx
	movq	%r13, %r8
	movq	%rsi, %rcx
	call	memset
	movq	%rsi, %r9
	movq	%rdi, %r8
	movq	%rbp, %rdx
	movl	%ebx, %ecx
	call	*(%r12)
	movl	%ebx, %edx
	movq	%rbp, %rcx
	call	_ZL11fill_matrixPfi
	movl	%ebx, %edx
	movq	%rdi, %rcx
	call	_ZL11fill_matrixPfi
	xorl	%edx, %edx
	movq	%r13, %r8
	movq	%rsi, %rcx
	call	memset
	movq	%rsi, %r9
	movq	%rdi, %r8
	movq	%rbp, %rdx
	movl	%ebx, %ecx
	call	*(%r12)
	movl	%ebx, %edx
	movq	%rbp, %rcx
	call	_ZL11fill_matrixPfi
	movl	%ebx, %edx
	movq	%rdi, %rcx
	call	_ZL11fill_matrixPfi
	xorl	%edx, %edx
	movq	%r13, %r8
	movq	%rsi, %rcx
	call	memset
	movq	%rdi, %r8
	movq	%rsi, %r9
	movq	%rbp, %rdx
	movl	%ebx, %ecx
	call	*(%r12)
	movl	%ebx, %edx
	movq	%rbp, %rcx
	call	_ZL11fill_matrixPfi
	movl	%ebx, %edx
	movq	%rdi, %rcx
	call	_ZL11fill_matrixPfi
	xorl	%edx, %edx
	movq	%r13, %r8
	movq	%rsi, %rcx
	call	memset
	subl	$5, %r15d
	jne	.L349
	movl	$100, 48(%rsp)
	xorl	%r14d, %r14d
	.p2align 4,,10
.L351:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, %r15
	movl	$100, %eax
.L350:
	movl	%eax, 32(%rsp)
	movq	%rsi, %r9
	movq	%rdi, %r8
	movq	%rbp, %rdx
	movl	%ebx, %ecx
	call	*(%r12)
	movq	%rsi, %r9
	movq	%rdi, %r8
	movq	%rbp, %rdx
	movl	%ebx, %ecx
	call	*(%r12)
	movq	%rsi, %r9
	movq	%rdi, %r8
	movq	%rbp, %rdx
	movl	%ebx, %ecx
	call	*(%r12)
	movq	%rsi, %r9
	movq	%rdi, %r8
	movq	%rbp, %rdx
	movl	%ebx, %ecx
	call	*(%r12)
	movq	%rsi, %r9
	movq	%rdi, %r8
	movq	%rbp, %rdx
	movl	%ebx, %ecx
	call	*(%r12)
	movq	%rsi, %r9
	movq	%rdi, %r8
	movq	%rbp, %rdx
	movl	%ebx, %ecx
	call	*(%r12)
	movq	%rsi, %r9
	movq	%rdi, %r8
	movq	%rbp, %rdx
	movl	%ebx, %ecx
	call	*(%r12)
	movq	%rsi, %r9
	movq	%rdi, %r8
	movq	%rbp, %rdx
	movl	%ebx, %ecx
	call	*(%r12)
	movq	%rsi, %r9
	movq	%rdi, %r8
	movq	%rbp, %rdx
	movl	%ebx, %ecx
	call	*(%r12)
	movq	%rsi, %r9
	movq	%rdi, %r8
	movq	%rbp, %rdx
	movl	%ebx, %ecx
	call	*(%r12)
	movl	32(%rsp), %eax
	subl	$10, %eax
	jne	.L350
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movl	%ebx, %edx
	movq	%rbp, %rcx
	subq	%r15, %rax
	addq	%rax, %r14
	call	_ZL11fill_matrixPfi
	movl	%ebx, %edx
	movq	%rdi, %rcx
	call	_ZL11fill_matrixPfi
	xorl	%edx, %edx
	movq	%r13, %r8
	movq	%rsi, %rcx
	call	memset
	subl	$1, 48(%rsp)
	jne	.L351
	vxorpd	%xmm1, %xmm1, %xmm1
	vxorpd	%xmm6, %xmm6, %xmm6
	vmovsd	.LC6(%rip), %xmm4
	movq	56(%rsp), %rdx
	vcvtsi2sd	%ebx, %xmm1, %xmm1
	movq	.refptr._ZSt4cout(%rip), %rcx
	leaq	64(%rsp), %r13
	vcvtsi2sdq	%r14, %xmm6, %xmm6
	movq	8(%rdx), %r8
	movq	(%rdx), %rdx
	vaddsd	%xmm1, %xmm1, %xmm0
	vmulsd	%xmm1, %xmm0, %xmm2
	vmulsd	.LC7(%rip), %xmm6, %xmm0
	vmulsd	%xmm1, %xmm2, %xmm3
	vmovsd	%xmm0, 32(%rsp)
	vmulsd	%xmm4, %xmm3, %xmm5
	vmulsd	%xmm4, %xmm5, %xmm1
	vmovsd	%xmm1, 48(%rsp)
	fldl	48(%rsp)
	fdivl	32(%rsp)
	fstpt	32(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$1, %r8d
	leaq	.LC8(%rip), %rdx
	movq	%rax, %r12
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	%ebx, %edx
	movq	%r12, %rcx
	call	_ZNSolsEi
	movl	$1, %r8d
	leaq	.LC8(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	vdivsd	.LC9(%rip), %xmm6, %xmm6
	movq	%r13, %rdx
	movq	%rbx, %rcx
	vmovsd	%xmm6, 48(%rsp)
	flds	.LC10(%rip)
	fdivl	48(%rsp)
	fstpt	64(%rsp)
	call	_ZNSo9_M_insertIeEERSoT_
	movl	$1, %r8d
	leaq	.LC8(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %r14
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	fldt	32(%rsp)
	movq	%r14, %rcx
	movq	%r13, %rdx
	fstpt	64(%rsp)
	call	_ZNSo9_M_insertIeEERSoT_
	movq	(%rax), %rcx
	movq	%rax, %r15
	movq	-24(%rcx), %r8
	movq	240(%rax,%r8), %r12
	testq	%r12, %r12
	je	.L372
	cmpb	$0, 56(%r12)
	je	.L353
	movsbl	67(%r12), %edx
.L354:
	movq	%r15, %rcx
	call	_ZNSo3putEc
	movq	%rax, %rcx
	call	_ZNSo5flushEv
	movq	%rbp, %rcx
	movq	__imp__aligned_free(%rip), %rbp
	call	*%rbp
	movq	%rdi, %rcx
	call	*%rbp
	nop
	vmovaps	80(%rsp), %xmm6
	movq	%rsi, %rcx
	movq	%rbp, %r11
	addq	$104, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	rex.W jmp	*%r11
	.p2align 4,,10
.L353:
	movq	%r12, %rcx
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%r12), %r9
	movl	$10, %edx
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %r10
	movq	48(%r9), %rax
	cmpq	%r10, %rax
	je	.L354
	movq	%r12, %rcx
	call	*%rax
	movsbl	%al, %edx
	jmp	.L354
.L372:
	call	_ZSt16__throw_bad_castv
	nop
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC12:
	.ascii "name\0"
.LC13:
	.ascii "size\0"
.LC14:
	.ascii "throughput (ops/s)\0"
.LC15:
	.ascii "flops/cycle\0"
	.section	.text.startup,"x"
	.p2align 4,,15
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB7833:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$152, %rsp
	.seh_stackalloc	152
	.seh_endprologue
	leaq	_ZL23mmul_saxpy_avx_unrollediPKfS0_Pf(%rip), %rbx
	leaq	_ZL20mmul_saxpy_avx_tilediPKfS0_Pf(%rip), %rsi
	movabsq	$8530204144399049075, %r12
	leaq	_ZL29mmul_saxpy_avx_tiled_unrollediPKfS0_Pf(%rip), %rdi
	movabsq	$7234307589422607989, %r15
	call	__main
	movl	$4, %r8d
	movq	%rbx, 80(%rsp)
	leaq	_ZL14mmul_saxpy_avxiPKfS0_Pf(%rip), %rcx
	movq	%rcx, 72(%rsp)
	leaq	64(%rsp), %rbp
	leaq	88(%rsp), %r14
	movq	.refptr._ZSt4cout(%rip), %rcx
	movq	%rsi, 88(%rsp)
	leaq	96(%rsp), %r13
	movl	$64, %esi
	leaq	_ZL12mmul_blockediPKfS0_Pf(%rip), %rdx
	leaq	_ZL10mmul_saxpyiPKfS0_Pf(%rip), %rax
	movq	%rdx, 64(%rsp)
	leaq	112(%rsp), %rbx
	leaq	.LC12(%rip), %rdx
	movq	%rdi, 96(%rsp)
	leaq	56(%rsp), %rdi
	movq	%rax, 56(%rsp)
.LEHB2:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$1, %r8d
	leaq	.LC8(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$4, %r8d
	leaq	.LC13(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$1, %r8d
	leaq	.LC8(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$18, %r8d
	leaq	.LC14(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$1, %r8d
	leaq	.LC8(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$11, %r8d
	leaq	.LC15(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	leaq	72(%rsp), %r8
	movq	%rbp, 32(%rsp)
	movq	%r8, 40(%rsp)
	.p2align 4,,10
.L374:
	movl	%esi, %r8d
	movq	%r14, %rdx
	movq	%rdi, %rcx
	call	_Z6verifyIPFviPKfS1_PfEEvRKT_S7_i
	movl	%esi, %r8d
	movq	%r13, %rdx
	movq	%rdi, %rcx
	call	_Z6verifyIPFviPKfS1_PfEEvRKT_S7_i
.LEHE2:
	leaq	16(%rbx), %r9
	movq	32(%rsp), %r8
	movl	%esi, %edx
	movl	$25963, %r10d
	movq	%r9, 112(%rsp)
	movq	%rbx, %rcx
	movl	$1668246626, 16(%rbx)
	movw	%r10w, 20(%rbx)
	movb	$100, 22(%rbx)
	movq	$7, 120(%rsp)
	movb	$0, 135(%rsp)
.LEHB3:
	call	_Z20throughput_benchmarkIPFviPKfS1_PfEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiiiRKT_.constprop.25
.LEHE3:
	movq	112(%rsp), %rcx
	leaq	16(%rbx), %r11
	cmpq	%r11, %rcx
	je	.L375
	call	_ZdlPv
.L375:
	leaq	16(%rbx), %rax
	movq	%rdi, %r8
	movl	%esi, %edx
	movq	%rbx, %rcx
	movq	%rax, 112(%rsp)
	movl	$1886937459, 16(%rbx)
	movb	$121, 20(%rbx)
	movq	$5, 120(%rsp)
	movb	$0, 133(%rsp)
.LEHB4:
	call	_Z20throughput_benchmarkIPFviPKfS1_PfEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiiiRKT_.constprop.25
.LEHE4:
	movq	112(%rsp), %rcx
	leaq	16(%rbx), %rdx
	cmpq	%rdx, %rcx
	je	.L376
	call	_ZdlPv
.L376:
	leaq	16(%rbx), %rcx
	movq	40(%rsp), %r8
	movl	%esi, %edx
	movq	%rcx, 112(%rsp)
	movq	%rbx, %rcx
	movq	%r12, 16(%rbx)
	movb	$120, 24(%rbx)
	movq	$9, 120(%rsp)
	movb	$0, 137(%rsp)
.LEHB5:
	call	_Z20throughput_benchmarkIPFviPKfS1_PfEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiiiRKT_.constprop.25
.LEHE5:
	movq	112(%rsp), %rcx
	leaq	16(%rbx), %rbp
	cmpq	%rbp, %rcx
	je	.L377
	call	_ZdlPv
.L377:
	leaq	16(%rbx), %r8
	leaq	104(%rsp), %rbp
	movq	%rbx, %rcx
	movq	$18, 104(%rsp)
	movq	%r8, 112(%rsp)
	movq	%rbp, %rdx
	xorl	%r8d, %r8d
.LEHB6:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERyy
.LEHE6:
	movq	104(%rsp), %r9
	movl	$25701, %edx
	movabsq	$8530204144399049075, %r10
	movabsq	$7812741990851108728, %r11
	movq	%rax, 112(%rsp)
	leaq	80(%rsp), %r8
	movq	%r9, 128(%rsp)
	movw	%dx, 16(%rax)
	movl	%esi, %edx
	movq	%r10, (%rax)
	movq	%r11, 8(%rax)
	movq	104(%rsp), %rax
	movq	112(%rsp), %rcx
	movq	%rax, 120(%rsp)
	movb	$0, (%rcx,%rax)
	movq	%rbx, %rcx
.LEHB7:
	call	_Z20throughput_benchmarkIPFviPKfS1_PfEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiiiRKT_.constprop.25
.LEHE7:
	movq	112(%rsp), %rcx
	leaq	16(%rbx), %r8
	cmpq	%r8, %rcx
	je	.L378
	call	_ZdlPv
.L378:
	leaq	16(%rbx), %r9
	movl	$25964, %r10d
	movq	%r14, %r8
	movl	%esi, %edx
	movq	%r9, 112(%rsp)
	movq	%rbx, %rcx
	movq	%r12, 16(%rbx)
	movl	$1769234296, 24(%rbx)
	movw	%r10w, 28(%rbx)
	movb	$100, 30(%rbx)
	movq	$15, 120(%rsp)
	movb	$0, 143(%rsp)
.LEHB8:
	call	_Z20throughput_benchmarkIPFviPKfS1_PfEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiiiRKT_.constprop.25
.LEHE8:
	movq	112(%rsp), %rcx
	leaq	16(%rbx), %r11
	cmpq	%r11, %rcx
	je	.L379
	call	_ZdlPv
.L379:
	leaq	16(%rbx), %rdx
	xorl	%r8d, %r8d
	movq	%rbx, %rcx
	movq	$24, 104(%rsp)
	movq	%rdx, 112(%rsp)
	movq	%rbp, %rdx
.LEHB9:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERyy
.LEHE9:
	movq	104(%rsp), %rbp
	movl	%esi, %edx
	movabsq	$8530204144399049075, %r8
	movabsq	$6873730447574327160, %rcx
	movq	%rax, 112(%rsp)
	movq	%rbp, 128(%rsp)
	movq	%r8, (%rax)
	movq	%r13, %r8
	movq	%rcx, 8(%rax)
	movq	%rbx, %rcx
	movq	%r15, 16(%rax)
	movq	104(%rsp), %rax
	movq	112(%rsp), %r9
	movq	%rax, 120(%rsp)
	movb	$0, (%r9,%rax)
.LEHB10:
	call	_Z20throughput_benchmarkIPFviPKfS1_PfEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiiiRKT_.constprop.25
.LEHE10:
	movq	112(%rsp), %rcx
	leaq	16(%rbx), %r10
	cmpq	%r10, %rcx
	je	.L380
	call	_ZdlPv
	addl	$64, %esi
	cmpl	$1088, %esi
	jne	.L374
.L411:
	xorl	%eax, %eax
	addq	$152, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,10
.L380:
	addl	$64, %esi
	cmpl	$1088, %esi
	jne	.L374
	jmp	.L411
.L395:
.L414:
	movq	112(%rsp), %rcx
	addq	$16, %rbx
	movq	%rax, %rsi
	cmpq	%rbx, %rcx
	je	.L410
	vzeroupper
	call	_ZdlPv
.L394:
	movq	%rsi, %rcx
.LEHB11:
	call	_Unwind_Resume
.LEHE11:
.L400:
	jmp	.L414
.L410:
	vzeroupper
	jmp	.L394
.L399:
	jmp	.L414
.L398:
	jmp	.L414
.L397:
	jmp	.L414
.L396:
	jmp	.L414
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA7833:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE7833-.LLSDACSB7833
.LLSDACSB7833:
	.uleb128 .LEHB2-.LFB7833
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB7833
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L395-.LFB7833
	.uleb128 0
	.uleb128 .LEHB4-.LFB7833
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L396-.LFB7833
	.uleb128 0
	.uleb128 .LEHB5-.LFB7833
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L397-.LFB7833
	.uleb128 0
	.uleb128 .LEHB6-.LFB7833
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB7-.LFB7833
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L398-.LFB7833
	.uleb128 0
	.uleb128 .LEHB8-.LFB7833
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L399-.LFB7833
	.uleb128 0
	.uleb128 .LEHB9-.LFB7833
	.uleb128 .LEHE9-.LEHB9
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB10-.LFB7833
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L400-.LFB7833
	.uleb128 0
	.uleb128 .LEHB11-.LFB7833
	.uleb128 .LEHE11-.LEHB11
	.uleb128 0
	.uleb128 0
.LLSDACSE7833:
	.section	.text.startup,"x"
	.seh_endproc
	.p2align 4,,15
	.def	_GLOBAL__sub_I_main;	.scl	3;	.type	32;	.endef
	.seh_proc	_GLOBAL__sub_I_main
_GLOBAL__sub_I_main:
.LFB8412:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	leaq	_ZStL8__ioinit(%rip), %rcx
	call	_ZNSt8ios_base4InitC1Ev
	leaq	__tcf_0(%rip), %rcx
	addq	$40, %rsp
	jmp	atexit
	.seh_endproc
	.section	.ctors,"w"
	.align 8
	.quad	_GLOBAL__sub_I_main
.lcomm _ZStL8__ioinit,1,1
	.section .rdata,"dr"
	.align 16
.LC0:
	.long	2147483647
	.long	0
	.long	0
	.long	0
	.align 8
.LC1:
	.long	-1998362383
	.long	1055193269
	.align 8
.LC6:
	.long	0
	.long	1079574528
	.align 8
.LC7:
	.long	-858993459
	.long	1074056396
	.align 8
.LC9:
	.long	0
	.long	1104006501
	.align 4
.LC10:
	.long	1176256512
	.ident	"GCC: (x86_64-posix-seh-rev1, Built by MinGW-W64 project) 7.2.0"
	.def	_ZNSt8ios_base4InitD1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNSt13random_device14_M_init_pretr1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE;	.scl	2;	.type	32;	.endef
	.def	_ZdlPv;	.scl	2;	.type	32;	.endef
	.def	_ZNSt13random_device16_M_getval_pretr1Ev;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
	.def	memset;	.scl	2;	.type	32;	.endef
	.def	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x;	.scl	2;	.type	32;	.endef
	.def	_ZNSolsEi;	.scl	2;	.type	32;	.endef
	.def	_ZNSo9_M_insertIdEERSoT_;	.scl	2;	.type	32;	.endef
	.def	_ZNSo3putEc;	.scl	2;	.type	32;	.endef
	.def	_ZNSo5flushEv;	.scl	2;	.type	32;	.endef
	.def	_ZNKSt5ctypeIcE13_M_widen_initEv;	.scl	2;	.type	32;	.endef
	.def	_ZSt16__throw_bad_castv;	.scl	2;	.type	32;	.endef
	.def	_ZNSt6chrono3_V212system_clock3nowEv;	.scl	2;	.type	32;	.endef
	.def	_ZNSo9_M_insertIeEERSoT_;	.scl	2;	.type	32;	.endef
	.def	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERyy;	.scl	2;	.type	32;	.endef
	.def	_ZNSt8ios_base4InitC1Ev;	.scl	2;	.type	32;	.endef
	.def	atexit;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr._ZSt4cout, "dr"
	.globl	.refptr._ZSt4cout
	.linkonce	discard
.refptr._ZSt4cout:
	.quad	_ZSt4cout
