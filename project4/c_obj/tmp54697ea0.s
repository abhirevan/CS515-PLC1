	.align 4
	.text
.globl program
program:
	pushl %ebp
	movl %esp,%ebp
	subl $800,%esp
	jmp __397
__397:
	movl $0,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-12(%ebp)
	movl -12(%ebp),%ecx
	movl %ecx,-4(%ebp)
	movl $5,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-16(%ebp)
	movl $100,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-20(%ebp)
	movl -20(%ebp),%ecx
	movl -16(%ebp),%eax
	sarl %cl, %eax
	movl %eax,-24(%ebp)
	movl -24(%ebp),%ecx
	movl %ecx,-8(%ebp)
	jmp __398
__398:
	movl -4(%ebp),%ecx
	movl %ecx,-28(%ebp)
	movl $0,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-32(%ebp)
	movl -28(%ebp),%ebx
	movl -32(%ebp),%ecx
	movl $0,-36(%ebp)
	cmpl %ecx,%ebx
	sete -36(%ebp)
	cmpl $0,-36(%ebp)
	je __399
	jne __400
__400:
	movl -4(%ebp),%ecx
	movl %ecx,-40(%ebp)
	movl $10,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-44(%ebp)
	movl -40(%ebp),%ebx
	movl -44(%ebp),%ecx
	movl $0,-48(%ebp)
	cmpl %ecx,%ebx
	setl -48(%ebp)
	cmpl $0,-48(%ebp)
	je __402
	jne __401
__401:
	movl -8(%ebp),%ecx
	movl %ecx,-52(%ebp)
	movl $5,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-56(%ebp)
	movl -52(%ebp),%ebx
	movl -56(%ebp),%ecx
	movl $0,-60(%ebp)
	cmpl %ecx,%ebx
	sete -60(%ebp)
	cmpl $0,-60(%ebp)
	je __406
	jne __404
__404:
	movl -4(%ebp),%ecx
	movl %ecx,-64(%ebp)
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-68(%ebp)
	movl -68(%ebp),%ecx
	movl -64(%ebp),%eax
	addl %ecx,%eax
	movl %eax,-72(%ebp)
	movl -72(%ebp),%ecx
	movl %ecx,-4(%ebp)
	jmp __405
__406:
	movl -4(%ebp),%ecx
	movl %ecx,-76(%ebp)
	movl $3,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-80(%ebp)
	movl -80(%ebp),%ecx
	movl -76(%ebp),%eax
	addl %ecx,%eax
	movl %eax,-84(%ebp)
	movl -84(%ebp),%ecx
	movl %ecx,-4(%ebp)
	jmp __407
__405:
	jmp __408
__407:
	jmp __408
__408:
	jmp __400
__402:
	jmp __399
__399:
	movl -4(%ebp),%ecx
	movl %ecx,-88(%ebp)
	movl -88(%ebp),%eax
	addl $800,%esp
	movl %esp,%ebp
	popl %ebp
	ret
