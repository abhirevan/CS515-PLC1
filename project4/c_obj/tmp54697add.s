	.align 4
	.text
.globl program
program:
	pushl %ebp
	movl %esp,%ebp
	subl $800,%esp
	jmp __64
__64:
	movl $3,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-16(%ebp)
	movl $4,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-20(%ebp)
	movl -20(%ebp),%ecx
	movl -16(%ebp),%eax
	addl %ecx,%eax
	movl %eax,-24(%ebp)
	movl -24(%ebp),%ecx
	movl -4(%ebp),%eax
	movl $17,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-28(%ebp)
	movl $5,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-32(%ebp)
	movl -32(%ebp),%ecx
	movl -28(%ebp),%eax
	imull %ecx, %eax
	movl %eax,-36(%ebp)
	movl -36(%ebp),%ecx
	movl -8(%ebp),%eax
	movl $0,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-40(%ebp)
	movl -40(%ebp),%ecx
	movl -12(%ebp),%eax
	jmp __65
__65:
	movl -4(%ebp),%ecx
	movl %ecx,-44(%ebp)
	movl -8(%ebp),%ecx
	movl %ecx,-48(%ebp)
	movl -44(%ebp),%ebx
	movl -48(%ebp),%ecx
	movl $0,-52(%ebp)
	cmpl %ecx,%ebx
	sete -52(%ebp)
	cmpl $0,-52(%ebp)
	je __69
	jne __67
__67:
	movl $3,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-56(%ebp)
	movl -56(%ebp),%ecx
	movl -12(%ebp),%eax
	jmp __68
__69:
	movl $4,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-60(%ebp)
	movl -60(%ebp),%ecx
	movl -12(%ebp),%eax
	jmp __70
__68:
	jmp __71
__70:
	jmp __71
__71:
	movl -12(%ebp),%ecx
	movl %ecx,-64(%ebp)
	movl -64(%ebp),%eax
	addl $800,%esp
	movl %esp,%ebp
	popl %ebp
	ret
