	.align 4
	.text
.globl program
program:
	pushl %ebp
	movl %esp,%ebp
	subl $800,%esp
	jmp __334
__334:
	movl $0,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-12(%ebp)
	movl -12(%ebp),%ecx
	movl %ecx,-4(%ebp)
	movl -4(%ebp),%ecx
	movl %ecx,-16(%ebp)
	movl -4(%ebp),%ecx
	movl %ecx,-20(%ebp)
	movl -20(%ebp),%ecx
	movl -16(%ebp),%eax
	imull %ecx, %eax
	movl %eax,-24(%ebp)
	movl $98,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-28(%ebp)
	movl -28(%ebp),%ecx
	movl -24(%ebp),%eax
	addl %ecx,%eax
	movl %eax,-32(%ebp)
	movl -32(%ebp),%ecx
	movl %ecx,-8(%ebp)
	jmp __335
__335:
	jmp __336
__336:
	movl -4(%ebp),%ecx
	movl %ecx,-36(%ebp)
	movl $100,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-40(%ebp)
	movl -36(%ebp),%ebx
	movl -40(%ebp),%ecx
	movl $0,-44(%ebp)
	cmpl %ecx,%ebx
	setl -44(%ebp)
	cmpl $0,-44(%ebp)
	je __337
	jne __338
__338:
	movl -8(%ebp),%ecx
	movl %ecx,-48(%ebp)
	movl $100,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-52(%ebp)
	movl -48(%ebp),%ebx
	movl -52(%ebp),%ecx
	movl $0,-56(%ebp)
	cmpl %ecx,%ebx
	setl -56(%ebp)
	cmpl $0,-56(%ebp)
	je __342
	jne __340
__340:
	movl -4(%ebp),%ecx
	movl %ecx,-60(%ebp)
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-64(%ebp)
	movl -64(%ebp),%ecx
	movl -60(%ebp),%eax
	addl %ecx,%eax
	movl %eax,-68(%ebp)
	movl -68(%ebp),%ecx
	movl %ecx,-4(%ebp)
	jmp __341
__342:
	movl $1000,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-72(%ebp)
	movl -72(%ebp),%ecx
	movl %ecx,-4(%ebp)
	jmp __343
__341:
	jmp __344
__343:
	jmp __344
__344:
	jmp __345
__345:
	jmp __336
__337:
	movl -4(%ebp),%ecx
	movl %ecx,-76(%ebp)
	movl -76(%ebp),%eax
	addl $800,%esp
	movl %esp,%ebp
	popl %ebp
	ret
