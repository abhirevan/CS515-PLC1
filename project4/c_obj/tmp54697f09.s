	.align 4
	.text
.globl program
program:
	pushl %ebp
	movl %esp,%ebp
	subl $800,%esp
	jmp __448
__448:
	movl $0,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-12(%ebp)
	movl -12(%ebp),%ecx
	movl %ecx,-4(%ebp)
	movl $0,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-16(%ebp)
	movl -16(%ebp),%ecx
	movl %ecx,-8(%ebp)
	jmp __449
__449:
	movl $0,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-28(%ebp)
	movl -28(%ebp),%ecx
	movl %ecx,-20(%ebp)
	movl $0,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-32(%ebp)
	movl -32(%ebp),%ecx
	movl %ecx,-24(%ebp)
	jmp __450
__450:
	movl -4(%ebp),%ecx
	movl %ecx,-36(%ebp)
	movl -8(%ebp),%ecx
	movl %ecx,-40(%ebp)
	movl -36(%ebp),%ebx
	movl -40(%ebp),%ecx
	movl $0,-44(%ebp)
	cmpl %ecx,%ebx
	sete -44(%ebp)
	cmpl $0,-44(%ebp)
	je __451
	jne __452
__452:
	movl -4(%ebp),%ecx
	movl %ecx,-48(%ebp)
	movl $0,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-52(%ebp)
	movl -48(%ebp),%ebx
	movl -52(%ebp),%ecx
	movl $0,-56(%ebp)
	cmpl %ecx,%ebx
	sete -56(%ebp)
	cmpl $0,-56(%ebp)
	je __453
	jne __454
__454:
	movl $0,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-68(%ebp)
	movl -68(%ebp),%ecx
	movl %ecx,-60(%ebp)
	movl $0,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-72(%ebp)
	movl -72(%ebp),%ecx
	movl %ecx,-64(%ebp)
	jmp __455
__455:
	movl -8(%ebp),%ecx
	movl %ecx,-76(%ebp)
	movl -4(%ebp),%ecx
	movl %ecx,-80(%ebp)
	movl -76(%ebp),%ebx
	movl -80(%ebp),%ecx
	movl $0,-84(%ebp)
	cmpl %ecx,%ebx
	setle -84(%ebp)
	cmpl $0,-84(%ebp)
	je __456
	jne __457
__457:
	movl -8(%ebp),%ecx
	movl %ecx,-88(%ebp)
	movl $0,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-92(%ebp)
	movl -88(%ebp),%ebx
	movl -92(%ebp),%ecx
	movl $0,-96(%ebp)
	cmpl %ecx,%ebx
	sete -96(%ebp)
	cmpl $0,-96(%ebp)
	je __458
	jne __459
__459:
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-100(%ebp)
	movl -100(%ebp),%ecx
	movl %ecx,-8(%ebp)
	jmp __460
__460:
	jmp __458
__458:
	jmp __461
__461:
	jmp __455
__456:
	jmp __453
__453:
	jmp __462
__462:
	jmp __450
__451:
	movl -8(%ebp),%ecx
	movl %ecx,-104(%ebp)
	movl -104(%ebp),%eax
	addl $800,%esp
	movl %esp,%ebp
	popl %ebp
	ret
