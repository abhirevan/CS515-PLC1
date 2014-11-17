	.align 4
	.text
.globl program
program:
	pushl %ebp
	movl %esp,%ebp
	subl $800,%esp
	jmp __678
__678:
	movl $0,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-12(%ebp)
	movl -12(%ebp),%ecx
	movl %ecx,-4(%ebp)
	movl -4(%ebp),%ecx
	movl %ecx,-16(%ebp)
	movl -16(%ebp),%ecx
	movl %ecx,-8(%ebp)
	jmp __679
__679:
	jmp __680
__680:
	movl -8(%ebp),%ecx
	movl %ecx,-20(%ebp)
	movl $10,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-24(%ebp)
	movl -20(%ebp),%ebx
	movl -24(%ebp),%ecx
	movl $0,-28(%ebp)
	cmpl %ecx,%ebx
	setl -28(%ebp)
	cmpl $0,-28(%ebp)
	je __681
	jne __682
__682:
	jmp __683
__683:
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-40(%ebp)
	movl $-1,%ecx
	movl -40(%ebp),%eax
	imull %ecx, %eax
	movl %eax,-44(%ebp)
	movl -44(%ebp),%ecx
	movl %ecx,-32(%ebp)
	movl -8(%ebp),%ecx
	movl %ecx,-48(%ebp)
	movl -48(%ebp),%ecx
	movl %ecx,-36(%ebp)
	jmp __684
__684:
	movl $2,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-60(%ebp)
	movl -60(%ebp),%ecx
	movl %ecx,-52(%ebp)
	movl -36(%ebp),%ecx
	movl %ecx,-64(%ebp)
	movl -64(%ebp),%ecx
	movl %ecx,-56(%ebp)
	jmp __685
__685:
	movl $3,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-76(%ebp)
	movl -76(%ebp),%ecx
	movl %ecx,-68(%ebp)
	movl -56(%ebp),%ecx
	movl %ecx,-80(%ebp)
	movl -80(%ebp),%ecx
	movl %ecx,-72(%ebp)
	jmp __686
__686:
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-88(%ebp)
	movl -88(%ebp),%ecx
	movl %ecx,-84(%ebp)
	jmp __687
__687:
	movl -4(%ebp),%ecx
	movl %ecx,-92(%ebp)
	movl -84(%ebp),%ecx
	movl %ecx,-96(%ebp)
	movl -96(%ebp),%ecx
	movl -92(%ebp),%eax
	imull %ecx, %eax
	movl %eax,-100(%ebp)
	movl -52(%ebp),%ecx
	movl %ecx,-104(%ebp)
	movl -104(%ebp),%ecx
	movl -100(%ebp),%eax
	imull %ecx, %eax
	movl %eax,-108(%ebp)
	movl -68(%ebp),%ecx
	movl %ecx,-112(%ebp)
	movl -112(%ebp),%ecx
	movl -108(%ebp),%eax
	addl %ecx,%eax
	movl %eax,-116(%ebp)
	movl -72(%ebp),%ecx
	movl %ecx,-120(%ebp)
	movl -120(%ebp),%ecx
	movl -116(%ebp),%eax
	shll %cl, %eax
	movl %eax,-124(%ebp)
	movl -124(%ebp),%ecx
	movl %ecx,-8(%ebp)
	jmp __688
__688:
	jmp __680
__681:
	movl -8(%ebp),%ecx
	movl %ecx,-128(%ebp)
	movl -128(%ebp),%eax
	addl $800,%esp
	movl %esp,%ebp
	popl %ebp
	ret
