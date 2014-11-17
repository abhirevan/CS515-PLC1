	.align 4
	.text
.globl program
program:
	pushl %ebp
	movl %esp,%ebp
	subl $800,%esp
	jmp __358
__358:
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-8(%ebp)
	movl -8(%ebp),%ecx
	movl %ecx,-4(%ebp)
	jmp __359
__359:
	movl -4(%ebp),%ecx
	movl %ecx,-12(%ebp)
	movl $10,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-16(%ebp)
	movl -12(%ebp),%ebx
	movl -16(%ebp),%ecx
	movl $0,-20(%ebp)
	cmpl %ecx,%ebx
	setl -20(%ebp)
	cmpl $0,-20(%ebp)
	je __361
	jne __360
__360:
	movl -4(%ebp),%ecx
	movl %ecx,-24(%ebp)
	movl $2,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-28(%ebp)
	movl -24(%ebp),%ebx
	movl -28(%ebp),%ecx
	movl $0,-32(%ebp)
	cmpl %ecx,%ebx
	setl -32(%ebp)
	cmpl $0,-32(%ebp)
	je __362
	jne __363
__363:
	movl $100,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-36(%ebp)
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-40(%ebp)
	movl -40(%ebp),%ecx
	movl -36(%ebp),%eax
	orl %ecx,%eax
	movl %eax,-44(%ebp)
	movl -44(%ebp),%ecx
	movl %ecx,-4(%ebp)
	jmp __364
__364:
	jmp __362
__362:
	jmp __359
__361:
	movl -4(%ebp),%ecx
	movl %ecx,-48(%ebp)
	movl -48(%ebp),%eax
	addl $800,%esp
	movl %esp,%ebp
	popl %ebp
	ret
