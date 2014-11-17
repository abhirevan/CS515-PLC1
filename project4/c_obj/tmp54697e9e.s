	.align 4
	.text
.globl program
program:
	pushl %ebp
	movl %esp,%ebp
	subl $800,%esp
	jmp __374
__374:
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-8(%ebp)
	movl $0,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-12(%ebp)
	movl -8(%ebp),%ebx
	movl -12(%ebp),%ecx
	movl $0,-16(%ebp)
	cmpl %ecx,%ebx
	setg -16(%ebp)
	movl -16(%ebp),%ecx
	movl %ecx,-4(%ebp)
	jmp __375
__375:
	movl -4(%ebp),%ecx
	movl %ecx,-24(%ebp)
	movl -24(%ebp),%ecx
	movl %ecx,-20(%ebp)
	jmp __376
__376:
	movl -4(%ebp),%ecx
	movl %ecx,-28(%ebp)
	movl -20(%ebp),%ecx
	movl %ecx,-32(%ebp)
	movl -28(%ebp),%ebx
	movl -32(%ebp),%ecx
	movl $0,-36(%ebp)
	cmpl %ecx,%ebx
	sete -36(%ebp)
	cmpl $0,-36(%ebp)
	je __377
	jne __378
__378:
	jmp __379
__379:
	jmp __380
__380:
	movl -4(%ebp),%ecx
	movl %ecx,-40(%ebp)
	movl -20(%ebp),%ecx
	movl %ecx,-44(%ebp)
	movl -40(%ebp),%ebx
	movl -44(%ebp),%ecx
	movl $0,-48(%ebp)
	cmpl %ecx,%ebx
	sete -48(%ebp)
	cmpl $0,-48(%ebp)
	je __381
	jne __382
__382:
	movl $42,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-52(%ebp)
	movl -52(%ebp),%ecx
	movl %ecx,-20(%ebp)
	jmp __383
__383:
	jmp __381
__381:
	movl -20(%ebp),%ecx
	movl %ecx,-56(%ebp)
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-60(%ebp)
	movl -60(%ebp),%ecx
	movl -56(%ebp),%eax
	subl %ecx,%eax
	movl %eax,-64(%ebp)
	movl -64(%ebp),%ecx
	movl %ecx,-4(%ebp)
	jmp __384
__384:
	jmp __376
__377:
	movl -4(%ebp),%ecx
	movl %ecx,-68(%ebp)
	movl -68(%ebp),%eax
	addl $800,%esp
	movl %esp,%ebp
	popl %ebp
	ret
