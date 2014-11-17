	.align 4
	.text
.globl program
program:
	pushl %ebp
	movl %esp,%ebp
	subl $800,%esp
	jmp __571
__571:
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
	jmp __572
__572:
	movl -4(%ebp),%ecx
	movl %ecx,-20(%ebp)
	movl -4(%ebp),%ecx
	movl %ecx,-24(%ebp)
	movl -24(%ebp),%ecx
	movl -20(%ebp),%eax
	imull %ecx, %eax
	movl %eax,-28(%ebp)
	movl -4(%ebp),%ecx
	movl %ecx,-32(%ebp)
	movl -32(%ebp),%ecx
	movl -28(%ebp),%eax
	imull %ecx, %eax
	movl %eax,-36(%ebp)
	movl -4(%ebp),%ecx
	movl %ecx,-40(%ebp)
	movl -40(%ebp),%ecx
	movl -36(%ebp),%eax
	imull %ecx, %eax
	movl %eax,-44(%ebp)
	movl -4(%ebp),%ecx
	movl %ecx,-48(%ebp)
	movl -48(%ebp),%ecx
	movl -44(%ebp),%eax
	imull %ecx, %eax
	movl %eax,-52(%ebp)
	movl -4(%ebp),%ecx
	movl %ecx,-56(%ebp)
	movl -56(%ebp),%ecx
	movl -52(%ebp),%eax
	imull %ecx, %eax
	movl %eax,-60(%ebp)
	movl -4(%ebp),%ecx
	movl %ecx,-64(%ebp)
	movl -64(%ebp),%ecx
	movl -60(%ebp),%eax
	imull %ecx, %eax
	movl %eax,-68(%ebp)
	movl -4(%ebp),%ecx
	movl %ecx,-72(%ebp)
	movl -72(%ebp),%ecx
	movl -68(%ebp),%eax
	imull %ecx, %eax
	movl %eax,-76(%ebp)
	movl -4(%ebp),%ecx
	movl %ecx,-80(%ebp)
	movl -80(%ebp),%ecx
	movl -76(%ebp),%eax
	imull %ecx, %eax
	movl %eax,-84(%ebp)
	movl -4(%ebp),%ecx
	movl %ecx,-88(%ebp)
	movl -88(%ebp),%ecx
	movl -84(%ebp),%eax
	imull %ecx, %eax
	movl %eax,-92(%ebp)
	movl $0,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-96(%ebp)
	movl -92(%ebp),%ebx
	movl -96(%ebp),%ecx
	movl $0,-100(%ebp)
	cmpl %ecx,%ebx
	setne -100(%ebp)
	cmpl $0,-100(%ebp)
	je __573
	jne __574
__574:
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-104(%ebp)
	movl -104(%ebp),%ecx
	movl %ecx,-4(%ebp)
	jmp __575
__575:
	jmp __573
__573:
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-108(%ebp)
	movl -108(%ebp),%ecx
	movl %ecx,-8(%ebp)
	jmp __576
__576:
	movl -4(%ebp),%ecx
	movl %ecx,-112(%ebp)
	movl -8(%ebp),%ecx
	movl %ecx,-116(%ebp)
	movl -116(%ebp),%ecx
	movl -112(%ebp),%eax
	addl %ecx,%eax
	movl %eax,-120(%ebp)
	movl -120(%ebp),%eax
	addl $800,%esp
	movl %esp,%ebp
	popl %ebp
	ret
