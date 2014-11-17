	.align 4
	.text
.globl program
program:
	pushl %ebp
	movl %esp,%ebp
	subl $800,%esp
	jmp __671
__671:
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
	jmp __672
__672:
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-28(%ebp)
	movl $-1,%ecx
	movl -28(%ebp),%eax
	imull %ecx, %eax
	movl %eax,-32(%ebp)
	movl -32(%ebp),%ecx
	movl %ecx,-20(%ebp)
	movl -8(%ebp),%ecx
	movl %ecx,-36(%ebp)
	movl -36(%ebp),%ecx
	movl %ecx,-24(%ebp)
	jmp __673
__673:
	movl $2,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-48(%ebp)
	movl -48(%ebp),%ecx
	movl %ecx,-40(%ebp)
	movl -24(%ebp),%ecx
	movl %ecx,-52(%ebp)
	movl -52(%ebp),%ecx
	movl %ecx,-44(%ebp)
	jmp __674
__674:
	movl $3,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-64(%ebp)
	movl -64(%ebp),%ecx
	movl %ecx,-56(%ebp)
	movl -44(%ebp),%ecx
	movl %ecx,-68(%ebp)
	movl -68(%ebp),%ecx
	movl %ecx,-60(%ebp)
	jmp __675
__675:
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-76(%ebp)
	movl -76(%ebp),%ecx
	movl %ecx,-72(%ebp)
	jmp __676
__676:
	movl -4(%ebp),%ecx
	movl %ecx,-80(%ebp)
	movl -72(%ebp),%ecx
	movl %ecx,-84(%ebp)
	movl -84(%ebp),%ecx
	movl -80(%ebp),%eax
	addl %ecx,%eax
	movl %eax,-88(%ebp)
	movl -40(%ebp),%ecx
	movl %ecx,-92(%ebp)
	movl -92(%ebp),%ecx
	movl -88(%ebp),%eax
	addl %ecx,%eax
	movl %eax,-96(%ebp)
	movl -56(%ebp),%ecx
	movl %ecx,-100(%ebp)
	movl -100(%ebp),%ecx
	movl -96(%ebp),%eax
	addl %ecx,%eax
	movl %eax,-104(%ebp)
	movl -60(%ebp),%ecx
	movl %ecx,-108(%ebp)
	movl -108(%ebp),%ecx
	movl -104(%ebp),%eax
	addl %ecx,%eax
	movl %eax,-112(%ebp)
	movl -112(%ebp),%ecx
	movl %ecx,-8(%ebp)
	jmp __677
__677:
	movl -8(%ebp),%ecx
	movl %ecx,-116(%ebp)
	movl -116(%ebp),%eax
	addl $800,%esp
	movl %esp,%ebp
	popl %ebp
	ret
