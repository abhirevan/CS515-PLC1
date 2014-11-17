	.align 4
	.text
.globl program
program:
	pushl %ebp
	movl %esp,%ebp
	subl $800,%esp
	jmp __598
__598:
	movl $0,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-8(%ebp)
	movl -8(%ebp),%ecx
	movl %ecx,-4(%ebp)
	jmp __599
__599:
	movl $0,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-16(%ebp)
	movl -16(%ebp),%ecx
	movl %ecx,-12(%ebp)
	jmp __600
__600:
	movl -12(%ebp),%ecx
	movl %ecx,-20(%ebp)
	movl $100,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-24(%ebp)
	movl -20(%ebp),%ebx
	movl -24(%ebp),%ecx
	movl $0,-28(%ebp)
	cmpl %ecx,%ebx
	setl -28(%ebp)
	cmpl $0,-28(%ebp)
	je __601
	jne __602
__602:
	jmp __603
__603:
	movl -4(%ebp),%ecx
	movl %ecx,-32(%ebp)
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-36(%ebp)
	movl -36(%ebp),%ecx
	movl -32(%ebp),%eax
	addl %ecx,%eax
	movl %eax,-40(%ebp)
	movl -40(%ebp),%ecx
	movl %ecx,-4(%ebp)
	jmp __604
__604:
	movl -12(%ebp),%ecx
	movl %ecx,-44(%ebp)
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-48(%ebp)
	movl -48(%ebp),%ecx
	movl -44(%ebp),%eax
	addl %ecx,%eax
	movl %eax,-52(%ebp)
	movl -52(%ebp),%ecx
	movl %ecx,-12(%ebp)
	jmp __605
__605:
	jmp __600
__601:
	movl -4(%ebp),%ecx
	movl %ecx,-56(%ebp)
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-60(%ebp)
	movl -60(%ebp),%ecx
	movl -56(%ebp),%eax
	addl %ecx,%eax
	movl %eax,-64(%ebp)
	movl -64(%ebp),%ecx
	movl %ecx,-4(%ebp)
	jmp __606
__606:
	movl -4(%ebp),%ecx
	movl %ecx,-68(%ebp)
	movl -68(%ebp),%eax
	addl $800,%esp
	movl %esp,%ebp
	popl %ebp
	ret
